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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(20) NOT NULL,
    detail text NOT NULL,
    year_discovered integer,
    is_significant boolean
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    number_of_stars integer,
    has_life boolean NOT NULL,
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    has_craters boolean,
    diameter integer NOT NULL,
    surface_type text,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    dist_from_earth numeric NOT NULL,
    mass integer,
    has_rings boolean,
    type_of_mineral text,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    temperature integer,
    is_visible boolean NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'Pluto', 'Is a dwarf planet', 1492, true);
INSERT INTO public.description VALUES (2, 'Earth', 'The only planet with known forms of intelligent life', 1, true);
INSERT INTO public.description VALUES (3, 'Naboo', 'This one is from Star Wars', 56, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 13000, 100, true, 'Our home galaxy', 1);
INSERT INTO public.galaxy VALUES ('Yellowbrick road', 10000, 1200, true, 'Our closest neighbor galaxy', 2);
INSERT INTO public.galaxy VALUES ('Slytherin', 1000000, 12000, true, 'Our mortal enemy', 3);
INSERT INTO public.galaxy VALUES ('Huffelpuff', 1000, 123400, false, 'Nothing to worry about here', 4);
INSERT INTO public.galaxy VALUES ('Naboo', 145000, 1234, true, 'Home of Princess Leia', 5);
INSERT INTO public.galaxy VALUES ('Andromeda', 1450540, 123004, false, 'Home of Mad Max', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Cody', true, 604, 'gaseous', 1, 1);
INSERT INTO public.moon VALUES ('Nolan', false, 6040, 'solid rocky', 2, 1);
INSERT INTO public.moon VALUES ('Harry', true, 4508, 'cold liquid', 3, 2);
INSERT INTO public.moon VALUES ('Corey', false, 587404, 'warm liquid', 4, 2);
INSERT INTO public.moon VALUES ('Brett', true, 6580, 'boiling liquid', 5, 3);
INSERT INTO public.moon VALUES ('Jared', false, 98505, 'solid rolling hills', 6, 3);
INSERT INTO public.moon VALUES ('Jackson', true, 65114, 'solid mountainous', 7, 4);
INSERT INTO public.moon VALUES ('Cathy', false, 154, 'gaseous toxic', 8, 4);
INSERT INTO public.moon VALUES ('Tom', true, 65410, 'liquid sulfur', 9, 5);
INSERT INTO public.moon VALUES ('Paul', false, 3514, 'liquid mercury', 10, 5);
INSERT INTO public.moon VALUES ('Theresa', true, 14, 'solid porous', 11, 6);
INSERT INTO public.moon VALUES ('Daniel', false, 4562, 'solid gravel', 12, 6);
INSERT INTO public.moon VALUES ('Anne', true, 98504, 'liquid normal', 13, 7);
INSERT INTO public.moon VALUES ('Greg', false, 41098, 'liquid pool', 14, 7);
INSERT INTO public.moon VALUES ('Leslie', true, 2045, 'gaseous sleepy', 15, 8);
INSERT INTO public.moon VALUES ('Griffin', true, 204005, 'gaseous funny', 16, 8);
INSERT INTO public.moon VALUES ('Meredith', false, 5419, 'solid rocky', 17, 9);
INSERT INTO public.moon VALUES ('Jonathan', true, 541900, 'solid pebbles', 18, 9);
INSERT INTO public.moon VALUES ('Alex', true, 9004, 'porous', 19, 10);
INSERT INTO public.moon VALUES ('Lilly', false, 2708, 'solid dense', 20, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Zelda', 1500, 153422, true, 'Copper', 1, 1);
INSERT INTO public.planet VALUES ('James Webb', 6049, 1894, false, 'Uranium', 2, 1);
INSERT INTO public.planet VALUES ('Wall E', 983615, 269845, true, 'Cadium', 3, 2);
INSERT INTO public.planet VALUES ('Goofy', 90852, 33018, false, 'Nitrogen', 4, 2);
INSERT INTO public.planet VALUES ('Porky Pig', 802952, 609810, true, 'Flouride', 5, 3);
INSERT INTO public.planet VALUES ('Elmer Fudd', 6011, 9085046, false, 'Calcium', 6, 3);
INSERT INTO public.planet VALUES ('Bugs Bunny', 900555, 6514088, true, 'Potassium', 7, 4);
INSERT INTO public.planet VALUES ('Daffy Duck', 8025, 646464, false, 'Radium', 8, 4);
INSERT INTO public.planet VALUES ('Lola', 96805, 648050, true, 'Magnesium', 9, 5);
INSERT INTO public.planet VALUES ('Claire', 98505, 9871063, false, 'Selenium', 10, 5);
INSERT INTO public.planet VALUES ('Jennifer', 450215, 980145, true, 'Iron', 11, 6);
INSERT INTO public.planet VALUES ('Lauren', 80095, 6040652, false, 'Sulfur', 12, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 4600, 5500, true, 1, 1);
INSERT INTO public.star VALUES ('Mercurcy', 47000, 500, false, 2, 1);
INSERT INTO public.star VALUES ('Earth', 4723420, 50000, true, 3, 1);
INSERT INTO public.star VALUES ('Pluto', 9430, 89472, false, 4, 1);
INSERT INTO public.star VALUES ('Futurama', 943, 858492, true, 5, 2);
INSERT INTO public.star VALUES ('Kimono', 94300, 123545, false, 6, 3);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

