--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_idd_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_idd_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_idd_seq OWNER TO freecodecamp;

--
-- Name: games_game_idd_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_idd_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_idd_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 16, 1);
INSERT INTO public.games VALUES (2, 16, 1);
INSERT INTO public.games VALUES (3, 18, 192);
INSERT INTO public.games VALUES (4, 18, 320);
INSERT INTO public.games VALUES (5, 19, 570);
INSERT INTO public.games VALUES (6, 19, 228);
INSERT INTO public.games VALUES (7, 18, 197);
INSERT INTO public.games VALUES (8, 18, 8);
INSERT INTO public.games VALUES (9, 18, 938);
INSERT INTO public.games VALUES (10, 20, 471);
INSERT INTO public.games VALUES (11, 20, 750);
INSERT INTO public.games VALUES (12, 21, 560);
INSERT INTO public.games VALUES (13, 21, 544);
INSERT INTO public.games VALUES (14, 20, 533);
INSERT INTO public.games VALUES (15, 20, 580);
INSERT INTO public.games VALUES (16, 20, 930);
INSERT INTO public.games VALUES (17, 22, 501);
INSERT INTO public.games VALUES (18, 22, 296);
INSERT INTO public.games VALUES (19, 23, 182);
INSERT INTO public.games VALUES (20, 23, 10);
INSERT INTO public.games VALUES (21, 22, 714);
INSERT INTO public.games VALUES (22, 22, 418);
INSERT INTO public.games VALUES (23, 22, 114);
INSERT INTO public.games VALUES (24, 24, 259);
INSERT INTO public.games VALUES (25, 24, 568);
INSERT INTO public.games VALUES (26, 25, 302);
INSERT INTO public.games VALUES (27, 25, 370);
INSERT INTO public.games VALUES (28, 24, 395);
INSERT INTO public.games VALUES (29, 24, 449);
INSERT INTO public.games VALUES (30, 24, 702);
INSERT INTO public.games VALUES (31, 16, 23);
INSERT INTO public.games VALUES (32, 26, 965);
INSERT INTO public.games VALUES (33, 26, 210);
INSERT INTO public.games VALUES (34, 27, 541);
INSERT INTO public.games VALUES (35, 27, 563);
INSERT INTO public.games VALUES (36, 26, 909);
INSERT INTO public.games VALUES (37, 26, 993);
INSERT INTO public.games VALUES (38, 26, 297);
INSERT INTO public.games VALUES (39, 28, 680);
INSERT INTO public.games VALUES (40, 28, 489);
INSERT INTO public.games VALUES (41, 29, 927);
INSERT INTO public.games VALUES (42, 29, 661);
INSERT INTO public.games VALUES (43, 28, 799);
INSERT INTO public.games VALUES (44, 28, 783);
INSERT INTO public.games VALUES (45, 28, 599);
INSERT INTO public.games VALUES (46, 30, 79);
INSERT INTO public.games VALUES (47, 30, 237);
INSERT INTO public.games VALUES (48, 31, 406);
INSERT INTO public.games VALUES (49, 31, 284);
INSERT INTO public.games VALUES (50, 30, 730);
INSERT INTO public.games VALUES (51, 30, 291);
INSERT INTO public.games VALUES (52, 30, 316);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '');
INSERT INTO public.users VALUES (16, 'Bart');
INSERT INTO public.users VALUES (18, 'user_1776797110049');
INSERT INTO public.users VALUES (19, 'user_1776797110048');
INSERT INTO public.users VALUES (20, 'user_1776797261274');
INSERT INTO public.users VALUES (21, 'user_1776797261273');
INSERT INTO public.users VALUES (22, 'user_1776797359383');
INSERT INTO public.users VALUES (23, 'user_1776797359382');
INSERT INTO public.users VALUES (24, 'user_1776797381858');
INSERT INTO public.users VALUES (25, 'user_1776797381857');
INSERT INTO public.users VALUES (26, 'user_1776797580382');
INSERT INTO public.users VALUES (27, 'user_1776797580381');
INSERT INTO public.users VALUES (28, 'user_1776797589749');
INSERT INTO public.users VALUES (29, 'user_1776797589748');
INSERT INTO public.users VALUES (30, 'user_1776797679107');
INSERT INTO public.users VALUES (31, 'user_1776797679106');


--
-- Name: games_game_idd_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_idd_seq', 52, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 31, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

