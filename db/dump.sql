--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: sig; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE sig WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';


ALTER DATABASE sig OWNER TO postgres;

\connect sig

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
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
-- Name: indicadores; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.indicadores (
    id bigint NOT NULL,
    valor double precision,
    municipio_id bigint,
    tipo_id bigint
);


ALTER TABLE public.indicadores OWNER TO postgres;

--
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
-- Name: municipios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.municipios (
    id bigint NOT NULL,
    geo_codigo bigint NOT NULL,
    nome character varying(255) NOT NULL,
    uf character varying(255) NOT NULL
);


ALTER TABLE public.municipios OWNER TO postgres;

--
-- Name: tipo_indicadores; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.tipo_indicadores (
    id bigint NOT NULL,
    nome character varying(255) NOT NULL
);


ALTER TABLE public.tipo_indicadores OWNER TO postgres;

--
-- Name: tipoindicador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipoindicador_id_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipoindicador_id_seq OWNER TO postgres;

--
-- Name: indicador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indicador_id_seq', 1, false);


--
-- Data for Name: indicadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (1, 0.634518656414001958, 1, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (2, 0.485342740779742987, 2, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (3, 0.815993377938866948, 3, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (4, 0.502354774391278958, 4, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (5, 0.732960757799447027, 5, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (6, 0.643618667963891999, 6, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (7, 0.261275153607129995, 7, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (8, 0.270744774723426007, 8, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (9, 0.840939873130992055, 9, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (10, 0.582163442624732963, 10, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (11, 0.997633894672616983, 11, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (12, 0.183371154591440988, 12, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (13, 0.438058767700568008, 13, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (14, 0.681405439041555039, 14, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (15, 0.542273976141587011, 15, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (16, 0.887420376762747987, 16, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (17, 0.0181432687677442993, 17, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (18, 0.200958286644890988, 18, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (19, 0.580844923155382054, 19, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (20, 0.855263290461153014, 20, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (21, 0.817817427916451956, 21, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (22, 0.918071790365502016, 22, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (23, 0.197646087734029002, 23, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (24, 0.0179618352558463985, 24, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (25, 0.956268944311887026, 25, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (26, 0.925337513443083015, 26, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (27, 0.400944903260097019, 27, 1);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (28, 0.898558028275146969, 1, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (29, 0.291396991116926019, 2, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (30, 0.42976909456774598, 3, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (31, 0.930769892409443966, 4, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (32, 0.926139823161066023, 5, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (33, 0.546792789595201945, 6, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (34, 0.380920055555179993, 7, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (35, 0.735641639912500978, 8, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (36, 0.0793788379523902993, 9, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (37, 0.758173665031790955, 10, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (38, 0.193310868926345997, 11, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (39, 0.72118800668977201, 12, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (40, 0.131155038019642012, 13, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (41, 0.707571470178663953, 14, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (42, 0.450892421184107994, 15, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (43, 0.252139900112525017, 16, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (44, 0.243147557601332998, 17, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (45, 0.624564239056781045, 18, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (46, 0.538178855087607988, 19, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (47, 0.828834902262315043, 20, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (48, 0.452234847936778983, 21, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (49, 0.570741405012086034, 22, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (50, 0.133421922102571006, 23, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (51, 0.470863609341905021, 24, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (52, 0.0682949204929172993, 25, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (53, 0.940907349344342947, 26, 2);
INSERT INTO public.indicadores (id, valor, municipio_id, tipo_id) VALUES (54, 0.606538898777217006, 27, 2);


--
-- Name: municipio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.municipio_id_seq', 1, false);


--
-- Data for Name: municipios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (1, 1504208, 'Marabá', 'PA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (2, 1505536, 'Parauapebas', 'PA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (3, 1502772, 'Curionópolis', 'PA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (4, 1501576, 'Bom Jesus do Tocantins', 'PA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (5, 2111532, 'São Pedro da Água Branca', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (6, 2112852, 'Vila Nova dos Martírios', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (7, 2103257, 'Cidelândia', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (8, 2100055, 'Açailândia', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (9, 2105427, 'Itinga do Maranhão', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (10, 2110856, 'São Francisco do Brejão', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (11, 2102002, 'Bom Jardim', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (12, 2102036, 'Bom Jesus das Selvas', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (13, 2102325, 'Buriticupu', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (14, 2100477, 'Alto Alegre do Pindaré', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (15, 2112274, 'Tufilândia', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (16, 2109908, 'Santa Inês', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (17, 2106904, 'Monção', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (18, 2108504, 'Pindaré-Mirim', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (19, 2105153, 'Igarapé do Meio', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (20, 2112902, 'Vitória do Mearim', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (21, 2101004, 'Arari', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (22, 2100709, 'Anajatuba', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (23, 2106755, 'Miranda do Norte', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (24, 2105401, 'Itapecuru Mirim', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (25, 2110203, 'Santa Rita', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (26, 2101251, 'Bacabeira', 'MA');
INSERT INTO public.municipios (id, geo_codigo, nome, uf) VALUES (27, 2111300, 'São Luís', 'MA');


--
-- Data for Name: tipo_indicadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipo_indicadores (id, nome) VALUES (1, 'Indicador A');
INSERT INTO public.tipo_indicadores (id, nome) VALUES (2, 'Indicador B');


--
-- Name: tipoindicador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipoindicador_id_seq', 1, false);


--
-- Name: indicadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.indicadores
    ADD CONSTRAINT indicadores_pkey PRIMARY KEY (id);


--
-- Name: municipios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.municipios
    ADD CONSTRAINT municipios_pkey PRIMARY KEY (id);


--
-- Name: tipo_indicadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.tipo_indicadores
    ADD CONSTRAINT tipo_indicadores_pkey PRIMARY KEY (id);


--
-- Name: uk_8u17f6itvp2jrb1lexi2vskll; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.municipios
    ADD CONSTRAINT uk_8u17f6itvp2jrb1lexi2vskll UNIQUE (geo_codigo);


--
-- Name: fk8jirwsw7g0oq447bgmd8kh0yw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicadores
    ADD CONSTRAINT fk8jirwsw7g0oq447bgmd8kh0yw FOREIGN KEY (municipio_id) REFERENCES public.municipios(id);


--
-- Name: fknoksgt9vgmqr7w88g55tp48qu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicadores
    ADD CONSTRAINT fknoksgt9vgmqr7w88g55tp48qu FOREIGN KEY (tipo_id) REFERENCES public.tipo_indicadores(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

