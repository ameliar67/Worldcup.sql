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
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (4, 2, 1, 2018, 'Final', 927, 928);
INSERT INTO public.games VALUES (2, 0, 2, 2018, 'Third Place', 929, 930);
INSERT INTO public.games VALUES (2, 1, 3, 2018, 'Semi-Final', 928, 930);
INSERT INTO public.games VALUES (1, 0, 4, 2018, 'Semi-Final', 927, 929);
INSERT INTO public.games VALUES (3, 2, 5, 2018, 'Quarter-Final', 928, 931);
INSERT INTO public.games VALUES (2, 0, 6, 2018, 'Quarter-Final', 930, 932);
INSERT INTO public.games VALUES (2, 1, 7, 2018, 'Quarter-Final', 929, 933);
INSERT INTO public.games VALUES (2, 0, 8, 2018, 'Quarter-Final', 927, 934);
INSERT INTO public.games VALUES (2, 1, 9, 2018, 'Eighth-Final', 930, 935);
INSERT INTO public.games VALUES (1, 0, 10, 2018, 'Eighth-Final', 932, 936);
INSERT INTO public.games VALUES (3, 2, 11, 2018, 'Eighth-Final', 929, 937);
INSERT INTO public.games VALUES (2, 0, 12, 2018, 'Eighth-Final', 933, 938);
INSERT INTO public.games VALUES (2, 1, 13, 2018, 'Eighth-Final', 928, 939);
INSERT INTO public.games VALUES (2, 1, 14, 2018, 'Eighth-Final', 931, 940);
INSERT INTO public.games VALUES (2, 1, 15, 2018, 'Eighth-Final', 934, 941);
INSERT INTO public.games VALUES (4, 3, 16, 2018, 'Eighth-Final', 927, 942);
INSERT INTO public.games VALUES (1, 0, 17, 2014, 'Final', 943, 942);
INSERT INTO public.games VALUES (3, 0, 18, 2014, 'Third Place', 944, 933);
INSERT INTO public.games VALUES (1, 0, 19, 2014, 'Semi-Final', 942, 944);
INSERT INTO public.games VALUES (7, 1, 20, 2014, 'Semi-Final', 943, 933);
INSERT INTO public.games VALUES (1, 0, 21, 2014, 'Quarter-Final', 944, 945);
INSERT INTO public.games VALUES (1, 0, 22, 2014, 'Quarter-Final', 942, 929);
INSERT INTO public.games VALUES (2, 1, 23, 2014, 'Quarter-Final', 933, 935);
INSERT INTO public.games VALUES (1, 0, 24, 2014, 'Quarter-Final', 943, 927);
INSERT INTO public.games VALUES (2, 1, 25, 2014, 'Eighth-Final', 933, 946);
INSERT INTO public.games VALUES (2, 0, 26, 2014, 'Eighth-Final', 935, 934);
INSERT INTO public.games VALUES (2, 0, 27, 2014, 'Eighth-Final', 927, 947);
INSERT INTO public.games VALUES (2, 1, 28, 2014, 'Eighth-Final', 943, 948);
INSERT INTO public.games VALUES (2, 1, 29, 2014, 'Eighth-Final', 944, 938);
INSERT INTO public.games VALUES (2, 1, 30, 2014, 'Eighth-Final', 945, 949);
INSERT INTO public.games VALUES (1, 0, 31, 2014, 'Eighth-Final', 942, 936);
INSERT INTO public.games VALUES (2, 1, 32, 2014, 'Eighth-Final', 929, 950);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (927, 'France');
INSERT INTO public.teams VALUES (928, 'Croatia');
INSERT INTO public.teams VALUES (929, 'Belgium');
INSERT INTO public.teams VALUES (930, 'England');
INSERT INTO public.teams VALUES (931, 'Russia');
INSERT INTO public.teams VALUES (932, 'Sweden');
INSERT INTO public.teams VALUES (933, 'Brazil');
INSERT INTO public.teams VALUES (934, 'Uruguay');
INSERT INTO public.teams VALUES (935, 'Colombia');
INSERT INTO public.teams VALUES (936, 'Switzerland');
INSERT INTO public.teams VALUES (937, 'Japan');
INSERT INTO public.teams VALUES (938, 'Mexico');
INSERT INTO public.teams VALUES (939, 'Denmark');
INSERT INTO public.teams VALUES (940, 'Spain');
INSERT INTO public.teams VALUES (941, 'Portugal');
INSERT INTO public.teams VALUES (942, 'Argentina');
INSERT INTO public.teams VALUES (943, 'Germany');
INSERT INTO public.teams VALUES (944, 'Netherlands');
INSERT INTO public.teams VALUES (945, 'Costa Rica');
INSERT INTO public.teams VALUES (946, 'Chile');
INSERT INTO public.teams VALUES (947, 'Nigeria');
INSERT INTO public.teams VALUES (948, 'Algeria');
INSERT INTO public.teams VALUES (949, 'Greece');
INSERT INTO public.teams VALUES (950, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 950, true);


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
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

