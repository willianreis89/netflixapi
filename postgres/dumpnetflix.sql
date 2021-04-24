--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Debian 13.2-1.pgdg100+1)
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-21 14:43:54 UTC

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
-- TOC entry 200 (class 1259 OID 16384)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id numeric NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16390)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16392)
-- Name: movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie (
    id integer NOT NULL,
    name text,
    description text,
    categoryid integer NOT NULL,
    liked boolean,
    view boolean DEFAULT false,
    future boolean DEFAULT false
);


ALTER TABLE public.movie OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16400)
-- Name: movie_categoryid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movie_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movie_categoryid_seq OWNER TO postgres;

--
-- TOC entry 2970 (class 0 OID 0)
-- Dependencies: 203
-- Name: movie_categoryid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movie_categoryid_seq OWNED BY public.movie.categoryid;


--
-- TOC entry 204 (class 1259 OID 16402)
-- Name: movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movie_id_seq OWNER TO postgres;

--
-- TOC entry 2971 (class 0 OID 0)
-- Dependencies: 204
-- Name: movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movie_id_seq OWNED BY public.movie.id;


--
-- TOC entry 205 (class 1259 OID 16404)
-- Name: support; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.support (
    id numeric NOT NULL,
    name text,
    description text
);


ALTER TABLE public.support OWNER TO postgres;

--
-- TOC entry 2820 (class 2604 OID 16410)
-- Name: movie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie ALTER COLUMN id SET DEFAULT nextval('public.movie_id_seq'::regclass);


--
-- TOC entry 2821 (class 2604 OID 16411)
-- Name: movie categoryid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie ALTER COLUMN categoryid SET DEFAULT nextval('public.movie_categoryid_seq'::regclass);


--
-- TOC entry 2959 (class 0 OID 16384)
-- Dependencies: 200
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id, name) FROM stdin;
1	Acao
2	Aventura
3	Comedia
4	Drama
5	Terror
\.


--
-- TOC entry 2961 (class 0 OID 16392)
-- Dependencies: 202
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie (id, name, description, categoryid, liked, view, future) FROM stdin;
1	Harry Potter e a Pedra Filosofal	Primeiro filme do Harry Potter	4	f	f	f
3	Os Vingadores	Homem de ferro e seus amigos	1	f	f	f
9	IT	Quem disse que palhaço não dá medo	5	f	f	f
10	Chuck	Nem os brinquedos perdoam	5	f	f	f
11	O Exorcista	Sim ela anda nas paredes	5	f	f	f
12	O Iluminado	Suas emoções vão ser exploradas ao máximo	5	f	f	f
13	O chamado	É melhor não atender	5	f	f	f
14	Silent Hill	A cidade continua queimando	5	f	f	f
2	Matrix Reloaded	O escolhido aprende a voar	1	f	f	f
4	Matrix Revolutions	O virus saiu do computador	1	f	f	f
5	Senhor dos aneis	hobbit Frodo Bolseiro em sua jornada	2	f	f	f
6	Matrix	O inicio da jornada do escolhido	1	f	f	f
7	Indiana Jones	A caveira de cristal	2	f	f	f
8	Minority report	Os caras são presos sem nem ter cometido o crime	1	f	f	f
15	De volta para o futuro	Desde de quando um DeLorean atinge altas velocidades 	2	f	f	f
16	De volta para o futuro II	Agora vai o carro voa!	2	f	f	f
17	De volta para o futuro III	Quando o carro estava legal destruíram ele	2	f	f	f
18	Loucademia de policia	Sim é engraçado e sim ainda lembramos	3	f	f	f
19	Ace Ventura	Detetive de animais	3	f	f	f
20	Hot Tub time machine	Quem diria que bolhas seriam tão magicas	3	f	f	f
\.


--
-- TOC entry 2964 (class 0 OID 16404)
-- Dependencies: 205
-- Data for Name: support; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.support (id, name, description) FROM stdin;
3	Problema com Filme	Erro ao carregar o filme
\.


--
-- TOC entry 2972 (class 0 OID 0)
-- Dependencies: 201
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 3, true);


--
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 203
-- Name: movie_categoryid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movie_categoryid_seq', 2, true);


--
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 204
-- Name: movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movie_id_seq', 1, false);


--
-- TOC entry 2823 (class 2606 OID 16413)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 2825 (class 2606 OID 16415)
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);


--
-- TOC entry 2827 (class 2606 OID 16417)
-- Name: support support_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.support
    ADD CONSTRAINT support_pkey PRIMARY KEY (id);


--
-- TOC entry 2828 (class 2606 OID 16418)
-- Name: movie movie_categoryid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.category(id);


-- Completed on 2021-04-21 14:43:54 UTC

--
-- PostgreSQL database dump complete
--

