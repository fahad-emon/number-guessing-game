--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 853);
INSERT INTO public.games VALUES (2, 1, 22);
INSERT INTO public.games VALUES (3, 2, 632);
INSERT INTO public.games VALUES (4, 2, 378);
INSERT INTO public.games VALUES (5, 1, 422);
INSERT INTO public.games VALUES (6, 1, 644);
INSERT INTO public.games VALUES (7, 1, 720);
INSERT INTO public.games VALUES (8, 3, 22);
INSERT INTO public.games VALUES (9, 4, 539);
INSERT INTO public.games VALUES (10, 4, 493);
INSERT INTO public.games VALUES (11, 5, 257);
INSERT INTO public.games VALUES (12, 5, 961);
INSERT INTO public.games VALUES (13, 4, 956);
INSERT INTO public.games VALUES (14, 4, 795);
INSERT INTO public.games VALUES (15, 4, 566);
INSERT INTO public.games VALUES (16, 6, 621);
INSERT INTO public.games VALUES (17, 6, 604);
INSERT INTO public.games VALUES (18, 7, 28);
INSERT INTO public.games VALUES (19, 7, 617);
INSERT INTO public.games VALUES (20, 6, 71);
INSERT INTO public.games VALUES (21, 6, 753);
INSERT INTO public.games VALUES (22, 6, 418);
INSERT INTO public.games VALUES (23, 8, 815);
INSERT INTO public.games VALUES (24, 8, 706);
INSERT INTO public.games VALUES (25, 9, 666);
INSERT INTO public.games VALUES (26, 9, 804);
INSERT INTO public.games VALUES (27, 8, 734);
INSERT INTO public.games VALUES (28, 8, 481);
INSERT INTO public.games VALUES (29, 8, 164);
INSERT INTO public.games VALUES (30, 10, 444);
INSERT INTO public.games VALUES (31, 10, 523);
INSERT INTO public.games VALUES (32, 11, 619);
INSERT INTO public.games VALUES (33, 11, 541);
INSERT INTO public.games VALUES (34, 10, 490);
INSERT INTO public.games VALUES (35, 10, 818);
INSERT INTO public.games VALUES (36, 10, 514);
INSERT INTO public.games VALUES (37, 3, 9);
INSERT INTO public.games VALUES (38, 12, 342);
INSERT INTO public.games VALUES (39, 12, 867);
INSERT INTO public.games VALUES (40, 13, 316);
INSERT INTO public.games VALUES (41, 13, 715);
INSERT INTO public.games VALUES (42, 12, 776);
INSERT INTO public.games VALUES (43, 12, 682);
INSERT INTO public.games VALUES (44, 12, 396);
INSERT INTO public.games VALUES (45, 14, 842);
INSERT INTO public.games VALUES (46, 14, 466);
INSERT INTO public.games VALUES (47, 15, 35);
INSERT INTO public.games VALUES (48, 15, 92);
INSERT INTO public.games VALUES (49, 14, 217);
INSERT INTO public.games VALUES (50, 14, 42);
INSERT INTO public.games VALUES (51, 14, 455);
INSERT INTO public.games VALUES (52, 16, 697);
INSERT INTO public.games VALUES (53, 16, 507);
INSERT INTO public.games VALUES (54, 17, 95);
INSERT INTO public.games VALUES (55, 17, 675);
INSERT INTO public.games VALUES (56, 16, 24);
INSERT INTO public.games VALUES (57, 16, 522);
INSERT INTO public.games VALUES (58, 16, 578);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1729318725400', 2);
INSERT INTO public.users VALUES (1, 'user_1729318725401', 5);
INSERT INTO public.users VALUES (5, 'user_1729318984210', 2);
INSERT INTO public.users VALUES (4, 'user_1729318984211', 5);
INSERT INTO public.users VALUES (7, 'user_1729318995250', 2);
INSERT INTO public.users VALUES (6, 'user_1729318995251', 5);
INSERT INTO public.users VALUES (9, 'user_1729319039946', 2);
INSERT INTO public.users VALUES (8, 'user_1729319039947', 5);
INSERT INTO public.users VALUES (11, 'user_1729319338403', 2);
INSERT INTO public.users VALUES (10, 'user_1729319338404', 5);
INSERT INTO public.users VALUES (3, 'fahad', 2);
INSERT INTO public.users VALUES (13, 'user_1729319585289', 2);
INSERT INTO public.users VALUES (12, 'user_1729319585290', 5);
INSERT INTO public.users VALUES (15, 'user_1729319679793', 2);
INSERT INTO public.users VALUES (14, 'user_1729319679794', 5);
INSERT INTO public.users VALUES (17, 'user_1729319710446', 2);
INSERT INTO public.users VALUES (16, 'user_1729319710447', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 58, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

