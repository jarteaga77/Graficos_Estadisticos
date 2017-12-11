--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-18 23:03:08

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2121 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 16404)
-- Name: detalle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE detalle (
    id integer NOT NULL,
    id_en integer,
    frecuencia_abs integer,
    frecuencia_relat numeric(16,3) DEFAULT 0,
    variable character varying
);


ALTER TABLE detalle OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16402)
-- Name: detalle_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE detalle_id_seq OWNER TO postgres;

--
-- TOC entry 2122 (class 0 OID 0)
-- Dependencies: 183
-- Name: detalle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE detalle_id_seq OWNED BY detalle.id;


--
-- TOC entry 182 (class 1259 OID 16396)
-- Name: encabezado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE encabezado (
    id integer NOT NULL,
    fecha timestamp without time zone
);


ALTER TABLE encabezado OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 16394)
-- Name: encabezado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE encabezado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE encabezado_id_seq OWNER TO postgres;

--
-- TOC entry 2123 (class 0 OID 0)
-- Dependencies: 181
-- Name: encabezado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE encabezado_id_seq OWNED BY encabezado.id;


--
-- TOC entry 1989 (class 2604 OID 16407)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle ALTER COLUMN id SET DEFAULT nextval('detalle_id_seq'::regclass);


--
-- TOC entry 1988 (class 2604 OID 16399)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY encabezado ALTER COLUMN id SET DEFAULT nextval('encabezado_id_seq'::regclass);


--
-- TOC entry 2113 (class 0 OID 16404)
-- Dependencies: 184
-- Data for Name: detalle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY detalle (id, id_en, frecuencia_abs, frecuencia_relat, variable) FROM stdin;
1	4	15	0.000	oriente
2	4	6	0.000	sur
3	4	26	0.000	norte
4	4	1	0.000	oeste
5	4	4	0.000	fuera de cali
6	5	15	0.000	oriente
7	5	6	0.000	sur
8	5	26	0.000	norte
9	5	1	0.000	oeste
10	5	4	0.000	fuera de cali
11	6	26	0.000	norte
12	6	15	0.000	oriente
13	6	6	0.000	sur
14	6	1	0.000	oeste
15	6	4	0.000	fuera de cali
16	7	15	0.000	oriente
17	7	6	0.000	sur
18	7	26	0.000	norte
19	7	1	0.000	oeste
20	7	4	0.000	fuera de cali
21	8	50	0.000	norte
22	8	100	0.000	sur
23	9	20	0.000	norte
24	9	50	0.000	sur
25	10	50	0.000	norte
26	10	70	0.000	sur
27	11	100	0.000	norte
28	11	120	0.000	sur
29	12	130	0.000	norte
30	12	50	0.000	sur
31	13	68	0.000	oeste
32	13	70	0.000	sur
33	14	20	0.000	oeste
34	14	7	0.000	norte
35	15	100	0.000	oriente
36	15	50	0.000	sur
37	16	50	20000.000	sur
38	16	100	25000.000	oriente
39	17	20	0.000	sur
40	17	30	0.000	oriente
41	18	30	0.000	sur
42	18	25	0.000	oriente
43	19	50	0.000	sur
44	19	0	0.000	56
45	20	100	0.000	sur
46	20	40	0.000	norte
47	21	50	0.000	norte
48	21	79	0.000	sur
49	22	60	0.000	norte
50	22	20	0.000	sur
51	23	42	0.000	norte
52	23	10	0.000	sur
53	24	20	0.000	oeste
54	24	32	0.000	oriente
55	25	50	0.000	sur
56	25	50	0.000	norte
57	26	32	0.000	sur
58	26	17	0.000	norte
59	27	15	0.000	sur
60	27	20	0.000	norte
61	28	50	0.000	sur
62	28	20	0.000	norte
63	29	34	0.000	sur
64	29	12	0.000	norte
65	30	50	10.000	sur
66	30	21	4.000	norte
67	31	54	10.000	oeste
68	31	43	8.000	norte
69	32	43	8.000	sur
70	32	40	8.000	norte
71	33	45	9.000	norte
72	33	32	6.000	sur
73	34	43	8.600	norte
74	34	31	6.200	sur
75	35	31	0.470	sur
76	35	35	0.530	norte
77	36	32	60.377	sur
78	36	16	30.189	norte
79	36	5	9.434	oeste
80	37	15	31.915	sur
81	37	25	53.191	norte
82	37	5	10.638	oeste
83	37	2	4.255	fuera de cali
104	46	2	1.527	occidente
84	38	56	40.876	sur
85	38	67	48.905	norte
86	38	5	3.650	oriente
87	38	5	3.650	occidente
88	38	4	2.920	fuera de cali
89	39	50	76.923	norte
90	39	12	18.462	sur
91	39	2	3.077	oriente
92	39	1	1.538	occidente
93	40	23	24.468	sur
94	40	50	53.191	norte
95	40	21	22.340	occidente
96	41	40	43.011	sur
97	41	30	32.258	norte
98	41	23	24.731	oeste
99	42	50	60.976	sur
100	42	32	39.024	norte
101	46	45	34.351	sur
102	46	50	38.168	norte
103	46	34	25.954	oriente
105	48	15	28.846	oriente
106	48	6	11.538	sur
107	48	26	50.000	norte
108	48	1	1.923	oeste
109	48	4	7.692	fuera de cali
110	49	43	70.492	norte
111	49	12	19.672	sur
112	49	5	8.197	oeste
113	49	1	1.639	fuera de cali
\.


