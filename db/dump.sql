--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 10.9

-- Started on 2019-07-24 14:03:36

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

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2815 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 197 (class 1259 OID 16409)
-- Name: indicador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.indicador_id_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.indicador_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16394)
-- Name: indicadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.indicadores (
    id bigint NOT NULL,
    nome character varying(255) NOT NULL
);


ALTER TABLE public.indicadores OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16411)
-- Name: municipio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.municipio_id_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.municipio_id_seq OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16413)
-- Name: municipios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipios (
    id bigint NOT NULL,
    geo_codigo bigint NOT NULL,
    nome character varying(255) NOT NULL,
    uf character varying(255) NOT NULL
);


ALTER TABLE public.municipios OWNER TO postgres;

--
-- TOC entry 2804 (class 0 OID 16394)
-- Dependencies: 196
-- Data for Name: indicadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.indicadores (id, nome) FROM stdin;
1	Indicador A
2	Indicador B
\.


--
-- TOC entry 2807 (class 0 OID 16413)
-- Dependencies: 199
-- Data for Name: municipios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.municipios (id, geo_codigo, nome, uf) FROM stdin;
1	1504208	Marabá	PA
2	1505536	Parauapebas	PA
3	1502772	Curionópolis	PA
4	1501576	Bom Jesus do Tocantins	PA
5	2111532	São Pedro da Água Branca	MA
6	2112852	Vila Nova dos Martírios	MA
7	2103257	Cidelândia	MA
8	2100055	Açailândia	MA
9	2105427	Itinga do Maranhão	MA
10	2110856	São Francisco do Brejão	MA
11	2102002	Bom Jardim	MA
12	2102036	Bom Jesus das Selvas	MA
13	2102325	Buriticupu	MA
14	2100477	Alto Alegre do Pindaré	MA
15	2112274	Tufilândia	MA
16	2109908	Santa Inês	MA
17	2106904	Monção	MA
18	2108504	Pindaré-Mirim	MA
19	2105153	Igarapé do Meio	MA
20	2112902	Vitória do Mearim	MA
21	2101004	Arari	MA
22	2100709	Anajatuba	MA
23	2106755	Miranda do Norte	MA
24	2105401	Itapecuru Mirim	MA
25	2110203	Santa Rita	MA
26	2101251	Bacabeira	MA
27	2111300	São Luís	MA
\.


--
-- TOC entry 2816 (class 0 OID 0)
-- Dependencies: 197
-- Name: indicador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indicador_id_seq', 1, false);


--
-- TOC entry 2817 (class 0 OID 0)
-- Dependencies: 198
-- Name: municipio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.municipio_id_seq', 1, false);


--
-- TOC entry 2678 (class 2606 OID 16398)
-- Name: indicadores indicadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicadores
    ADD CONSTRAINT indicadores_pkey PRIMARY KEY (id);


--
-- TOC entry 2680 (class 2606 OID 16420)
-- Name: municipios municipios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipios
    ADD CONSTRAINT municipios_pkey PRIMARY KEY (id);


--
-- TOC entry 2682 (class 2606 OID 16422)
-- Name: municipios uk_8u17f6itvp2jrb1lexi2vskll; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipios
    ADD CONSTRAINT uk_8u17f6itvp2jrb1lexi2vskll UNIQUE (geo_codigo);


-- Completed on 2019-07-24 14:03:36

--
-- PostgreSQL database dump complete
--

