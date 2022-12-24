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
    round character varying(30) NOT NULL,
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (321, 2018, 'Final', 1027, 1028, 4, 2);
INSERT INTO public.games VALUES (322, 2018, 'Third Place', 1029, 1030, 2, 0);
INSERT INTO public.games VALUES (323, 2018, 'Semi-Final', 1028, 1030, 2, 1);
INSERT INTO public.games VALUES (324, 2018, 'Semi-Final', 1027, 1029, 1, 0);
INSERT INTO public.games VALUES (325, 2018, 'Quarter-Final', 1028, 1031, 3, 2);
INSERT INTO public.games VALUES (326, 2018, 'Quarter-Final', 1030, 1032, 2, 0);
INSERT INTO public.games VALUES (327, 2018, 'Quarter-Final', 1029, 1033, 2, 1);
INSERT INTO public.games VALUES (328, 2018, 'Quarter-Final', 1027, 1034, 2, 0);
INSERT INTO public.games VALUES (329, 2018, 'Eighth-Final', 1030, 1035, 2, 1);
INSERT INTO public.games VALUES (330, 2018, 'Eighth-Final', 1032, 1036, 1, 0);
INSERT INTO public.games VALUES (331, 2018, 'Eighth-Final', 1029, 1037, 3, 2);
INSERT INTO public.games VALUES (332, 2018, 'Eighth-Final', 1033, 1038, 2, 0);
INSERT INTO public.games VALUES (333, 2018, 'Eighth-Final', 1028, 1039, 2, 1);
INSERT INTO public.games VALUES (334, 2018, 'Eighth-Final', 1031, 1040, 2, 1);
INSERT INTO public.games VALUES (335, 2018, 'Eighth-Final', 1034, 1041, 2, 1);
INSERT INTO public.games VALUES (336, 2018, 'Eighth-Final', 1027, 1042, 4, 3);
INSERT INTO public.games VALUES (337, 2014, 'Final', 1043, 1042, 1, 0);
INSERT INTO public.games VALUES (338, 2014, 'Third Place', 1044, 1033, 3, 0);
INSERT INTO public.games VALUES (339, 2014, 'Semi-Final', 1042, 1044, 1, 0);
INSERT INTO public.games VALUES (340, 2014, 'Semi-Final', 1043, 1033, 7, 1);
INSERT INTO public.games VALUES (341, 2014, 'Quarter-Final', 1044, 1045, 1, 0);
INSERT INTO public.games VALUES (342, 2014, 'Quarter-Final', 1042, 1029, 1, 0);
INSERT INTO public.games VALUES (343, 2014, 'Quarter-Final', 1033, 1035, 2, 1);
INSERT INTO public.games VALUES (344, 2014, 'Quarter-Final', 1043, 1027, 1, 0);
INSERT INTO public.games VALUES (345, 2014, 'Eighth-Final', 1033, 1046, 2, 1);
INSERT INTO public.games VALUES (346, 2014, 'Eighth-Final', 1035, 1034, 2, 0);
INSERT INTO public.games VALUES (347, 2014, 'Eighth-Final', 1027, 1047, 2, 0);
INSERT INTO public.games VALUES (348, 2014, 'Eighth-Final', 1043, 1048, 2, 1);
INSERT INTO public.games VALUES (349, 2014, 'Eighth-Final', 1044, 1038, 2, 1);
INSERT INTO public.games VALUES (350, 2014, 'Eighth-Final', 1045, 1049, 2, 1);
INSERT INTO public.games VALUES (351, 2014, 'Eighth-Final', 1042, 1036, 1, 0);
INSERT INTO public.games VALUES (352, 2014, 'Eighth-Final', 1029, 1050, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1027, 'France');
INSERT INTO public.teams VALUES (1028, 'Croatia');
INSERT INTO public.teams VALUES (1029, 'Belgium');
INSERT INTO public.teams VALUES (1030, 'England');
INSERT INTO public.teams VALUES (1031, 'Russia');
INSERT INTO public.teams VALUES (1032, 'Sweden');
INSERT INTO public.teams VALUES (1033, 'Brazil');
INSERT INTO public.teams VALUES (1034, 'Uruguay');
INSERT INTO public.teams VALUES (1035, 'Colombia');
INSERT INTO public.teams VALUES (1036, 'Switzerland');
INSERT INTO public.teams VALUES (1037, 'Japan');
INSERT INTO public.teams VALUES (1038, 'Mexico');
INSERT INTO public.teams VALUES (1039, 'Denmark');
INSERT INTO public.teams VALUES (1040, 'Spain');
INSERT INTO public.teams VALUES (1041, 'Portugal');
INSERT INTO public.teams VALUES (1042, 'Argentina');
INSERT INTO public.teams VALUES (1043, 'Germany');
INSERT INTO public.teams VALUES (1044, 'Netherlands');
INSERT INTO public.teams VALUES (1045, 'Costa Rica');
INSERT INTO public.teams VALUES (1046, 'Chile');
INSERT INTO public.teams VALUES (1047, 'Nigeria');
INSERT INTO public.teams VALUES (1048, 'Algeria');
INSERT INTO public.teams VALUES (1049, 'Greece');
INSERT INTO public.teams VALUES (1050, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 352, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1050, true);


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


