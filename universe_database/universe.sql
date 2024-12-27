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
-- Name: exploration_mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.exploration_mission (
    exploration_mission_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    objective text NOT NULL,
    crew_size integer NOT NULL,
    budget numeric(15,2) NOT NULL,
    is_successful boolean NOT NULL,
    is_manned boolean NOT NULL,
    launch_date date NOT NULL
);


ALTER TABLE public.exploration_mission OWNER TO freecodecamp;

--
-- Name: exploration_mission_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.exploration_mission_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exploration_mission_mission_id_seq OWNER TO freecodecamp;

--
-- Name: exploration_mission_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.exploration_mission_mission_id_seq OWNED BY public.exploration_mission.exploration_mission_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(30),
    distance_from_earth integer,
    number_of_stars bigint,
    age integer,
    description text,
    has_black_hole boolean NOT NULL,
    size numeric(10,2),
    discoverer character varying(60),
    is_active boolean
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    mass integer,
    radius numeric(10,2),
    distance_from_planet bigint,
    as_atmosphere boolean,
    is_spherical boolean,
    surface_composition text,
    discovered_by character varying(60),
    discovery_date date,
    orbital_period numeric(6,2),
    rotation_period numeric(6,2)
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
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    mass integer,
    radius numeric(10,3),
    has_life boolean,
    number_of_moons integer,
    atmosphere_composition text,
    distance_from_star bigint,
    rotation_period numeric(6,2),
    orbit_period numeric(7,2),
    surface_temperature numeric(6,2),
    is_habitable boolean
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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    mass integer,
    luminosity integer,
    age bigint,
    temperature integer,
    distance_from_earth numeric(10,2),
    has_planets boolean,
    lifetime bigint,
    is_active boolean
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
-- Name: exploration_mission exploration_mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exploration_mission ALTER COLUMN exploration_mission_id SET DEFAULT nextval('public.exploration_mission_mission_id_seq'::regclass);


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
-- Data for Name: exploration_mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.exploration_mission VALUES (1, 1, 'Phobos Reconnaissance', 'Study surface composition', 4, 250000000.00, true, true, '2024-01-15');
INSERT INTO public.exploration_mission VALUES (2, 2, 'Deimos Observation', 'Analyze orbital dynamics', 0, 150000000.00, true, false, '2024-03-10');
INSERT INTO public.exploration_mission VALUES (3, 3, 'Io Volcanic Research', 'Investigate volcanic activity', 6, 500000000.00, false, true, '2024-06-22');
INSERT INTO public.exploration_mission VALUES (4, 4, 'Europa Ice Explorer', 'Probe subsurface ocean', 0, 800000000.00, true, false, '2025-09-14');
INSERT INTO public.exploration_mission VALUES (5, 5, 'Ganymede Survey', 'Geological mapping', 5, 450000000.00, true, true, '2024-12-05');
INSERT INTO public.exploration_mission VALUES (6, 6, 'Callisto Surface Study', 'Examine radiation levels', 3, 350000000.00, true, true, '2025-04-19');
INSERT INTO public.exploration_mission VALUES (7, 7, 'Titan Atmosphere Mission', 'Analyze atmospheric methane', 0, 700000000.00, false, false, '2023-11-30');
INSERT INTO public.exploration_mission VALUES (8, 8, 'Enceladus Plume Explorer', 'Study water plumes', 4, 600000000.00, true, true, '2025-07-01');
INSERT INTO public.exploration_mission VALUES (9, 9, 'Triton Retrograde Orbit', 'Analyze retrograde orbit', 0, 450000000.00, true, false, '2024-02-20');
INSERT INTO public.exploration_mission VALUES (10, 10, 'Charon Ice and Crater', 'Examine surface features', 2, 200000000.00, false, true, '2025-05-12');
INSERT INTO public.exploration_mission VALUES (11, 11, 'Oberon Magnetic Study', 'Analyze magnetic anomalies', 3, 400000000.00, true, true, '2024-10-23');
INSERT INTO public.exploration_mission VALUES (12, 12, 'Ariel Geological Survey', 'Detailed surface mapping', 0, 250000000.00, true, false, '2024-09-11');
INSERT INTO public.exploration_mission VALUES (13, 13, 'Proxima c First Contact', 'Search for signs of life', 7, 1000000000.00, true, true, '2025-08-08');
INSERT INTO public.exploration_mission VALUES (14, 14, 'Sirius B1 Exploration', 'Study gravitational effects', 0, 850000000.00, true, false, '2024-11-22');
INSERT INTO public.exploration_mission VALUES (15, 15, 'Betelgeuse X Probes', 'Observe gas emissions', 0, 950000000.00, true, false, '2024-05-15');
INSERT INTO public.exploration_mission VALUES (16, 16, 'Rigel Z1 Heat Analysis', 'Examine thermal anomalies', 3, 400000000.00, false, true, '2025-01-07');
INSERT INTO public.exploration_mission VALUES (17, 17, 'Hermes Orbital Study', 'Investigate orbital stability', 0, 300000000.00, true, false, '2024-07-25');
INSERT INTO public.exploration_mission VALUES (18, 18, 'Aphrodite Surface Probe', 'Analyze topography', 2, 350000000.00, false, true, '2025-03-03');
INSERT INTO public.exploration_mission VALUES (19, 19, 'Luna II Return Mission', 'Sample lunar surface', 6, 500000000.00, true, true, '2024-12-31');
INSERT INTO public.exploration_mission VALUES (20, 20, 'Ares Alpha Atmosphere', 'Study atmospheric density', 0, 600000000.00, true, false, '2024-04-01');
INSERT INTO public.exploration_mission VALUES (21, 21, 'Hera Habitat Test', 'Test habitat modules', 5, 450000000.00, true, true, '2025-06-15');
INSERT INTO public.exploration_mission VALUES (22, 22, 'Kronos Ice Cap Study', 'Investigate ice composition', 4, 400000000.00, true, true, '2025-02-22');
INSERT INTO public.exploration_mission VALUES (23, 23, 'Rhea II Subsurface', 'Map subsurface structures', 0, 300000000.00, false, false, '2024-03-19');
INSERT INTO public.exploration_mission VALUES (24, 24, 'Titania II Atmospheric', 'Analyze nitrogen levels', 0, 500000000.00, true, false, '2024-10-05');
INSERT INTO public.exploration_mission VALUES (25, 25, 'Poseidon Hydro Research', 'Study subsurface water', 4, 700000000.00, true, true, '2025-11-20');
INSERT INTO public.exploration_mission VALUES (26, 26, 'Proxima d First Contact', 'Life detection mission', 5, 800000000.00, false, true, '2025-09-25');
INSERT INTO public.exploration_mission VALUES (27, 27, 'Sirius B2 Gravity Study', 'Study gravitational waves', 0, 900000000.00, true, false, '2024-08-17');
INSERT INTO public.exploration_mission VALUES (28, 28, 'Betelgeuse Y Analysis', 'Study radiation bursts', 3, 950000000.00, true, true, '2024-06-30');
INSERT INTO public.exploration_mission VALUES (29, 29, 'Rigel Z2 Volcanic Probe', 'Study volcanic heat sources', 0, 800000000.00, false, false, '2025-03-12');
INSERT INTO public.exploration_mission VALUES (30, 30, 'Vega Alpha Flyby', 'Detailed surface imaging', 0, 500000000.00, true, false, '2024-11-30');
INSERT INTO public.exploration_mission VALUES (31, 31, 'Alpha Bb Gamma Survey', 'Study planetary interaction', 6, 1000000000.00, true, true, '2025-07-20');
INSERT INTO public.exploration_mission VALUES (32, 32, 'Polaris Beta Observation', 'Detailed surface mapping', 3, 400000000.00, true, true, '2024-12-10');
INSERT INTO public.exploration_mission VALUES (33, 33, 'Barnard Alpha Mission', 'Analyze environmental data', 4, 450000000.00, true, true, '2025-01-01');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, 300, 14, 'Our home galaxy, containing the Solar System.', true, 100.00, 'Ancient', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2537000, 1000, 10, 'Largest galaxy in the Local Group; will merge with Milky Way in 4.5 billion years.', true, 220.00, 'Ancient', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3000000, 40, 12, 'Smallest major galaxy in the Local Group, located near Andromeda.', true, 60.00, 'Ancient', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 31000000, 100, 10, 'Famous for its stunning spiral arms and companion galaxy NGC 5195.', true, 60.00, 'Charles Messier', true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Lenticular', 29000000, 800, 13, 'Named for its hat-like appearance; contains a massive black hole.', true, 50.00, 'William Herschel', true);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular', 163000, 30, 14, 'Satellite galaxy of the Milky Way; visible from the Southern Hemisphere.', false, 14.00, 'Ancient', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 4, 'Phobos', 'Moon', 0, 11.27, 9377, false, true, 'Rock, Dust', 'Asaph Hall', '1877-08-17', 0.32, 0.32);
INSERT INTO public.moon VALUES (2, 4, 'Deimos', 'Moon', 0, 6.20, 23459, false, true, 'Rock, Dust', 'Asaph Hall', '1877-08-18', 1.26, 1.26);
INSERT INTO public.moon VALUES (3, 5, 'Io', 'Volcanic Moon', 0, 1821.60, 421800, true, true, 'Sulfur, Rock', 'Galileo Galilei', '1610-01-07', 1.77, 1.77);
INSERT INTO public.moon VALUES (4, 5, 'Europa', 'Icy Moon', 0, 1560.80, 670900, true, true, 'Ice, Rock', 'Galileo Galilei', '1610-01-07', 3.55, 3.55);
INSERT INTO public.moon VALUES (5, 5, 'Ganymede', 'Icy Moon', 0, 2634.10, 1070400, true, true, 'Ice, Rock', 'Galileo Galilei', '1610-01-07', 7.16, 7.16);
INSERT INTO public.moon VALUES (6, 5, 'Callisto', 'Icy Moon', 0, 2410.30, 1882700, true, true, 'Ice, Rock', 'Galileo Galilei', '1610-01-07', 16.69, 16.69);
INSERT INTO public.moon VALUES (7, 6, 'Titan', 'Icy Moon', 0, 2575.50, 1221870, true, true, 'Methane, Ice', 'Christiaan Huygens', '1655-03-25', 15.94, 15.94);
INSERT INTO public.moon VALUES (8, 6, 'Enceladus', 'Icy Moon', 0, 252.10, 237948, true, true, 'Ice, Rock', 'William Herschel', '1789-08-28', 1.37, 1.37);
INSERT INTO public.moon VALUES (9, 8, 'Triton', 'Icy Moon', 0, 1353.40, 354759, true, true, 'Nitrogen Ice, Rock', 'William Lassell', '1846-10-10', 5.88, 5.88);
INSERT INTO public.moon VALUES (10, 3, 'Charon', 'Icy Moon', 0, 606.00, 19591, true, true, 'Methane, Water Ice', 'James Christy', '1978-06-22', 6.39, 6.39);
INSERT INTO public.moon VALUES (11, 7, 'Oberon', 'Icy Moon', 0, 761.40, 583520, true, true, 'Ice, Rock', 'William Herschel', '1787-01-11', 13.46, 13.46);
INSERT INTO public.moon VALUES (12, 7, 'Ariel', 'Icy Moon', 0, 578.90, 190900, true, true, 'Ice, Rock', 'William Lassell', '1851-10-24', 2.52, 2.52);
INSERT INTO public.moon VALUES (13, 9, 'Proxima c', 'Exoplanet Moon', 0, 1430.00, 450000, true, true, 'Unknown', 'NA', NULL, 30.00, 15.00);
INSERT INTO public.moon VALUES (14, 10, 'Sirius B1', 'Volcanic Moon', 0, 1120.00, 350000, true, true, 'Lava, Rock', 'NA', NULL, 40.00, 25.00);
INSERT INTO public.moon VALUES (15, 11, 'Betelgeuse X', 'Icy Moon', 0, 1100.00, 300000, true, true, 'Ice, Dust', 'NA', NULL, 50.00, 30.00);
INSERT INTO public.moon VALUES (16, 12, 'Rigel Z1', 'Icy Moon', 0, 900.00, 200000, true, true, 'Ice, Methane', 'NA', NULL, 60.00, 35.00);
INSERT INTO public.moon VALUES (17, 1, 'Hermes', 'Rocky Moon', 0, 5.00, 20000, false, true, 'Rock, Dust', 'Fictional Explorer', NULL, 1.50, 1.50);
INSERT INTO public.moon VALUES (18, 2, 'Aphrodite', 'Rocky Moon', 0, 7.00, 30000, false, true, 'Sulfur, Rock', 'Fictional Explorer', NULL, 2.00, 2.00);
INSERT INTO public.moon VALUES (19, 3, 'Luna II', 'Icy Moon', 0, 200.00, 384000, false, true, 'Ice, Dust', 'Fictional Explorer', NULL, 30.00, 30.00);
INSERT INTO public.moon VALUES (20, 4, 'Ares Alpha', 'Rocky Moon', 0, 15.00, 5000, false, true, 'Iron, Dust', 'Fictional Explorer', NULL, 0.25, 0.25);
INSERT INTO public.moon VALUES (21, 5, 'Hera', 'Gas Moon', 0, 300.00, 650000, true, true, 'Gas, Dust', 'Fictional Explorer', NULL, 14.00, 14.00);
INSERT INTO public.moon VALUES (22, 6, 'Kronos', 'Icy Moon', 0, 250.00, 750000, true, true, 'Methane, Ice', 'Fictional Explorer', NULL, 20.00, 20.00);
INSERT INTO public.moon VALUES (23, 6, 'Rhea II', 'Icy Moon', 0, 100.00, 500000, true, true, 'Methane, Ice', 'Fictional Explorer', NULL, 15.00, 15.00);
INSERT INTO public.moon VALUES (24, 7, 'Titania II', 'Icy Moon', 0, 200.00, 400000, true, true, 'Ice, Rock', 'Fictional Explorer', NULL, 10.00, 10.00);
INSERT INTO public.moon VALUES (25, 8, 'Poseidon', 'Icy Moon', 0, 300.00, 600000, true, true, 'Nitrogen Ice, Dust', 'Fictional Explorer', NULL, 15.00, 15.00);
INSERT INTO public.moon VALUES (26, 9, 'Proxima d', 'Icy Moon', 0, 500.00, 450000, true, true, 'Unknown', NULL, NULL, 30.00, 20.00);
INSERT INTO public.moon VALUES (27, 10, 'Sirius B2', 'Volcanic Moon', 0, 1000.00, 380000, true, true, 'Lava, Rock', NULL, NULL, 35.00, 30.00);
INSERT INTO public.moon VALUES (28, 11, 'Betelgeuse Y', 'Volcanic Moon', 0, 850.00, 300000, true, true, 'Ice, Methane', NULL, NULL, 40.00, 35.00);
INSERT INTO public.moon VALUES (29, 12, 'Rigel Z2', 'Rocky Moon', 0, 500.00, 250000, true, true, 'Methane, Dust', NULL, NULL, 45.00, 40.00);
INSERT INTO public.moon VALUES (30, 13, 'Vega Alpha', 'Icy Moon', 0, 400.00, 350000, true, true, 'Ice, Rock', NULL, NULL, 50.00, 45.00);
INSERT INTO public.moon VALUES (31, 14, 'Alpha Bb Gamma', 'Icy Moon', 0, 350.00, 400000, true, true, 'Unknown', NULL, NULL, 55.00, 50.00);
INSERT INTO public.moon VALUES (32, 15, 'Polaris Beta', 'Icy Moon', 0, 450.00, 500000, true, true, 'Ice, Methane', NULL, NULL, 60.00, 55.00);
INSERT INTO public.moon VALUES (33, 16, 'Barnard Alpha', 'Rocky Moon', 0, 550.00, 600000, true, true, 'Rock, Dust', NULL, NULL, 65.00, 60.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 'Terrestrial', 0, 2439.700, false, 0, 'None', 57900000, 1407.50, 87.97, 167.00, false);
INSERT INTO public.planet VALUES (2, 1, 'Venus', 'Terrestrial', 1, 6051.800, false, 0, 'Carbon Dioxide, Nitrogen', 108200000, -5832.00, 224.70, 464.00, false);
INSERT INTO public.planet VALUES (3, 1, 'Earth', 'Terrestrial', 1, 6371.000, true, 1, 'Nitrogen, Oxygen', 149600000, 24.00, 365.25, 15.00, true);
INSERT INTO public.planet VALUES (4, 1, 'Mars', 'Terrestrial', 0, 3389.500, false, 2, 'Carbon Dioxide', 227900000, 24.62, 687.00, -63.00, false);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', 'Gas Giant', 318, 69911.000, false, 79, 'Hydrogen, Helium', 778500000, 9.93, 4332.59, -108.00, false);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 'Gas Giant', 95, 58232.000, false, 83, 'Hydrogen, Helium', 1433500000, 10.70, 10759.22, -138.00, false);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', 'Ice Giant', 15, 25362.000, false, 27, 'Hydrogen, Methane', 2872500000, -17.24, 30688.50, -195.00, false);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', 'Ice Giant', 17, 24622.000, false, 14, 'Hydrogen, Methane', 4495100000, 16.11, 60182.00, -201.00, false);
INSERT INTO public.planet VALUES (9, 2, 'Proxima b', 'Terrestrial', 1, 7149.000, NULL, 0, NULL, 7500000, 11.20, NULL, -40.00, NULL);
INSERT INTO public.planet VALUES (10, 3, 'Sirius Ab', 'Gas Giant', 3, 71492.000, false, 0, 'Hydrogen, Helium', 500000000, 10.00, 1200.00, -150.00, false);
INSERT INTO public.planet VALUES (11, 4, 'Betelgeuse I', 'Gas Giant', 15, 120000.000, false, 5, 'Hydrogen, Helium', 1000000000, 20.00, 4000.00, -200.00, false);
INSERT INTO public.planet VALUES (12, 5, 'Rigel IV', 'Terrestrial', 2, 5400.000, false, 1, 'Carbon Dioxide, Nitrogen', 950000000, 25.00, 400.00, -50.00, false);
INSERT INTO public.planet VALUES (13, 6, 'Vega b', 'Terrestrial', 1, 6120.000, false, 0, 'Nitrogen, Carbon Dioxide', 140000000, 22.00, 220.00, 10.00, false);
INSERT INTO public.planet VALUES (14, 7, 'Alpha Centauri Bb', 'Terrestrial', 1, 6789.000, NULL, 0, 'Unknown', 6000000, 3.00, 8.00, -20.00, true);
INSERT INTO public.planet VALUES (15, 8, 'Polaris c', 'Ice Giant', 17, 25559.000, false, 10, 'Hydrogen, Methane', 2000000000, 16.00, 3200.00, -210.00, false);
INSERT INTO public.planet VALUES (16, 10, 'Barnard b', 'Terrestrial', 1, 7149.000, NULL, 0, 'Unknown', 7500000, 10.00, 233.00, -170.00, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 'Main Sequence', 1, 1, 4600000000, 5778, 0.00, true, 10000000000, true);
INSERT INTO public.star VALUES (2, 1, 'Proxima Centauri', 'Red Dwarf', 0, 0, 4700000000, 3042, 4.24, true, 400000000000, true);
INSERT INTO public.star VALUES (3, 1, 'Sirius A', 'Main Sequence', 2, 25, 240000000, 9940, 8.60, true, 1000000000, true);
INSERT INTO public.star VALUES (4, 1, 'Betelgeuse', 'Red Supergiant', 20, 100000, 8000000, 3500, 642.00, false, 10000000, false);
INSERT INTO public.star VALUES (5, 1, 'Rigel', 'Blue Supergiant', 21, 120000, 8000000, 11000, 863.00, false, 10000000, false);
INSERT INTO public.star VALUES (6, 1, 'Vega', 'Main Sequence', 2, 40, 450000000, 9602, 25.00, true, 1000000000, true);
INSERT INTO public.star VALUES (7, 1, 'Alpha Centauri A', 'Main Sequence', 1, 2, 5000000000, 5790, 4.37, true, 10000000000, true);
INSERT INTO public.star VALUES (8, 1, 'Alpha Centauri B', 'Main Sequence', 1, 1, 6000000000, 5260, 4.37, true, 10000000000, true);
INSERT INTO public.star VALUES (9, 1, 'Polaris', 'Yellow Supergiant', 5, 2400, 70000000, 6015, 433.00, true, 120000000, false);
INSERT INTO public.star VALUES (10, 1, 'Barnard''s Star', 'Red Dwarf', 0, 0, 10000000000, 3134, 5.96, true, 400000000000, true);


--
-- Name: exploration_mission_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.exploration_mission_mission_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: exploration_mission exploration_mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exploration_mission
    ADD CONSTRAINT exploration_mission_name_key UNIQUE (name);


--
-- Name: exploration_mission exploration_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exploration_mission
    ADD CONSTRAINT exploration_mission_pkey PRIMARY KEY (exploration_mission_id);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: exploration_mission exploration_mission_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exploration_mission
    ADD CONSTRAINT exploration_mission_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id) ON DELETE CASCADE;


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

