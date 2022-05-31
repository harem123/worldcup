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
    round character varying(30) NOT NULL,
    year integer NOT NULL,
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
    name character varying(30) NOT NULL,
    team_id integer NOT NULL
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

INSERT INTO public.games VALUES (1, 'Final', 2018, 639, 640, 4, 2);
INSERT INTO public.games VALUES (2, 'Third Place', 2018, 641, 642, 2, 0);
INSERT INTO public.games VALUES (3, 'Semi-Final', 2018, 640, 642, 2, 1);
INSERT INTO public.games VALUES (4, 'Semi-Final', 2018, 639, 641, 1, 0);
INSERT INTO public.games VALUES (5, 'Quarter-Final', 2018, 640, 643, 3, 2);
INSERT INTO public.games VALUES (6, 'Quarter-Final', 2018, 642, 644, 2, 0);
INSERT INTO public.games VALUES (7, 'Quarter-Final', 2018, 641, 645, 2, 1);
INSERT INTO public.games VALUES (8, 'Quarter-Final', 2018, 639, 646, 2, 0);
INSERT INTO public.games VALUES (9, 'Eighth-Final', 2018, 642, 647, 2, 1);
INSERT INTO public.games VALUES (10, 'Eighth-Final', 2018, 644, 648, 1, 0);
INSERT INTO public.games VALUES (11, 'Eighth-Final', 2018, 641, 649, 3, 2);
INSERT INTO public.games VALUES (12, 'Eighth-Final', 2018, 645, 650, 2, 0);
INSERT INTO public.games VALUES (13, 'Eighth-Final', 2018, 640, 651, 2, 1);
INSERT INTO public.games VALUES (14, 'Eighth-Final', 2018, 643, 652, 2, 1);
INSERT INTO public.games VALUES (15, 'Eighth-Final', 2018, 646, 653, 2, 1);
INSERT INTO public.games VALUES (16, 'Eighth-Final', 2018, 639, 654, 4, 3);
INSERT INTO public.games VALUES (17, 'Final', 2014, 655, 654, 1, 0);
INSERT INTO public.games VALUES (18, 'Third Place', 2014, 656, 645, 3, 0);
INSERT INTO public.games VALUES (19, 'Semi-Final', 2014, 654, 656, 1, 0);
INSERT INTO public.games VALUES (20, 'Semi-Final', 2014, 655, 645, 7, 1);
INSERT INTO public.games VALUES (21, 'Quarter-Final', 2014, 656, 657, 1, 0);
INSERT INTO public.games VALUES (22, 'Quarter-Final', 2014, 654, 641, 1, 0);
INSERT INTO public.games VALUES (23, 'Quarter-Final', 2014, 645, 647, 2, 1);
INSERT INTO public.games VALUES (24, 'Quarter-Final', 2014, 655, 639, 1, 0);
INSERT INTO public.games VALUES (25, 'Eighth-Final', 2014, 645, 658, 2, 1);
INSERT INTO public.games VALUES (26, 'Eighth-Final', 2014, 647, 646, 2, 0);
INSERT INTO public.games VALUES (27, 'Eighth-Final', 2014, 639, 659, 2, 0);
INSERT INTO public.games VALUES (28, 'Eighth-Final', 2014, 655, 660, 2, 1);
INSERT INTO public.games VALUES (29, 'Eighth-Final', 2014, 656, 650, 2, 1);
INSERT INTO public.games VALUES (30, 'Eighth-Final', 2014, 657, 661, 2, 1);
INSERT INTO public.games VALUES (31, 'Eighth-Final', 2014, 654, 648, 1, 0);
INSERT INTO public.games VALUES (32, 'Eighth-Final', 2014, 641, 662, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 639);
INSERT INTO public.teams VALUES ('Croatia', 640);
INSERT INTO public.teams VALUES ('Belgium', 641);
INSERT INTO public.teams VALUES ('England', 642);
INSERT INTO public.teams VALUES ('Russia', 643);
INSERT INTO public.teams VALUES ('Sweden', 644);
INSERT INTO public.teams VALUES ('Brazil', 645);
INSERT INTO public.teams VALUES ('Uruguay', 646);
INSERT INTO public.teams VALUES ('Colombia', 647);
INSERT INTO public.teams VALUES ('Switzerland', 648);
INSERT INTO public.teams VALUES ('Japan', 649);
INSERT INTO public.teams VALUES ('Mexico', 650);
INSERT INTO public.teams VALUES ('Denmark', 651);
INSERT INTO public.teams VALUES ('Spain', 652);
INSERT INTO public.teams VALUES ('Portugal', 653);
INSERT INTO public.teams VALUES ('Argentina', 654);
INSERT INTO public.teams VALUES ('Germany', 655);
INSERT INTO public.teams VALUES ('Netherlands', 656);
INSERT INTO public.teams VALUES ('Costa Rica', 657);
INSERT INTO public.teams VALUES ('Chile', 658);
INSERT INTO public.teams VALUES ('Nigeria', 659);
INSERT INTO public.teams VALUES ('Algeria', 660);
INSERT INTO public.teams VALUES ('Greece', 661);
INSERT INTO public.teams VALUES ('United States', 662);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 662, true);


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
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
