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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    galaxy_types text[],
    distance_from_earth numeric
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
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
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
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer
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
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: star_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_type (
    star_type_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    is_main_sequence boolean
);


ALTER TABLE public.star_type OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_type_star_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_type_star_type_id_seq OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_type_star_type_id_seq OWNED BY public.star_type.star_type_id;


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
-- Name: star_type star_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type ALTER COLUMN star_type_id SET DEFAULT nextval('public.star_type_star_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', '{spiral}', 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy to Milky Way', '{spiral}', 200000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third-largest galaxy in the Local Group', '{spiral}', 300000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Supermassive elliptical galaxy in the Virgo Cluster', '{elliptical}', 500000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral galaxy in the constellation Virgo', '{spiral}', 600000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Interacting grand-design spiral galaxy', '{spiral}', 700000);
INSERT INTO public.galaxy VALUES (7, 'Andrómeda', 'Galaxia espiral más cercana a la Vía Láctea', '{espiral}', 200000);
INSERT INTO public.galaxy VALUES (8, 'NGC 1300', 'Galaxia espiral barrada en la constelación Eridanus', '{espiral}', 400000);
INSERT INTO public.galaxy VALUES (9, 'NGC 4594', 'Galaxia espiral en la constelación Virgo', '{espiral}', 300000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth''s only natural satellite', 4500, false, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Largest moon of Mars', 4000, false, true, 2);
INSERT INTO public.moon VALUES (3, 'Europa', 'Fourth-largest moon of Jupiter', 4600, false, true, 3);
INSERT INTO public.moon VALUES (4, 'Titan', 'Largest moon of Saturn', 4500, false, true, 4);
INSERT INTO public.moon VALUES (5, 'Triton', 'Largest moon of Neptune', 4200, false, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon of Jupiter', 4300, false, true, 3);
INSERT INTO public.moon VALUES (7, 'Io', 'Innermost moon of Jupiter', 4600, false, true, 3);
INSERT INTO public.moon VALUES (8, 'Callisto', 'Second-largest moon of Jupiter', 4600, false, true, 3);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Sixth-largest moon of Saturn', 4600, false, true, 4);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Smallest astronomical body that is known to be rounded in shape', 4600, false, true, 4);
INSERT INTO public.moon VALUES (11, 'Tethys', 'Regularly shaped, medium-sized moon of Saturn', 4600, false, true, 4);
INSERT INTO public.moon VALUES (12, 'Dione', 'Innermost of the larger moons of Saturn', 4600, false, true, 4);
INSERT INTO public.moon VALUES (13, 'Rhea', 'Second-largest moon of Saturn', 4600, false, true, 4);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'Third-largest moon of Saturn', 4600, false, true, 4);
INSERT INTO public.moon VALUES (15, 'Oberon', 'Outermost of the major moons of Uranus', 4600, false, true, 6);
INSERT INTO public.moon VALUES (16, 'Titania', 'Largest moon of Uranus', 4600, false, true, 6);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Moon of Uranus', 4600, false, true, 6);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Moon of Uranus', 4600, false, true, 6);
INSERT INTO public.moon VALUES (19, 'Miranda', 'Moon of Uranus', 4600, false, true, 6);
INSERT INTO public.moon VALUES (20, 'Charon', 'Large moon of the dwarf planet Pluto', 4600, false, true, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Third planet from the Sun', 4500, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Fourth planet from the Sun', 4000, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Fifth planet from the Sun', 4600, false, true, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Sixth planet from the Sun', 4500, false, true, 1);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Eighth planet from the Sun', 4200, false, true, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Seventh planet from the Sun', 4300, false, true, 1);
INSERT INTO public.planet VALUES (7, 'Mercury', 'Closest planet to the Sun', 4700, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Venus', 'Second planet from the Sun', 4600, false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf planet in the Kuiper belt', 4600, false, true, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 'Exoplanet in the habitable zone of its star', 2000, true, true, 5);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'First exoplanet to be discovered via transit method', 1000, false, true, 6);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', 'Exoplanet in the habitable zone of its star', 1500, true, true, 4);
INSERT INTO public.planet VALUES (13, 'Europa', 'Cuarta luna más grande de Júpiter', 4600, false, true, 3);
INSERT INTO public.planet VALUES (14, 'Titán', 'Luna más grande de Saturno', 4500, false, true, 4);
INSERT INTO public.planet VALUES (15, 'Mimas', 'Satélite natural más pequeño conocido que es redondeado en forma', 4600, false, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of the Solar System', 4600, true, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red dwarf star closest to the Sun', 4000, false, false, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 'Brightest star in the night sky', 250, false, true, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'Closest star system to the Solar System', 6000, false, true, 2);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 'Red supergiant in the constellation Orion', 8000, false, false, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'Brightest star in the constellation Lyra', 400, false, true, 3);
INSERT INTO public.star VALUES (7, 'Alpha Centauri B', 'Estrella del sistema estelar más cercano al Sistema Solar', 5000, false, true, 2);
INSERT INTO public.star VALUES (8, 'Arcturus', 'Estrella más brillante en la constelación de Boötes', 7000, false, true, 1);
INSERT INTO public.star VALUES (9, 'Rigel', 'Supergigante azul en la constelación de Orión', 8000, false, true, 1);


--
-- Data for Name: star_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_type VALUES (1, 'Enana blanca', 'Estrella pequeña y densa que ha agotado su combustible nuclear', true);
INSERT INTO public.star_type VALUES (2, 'Gigante roja', 'Estrella en fase tardía de su evolución estelar', true);
INSERT INTO public.star_type VALUES (3, 'Supergigante', 'Estrella extremadamente luminosa y masiva', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_type_star_type_id_seq', 3, true);


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
-- Name: star_type star_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_name_key UNIQUE (name);


--
-- Name: star_type star_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_pkey PRIMARY KEY (star_type_id);


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

