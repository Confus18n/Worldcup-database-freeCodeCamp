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
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_id integer NOT NULL,
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (289, 2018, 'Final', 217, 4, 218, 2);
INSERT INTO public.games VALUES (290, 2018, 'Third Place', 219, 2, 220, 0);
INSERT INTO public.games VALUES (291, 2018, 'Semi-Final', 218, 2, 220, 1);
INSERT INTO public.games VALUES (292, 2018, 'Semi-Final', 217, 1, 219, 0);
INSERT INTO public.games VALUES (293, 2018, 'Quarter-Final', 218, 3, 221, 2);
INSERT INTO public.games VALUES (294, 2018, 'Quarter-Final', 220, 2, 222, 0);
INSERT INTO public.games VALUES (295, 2018, 'Quarter-Final', 219, 2, 223, 1);
INSERT INTO public.games VALUES (296, 2018, 'Quarter-Final', 217, 2, 224, 0);
INSERT INTO public.games VALUES (297, 2018, 'Eighth-Final', 220, 2, 225, 1);
INSERT INTO public.games VALUES (298, 2018, 'Eighth-Final', 222, 1, 226, 0);
INSERT INTO public.games VALUES (299, 2018, 'Eighth-Final', 219, 3, 227, 2);
INSERT INTO public.games VALUES (300, 2018, 'Eighth-Final', 223, 2, 228, 0);
INSERT INTO public.games VALUES (301, 2018, 'Eighth-Final', 218, 2, 229, 1);
INSERT INTO public.games VALUES (302, 2018, 'Eighth-Final', 221, 2, 230, 1);
INSERT INTO public.games VALUES (303, 2018, 'Eighth-Final', 224, 2, 231, 1);
INSERT INTO public.games VALUES (304, 2018, 'Eighth-Final', 217, 4, 232, 3);
INSERT INTO public.games VALUES (305, 2014, 'Final', 233, 1, 232, 0);
INSERT INTO public.games VALUES (306, 2014, 'Third Place', 234, 3, 223, 0);
INSERT INTO public.games VALUES (307, 2014, 'Semi-Final', 232, 1, 234, 0);
INSERT INTO public.games VALUES (308, 2014, 'Semi-Final', 233, 7, 223, 1);
INSERT INTO public.games VALUES (309, 2014, 'Quarter-Final', 234, 1, 235, 0);
INSERT INTO public.games VALUES (310, 2014, 'Quarter-Final', 232, 1, 219, 0);
INSERT INTO public.games VALUES (311, 2014, 'Quarter-Final', 223, 2, 225, 1);
INSERT INTO public.games VALUES (312, 2014, 'Quarter-Final', 233, 1, 217, 0);
INSERT INTO public.games VALUES (313, 2014, 'Eighth-Final', 223, 2, 236, 1);
INSERT INTO public.games VALUES (314, 2014, 'Eighth-Final', 225, 2, 224, 0);
INSERT INTO public.games VALUES (315, 2014, 'Eighth-Final', 217, 2, 237, 0);
INSERT INTO public.games VALUES (316, 2014, 'Eighth-Final', 233, 2, 238, 1);
INSERT INTO public.games VALUES (317, 2014, 'Eighth-Final', 234, 2, 228, 1);
INSERT INTO public.games VALUES (318, 2014, 'Eighth-Final', 235, 2, 239, 1);
INSERT INTO public.games VALUES (319, 2014, 'Eighth-Final', 232, 1, 226, 0);
INSERT INTO public.games VALUES (320, 2014, 'Eighth-Final', 219, 2, 240, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (217, 'France');
INSERT INTO public.teams VALUES (218, 'Croatia');
INSERT INTO public.teams VALUES (219, 'Belgium');
INSERT INTO public.teams VALUES (220, 'England');
INSERT INTO public.teams VALUES (221, 'Russia');
INSERT INTO public.teams VALUES (222, 'Sweden');
INSERT INTO public.teams VALUES (223, 'Brazil');
INSERT INTO public.teams VALUES (224, 'Uruguay');
INSERT INTO public.teams VALUES (225, 'Colombia');
INSERT INTO public.teams VALUES (226, 'Switzerland');
INSERT INTO public.teams VALUES (227, 'Japan');
INSERT INTO public.teams VALUES (228, 'Mexico');
INSERT INTO public.teams VALUES (229, 'Denmark');
INSERT INTO public.teams VALUES (230, 'Spain');
INSERT INTO public.teams VALUES (231, 'Portugal');
INSERT INTO public.teams VALUES (232, 'Argentina');
INSERT INTO public.teams VALUES (233, 'Germany');
INSERT INTO public.teams VALUES (234, 'Netherlands');
INSERT INTO public.teams VALUES (235, 'Costa Rica');
INSERT INTO public.teams VALUES (236, 'Chile');
INSERT INTO public.teams VALUES (237, 'Nigeria');
INSERT INTO public.teams VALUES (238, 'Algeria');
INSERT INTO public.teams VALUES (239, 'Greece');
INSERT INTO public.teams VALUES (240, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 320, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 240, true);


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

