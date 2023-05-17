--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (193, 2018, 'Final', 211, 212, 4, 2);
INSERT INTO public.games VALUES (194, 2018, 'Third Place', 213, 214, 2, 0);
INSERT INTO public.games VALUES (195, 2018, 'Semi-Final', 212, 214, 2, 1);
INSERT INTO public.games VALUES (196, 2018, 'Semi-Final', 211, 213, 1, 0);
INSERT INTO public.games VALUES (197, 2018, 'Quarter-Final', 212, 220, 3, 2);
INSERT INTO public.games VALUES (198, 2018, 'Quarter-Final', 214, 222, 2, 0);
INSERT INTO public.games VALUES (199, 2018, 'Quarter-Final', 213, 224, 2, 1);
INSERT INTO public.games VALUES (200, 2018, 'Quarter-Final', 211, 226, 2, 0);
INSERT INTO public.games VALUES (201, 2018, 'Eighth-Final', 214, 228, 2, 1);
INSERT INTO public.games VALUES (202, 2018, 'Eighth-Final', 222, 230, 1, 0);
INSERT INTO public.games VALUES (203, 2018, 'Eighth-Final', 213, 232, 3, 2);
INSERT INTO public.games VALUES (204, 2018, 'Eighth-Final', 224, 234, 2, 0);
INSERT INTO public.games VALUES (205, 2018, 'Eighth-Final', 212, 236, 2, 1);
INSERT INTO public.games VALUES (206, 2018, 'Eighth-Final', 220, 238, 2, 1);
INSERT INTO public.games VALUES (207, 2018, 'Eighth-Final', 226, 240, 2, 1);
INSERT INTO public.games VALUES (208, 2018, 'Eighth-Final', 211, 242, 4, 3);
INSERT INTO public.games VALUES (209, 2014, 'Final', 243, 242, 1, 0);
INSERT INTO public.games VALUES (210, 2014, 'Third Place', 245, 224, 3, 0);
INSERT INTO public.games VALUES (211, 2014, 'Semi-Final', 242, 245, 1, 0);
INSERT INTO public.games VALUES (212, 2014, 'Semi-Final', 243, 224, 7, 1);
INSERT INTO public.games VALUES (213, 2014, 'Quarter-Final', 245, 252, 1, 0);
INSERT INTO public.games VALUES (214, 2014, 'Quarter-Final', 242, 213, 1, 0);
INSERT INTO public.games VALUES (215, 2014, 'Quarter-Final', 224, 228, 2, 1);
INSERT INTO public.games VALUES (216, 2014, 'Quarter-Final', 243, 211, 1, 0);
INSERT INTO public.games VALUES (217, 2014, 'Eighth-Final', 224, 260, 2, 1);
INSERT INTO public.games VALUES (218, 2014, 'Eighth-Final', 228, 226, 2, 0);
INSERT INTO public.games VALUES (219, 2014, 'Eighth-Final', 211, 264, 2, 0);
INSERT INTO public.games VALUES (220, 2014, 'Eighth-Final', 243, 266, 2, 1);
INSERT INTO public.games VALUES (221, 2014, 'Eighth-Final', 245, 234, 2, 1);
INSERT INTO public.games VALUES (222, 2014, 'Eighth-Final', 252, 270, 2, 1);
INSERT INTO public.games VALUES (223, 2014, 'Eighth-Final', 242, 230, 1, 0);
INSERT INTO public.games VALUES (224, 2014, 'Eighth-Final', 213, 274, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (211, 'France');
INSERT INTO public.teams VALUES (212, 'Croatia');
INSERT INTO public.teams VALUES (213, 'Belgium');
INSERT INTO public.teams VALUES (214, 'England');
INSERT INTO public.teams VALUES (220, 'Russia');
INSERT INTO public.teams VALUES (222, 'Sweden');
INSERT INTO public.teams VALUES (224, 'Brazil');
INSERT INTO public.teams VALUES (226, 'Uruguay');
INSERT INTO public.teams VALUES (228, 'Colombia');
INSERT INTO public.teams VALUES (230, 'Switzerland');
INSERT INTO public.teams VALUES (232, 'Japan');
INSERT INTO public.teams VALUES (234, 'Mexico');
INSERT INTO public.teams VALUES (236, 'Denmark');
INSERT INTO public.teams VALUES (238, 'Spain');
INSERT INTO public.teams VALUES (240, 'Portugal');
INSERT INTO public.teams VALUES (242, 'Argentina');
INSERT INTO public.teams VALUES (243, 'Germany');
INSERT INTO public.teams VALUES (245, 'Netherlands');
INSERT INTO public.teams VALUES (252, 'Costa Rica');
INSERT INTO public.teams VALUES (260, 'Chile');
INSERT INTO public.teams VALUES (264, 'Nigeria');
INSERT INTO public.teams VALUES (266, 'Algeria');
INSERT INTO public.teams VALUES (270, 'Greece');
INSERT INTO public.teams VALUES (274, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 224, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 274, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

