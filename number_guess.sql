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
    try_count integer,
    user_id integer NOT NULL
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
    name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (13, 57, 7);
INSERT INTO public.games VALUES (14, 164, 7);
INSERT INTO public.games VALUES (15, 74, 8);
INSERT INTO public.games VALUES (16, 210, 8);
INSERT INTO public.games VALUES (17, 190, 7);
INSERT INTO public.games VALUES (18, 52, 7);
INSERT INTO public.games VALUES (19, 247, 7);
INSERT INTO public.games VALUES (20, 2, 9);
INSERT INTO public.games VALUES (21, 151, 10);
INSERT INTO public.games VALUES (22, 210, 10);
INSERT INTO public.games VALUES (23, 104, 11);
INSERT INTO public.games VALUES (24, 63, 11);
INSERT INTO public.games VALUES (25, 191, 10);
INSERT INTO public.games VALUES (26, 80, 10);
INSERT INTO public.games VALUES (27, 153, 10);
INSERT INTO public.games VALUES (28, 146, 12);
INSERT INTO public.games VALUES (29, 27, 12);
INSERT INTO public.games VALUES (30, 94, 13);
INSERT INTO public.games VALUES (31, 122, 13);
INSERT INTO public.games VALUES (32, 212, 12);
INSERT INTO public.games VALUES (33, 172, 12);
INSERT INTO public.games VALUES (34, 108, 12);
INSERT INTO public.games VALUES (35, 11, 14);
INSERT INTO public.games VALUES (36, 223, 14);
INSERT INTO public.games VALUES (37, 229, 15);
INSERT INTO public.games VALUES (38, 33, 15);
INSERT INTO public.games VALUES (39, 252, 14);
INSERT INTO public.games VALUES (40, 182, 14);
INSERT INTO public.games VALUES (41, 171, 14);
INSERT INTO public.games VALUES (42, 229, 16);
INSERT INTO public.games VALUES (43, 67, 16);
INSERT INTO public.games VALUES (44, 94, 17);
INSERT INTO public.games VALUES (45, 55, 17);
INSERT INTO public.games VALUES (46, 133, 16);
INSERT INTO public.games VALUES (47, 122, 16);
INSERT INTO public.games VALUES (48, 229, 16);
INSERT INTO public.games VALUES (49, 175, 18);
INSERT INTO public.games VALUES (50, 199, 18);
INSERT INTO public.games VALUES (51, 232, 19);
INSERT INTO public.games VALUES (52, 141, 19);
INSERT INTO public.games VALUES (53, 95, 18);
INSERT INTO public.games VALUES (54, 201, 18);
INSERT INTO public.games VALUES (55, 125, 18);
INSERT INTO public.games VALUES (56, 18, 20);
INSERT INTO public.games VALUES (57, 103, 20);
INSERT INTO public.games VALUES (58, 156, 21);
INSERT INTO public.games VALUES (59, 70, 21);
INSERT INTO public.games VALUES (60, 201, 20);
INSERT INTO public.games VALUES (61, 37, 20);
INSERT INTO public.games VALUES (62, 183, 20);
INSERT INTO public.games VALUES (63, 2, 9);
INSERT INTO public.games VALUES (64, 104, 22);
INSERT INTO public.games VALUES (65, 72, 22);
INSERT INTO public.games VALUES (66, 228, 23);
INSERT INTO public.games VALUES (67, 158, 23);
INSERT INTO public.games VALUES (68, 63, 22);
INSERT INTO public.games VALUES (69, 231, 22);
INSERT INTO public.games VALUES (70, 83, 22);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (7, 'user_1735454287168');
INSERT INTO public.users VALUES (8, 'user_1735454287167');
INSERT INTO public.users VALUES (9, 'yy');
INSERT INTO public.users VALUES (10, 'user_1735454398273');
INSERT INTO public.users VALUES (11, 'user_1735454398272');
INSERT INTO public.users VALUES (12, 'user_1735454441207');
INSERT INTO public.users VALUES (13, 'user_1735454441206');
INSERT INTO public.users VALUES (14, 'user_1735454459654');
INSERT INTO public.users VALUES (15, 'user_1735454459653');
INSERT INTO public.users VALUES (16, 'user_1735454471002');
INSERT INTO public.users VALUES (17, 'user_1735454471001');
INSERT INTO public.users VALUES (18, 'user_1735454525358');
INSERT INTO public.users VALUES (19, 'user_1735454525357');
INSERT INTO public.users VALUES (20, 'user_1735454537773');
INSERT INTO public.users VALUES (21, 'user_1735454537772');
INSERT INTO public.users VALUES (22, 'user_1735454594200');
INSERT INTO public.users VALUES (23, 'user_1735454594199');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 70, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 23, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