--
-- TOC entry 2124 (class 0 OID 0)
-- Dependencies: 183
-- Name: detalle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('detalle_id_seq', 113, true);


--
-- TOC entry 2111 (class 0 OID 16396)
-- Dependencies: 182
-- Data for Name: encabezado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY encabezado (id, fecha) FROM stdin;
1	2016-11-08 23:05:05
2	2016-11-08 23:09:46
3	2016-11-08 23:13:03
4	2016-11-08 23:16:06
5	2016-11-08 23:55:06
6	2016-11-09 00:04:35
7	2016-11-09 00:06:25
8	2016-11-09 00:13:01
9	2016-11-09 00:15:34
10	2016-11-09 00:17:21
11	2016-11-09 00:23:09
12	2016-11-09 00:24:52
13	2016-11-09 00:28:22
14	2016-11-09 00:29:12
15	2016-11-09 05:22:52
16	2016-11-09 05:23:58
17	2016-11-09 05:25:25
18	2016-11-09 05:27:03
19	2016-11-09 05:33:16
20	2016-11-09 05:33:36
21	2016-11-09 07:25:09
22	2016-11-09 07:28:34
23	2016-11-09 07:29:47
24	2016-11-09 08:04:58
25	2016-11-09 08:06:08
26	2016-11-09 08:08:01
27	2016-11-09 08:36:11
28	2016-11-09 08:50:31
29	2016-11-09 09:09:31
30	2016-11-09 09:16:58
31	2016-11-09 09:19:35
32	2016-11-09 09:21:36
33	2016-11-09 09:23:49
34	2016-11-09 09:26:22
35	2016-11-09 09:28:28
36	2016-11-09 09:30:19
37	2016-11-09 09:52:44
38	2016-11-09 09:54:14
39	2016-11-09 10:41:26
40	2016-11-09 10:43:34
41	2016-11-09 10:47:09
42	2016-11-09 10:51:06
43	2016-11-09 11:06:18
44	2016-11-09 11:06:25
45	2016-11-09 11:07:27
46	2016-11-09 11:13:57
47	2016-11-12 09:28:04
48	2016-11-12 16:31:07
49	2016-11-12 16:36:32
\.


--
-- TOC entry 2125 (class 0 OID 0)
-- Dependencies: 181
-- Name: encabezado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('encabezado_id_seq', 49, true);


--
-- TOC entry 1994 (class 2606 OID 16409)
-- Name: pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle
    ADD CONSTRAINT pk PRIMARY KEY (id);


--
-- TOC entry 1992 (class 2606 OID 16401)
-- Name: pk_primarykey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY encabezado
    ADD CONSTRAINT pk_primarykey PRIMARY KEY (id);


--
-- TOC entry 1995 (class 2606 OID 16410)
-- Name: fk_id_en; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle
    ADD CONSTRAINT fk_id_en FOREIGN KEY (id_en) REFERENCES encabezado(id);


--
-- TOC entry 2120 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-12-18 23:03:11

--
-- PostgreSQL database dump complete
--

