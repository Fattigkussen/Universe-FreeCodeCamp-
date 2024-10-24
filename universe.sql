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
    has_life boolean NOT NULL,
    is_milky boolean,
    number_of_stars_in_billions integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying NOT NULL,
    in_space boolean
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'We live here!', true, true, 400);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Close to us!', false, false, 1000);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', NULL, false, false, 3000);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', NULL, false, false, 20);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', NULL, false, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', NULL, false, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', false, true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, true, 4);
INSERT INTO public.moon VALUES (4, 'Io', false, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', false, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', false, true, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', false, true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', false, true, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', false, true, 6);
INSERT INTO public.moon VALUES (11, 'Dione', false, true, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', false, true, 6);
INSERT INTO public.moon VALUES (13, 'Titan', false, true, 6);
INSERT INTO public.moon VALUES (14, 'Hyperion', false, true, 6);
INSERT INTO public.moon VALUES (15, 'Iapetus', false, true, 6);
INSERT INTO public.moon VALUES (16, 'Phoebe', false, true, 6);
INSERT INTO public.moon VALUES (17, 'Puck', false, true, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', false, true, 7);
INSERT INTO public.moon VALUES (19, 'Ariel', false, true, 7);
INSERT INTO public.moon VALUES (20, 'Umbriel', false, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, false, NULL, 7);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, false, NULL, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 'We''re here', true, 4500, 7);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, false, NULL, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, false, NULL, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, false, NULL, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, false, NULL, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, false, NULL, 7);
INSERT INTO public.planet VALUES (9, 'Pluto', 'It''s forever a planet in my heart', false, NULL, 7);
INSERT INTO public.planet VALUES (10, 'd', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (11, 'b', NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (12, 'c', NULL, false, NULL, 1);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Calsphere', true);
INSERT INTO public.satellite VALUES (2, 'Explorer 9', true);
INSERT INTO public.satellite VALUES (3, 'Enoch', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', NULL, NULL, 4, 1);
INSERT INTO public.star VALUES (2, 'Rigil Kentaurus', NULL, NULL, 4, 1);
INSERT INTO public.star VALUES (3, 'Toliman', NULL, NULL, 4, 1);
INSERT INTO public.star VALUES (4, 'Barnard''s Star', NULL, NULL, 6, 1);
INSERT INTO public.star VALUES (5, 'Luhman 16', NULL, NULL, 7, 1);
INSERT INTO public.star VALUES (6, 'Wolf 359', NULL, NULL, 8, 1);
INSERT INTO public.star VALUES (7, 'Sun', NULL, NULL, 0, 1);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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

