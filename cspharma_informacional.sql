--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: dlk_informacional; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA dlk_informacional;


ALTER SCHEMA dlk_informacional OWNER TO postgres;

--
-- Name: dmt_torrecontrol; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA dmt_torrecontrol;


ALTER SCHEMA dmt_torrecontrol OWNER TO postgres;

--
-- Name: dwh_torrecontrol; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA dwh_torrecontrol;


ALTER SCHEMA dwh_torrecontrol OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: tdc_cat_estados_devolucion_pedido; Type: TABLE; Schema: dwh_torrecontrol; Owner: postgres
--

CREATE TABLE dwh_torrecontrol.tdc_cat_estados_devolucion_pedido (
    md_uuid character varying NOT NULL,
    md_date timestamp without time zone NOT NULL,
    id bigint NOT NULL,
    cod_estado_devolucion character varying NOT NULL,
    des_estado_devolucion character varying
);


ALTER TABLE dwh_torrecontrol.tdc_cat_estados_devolucion_pedido OWNER TO postgres;

--
-- Name: tdc_cat_estados_devolucion_pedido_id_seq; Type: SEQUENCE; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE dwh_torrecontrol.tdc_cat_estados_devolucion_pedido ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dwh_torrecontrol.tdc_cat_estados_devolucion_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: tdc_cat_estados_envio_pedido; Type: TABLE; Schema: dwh_torrecontrol; Owner: postgres
--

CREATE TABLE dwh_torrecontrol.tdc_cat_estados_envio_pedido (
    md_uuid character varying NOT NULL,
    md_date timestamp without time zone NOT NULL,
    id bigint NOT NULL,
    cod_estado_envio character varying NOT NULL,
    des_estado_envio character varying
);


ALTER TABLE dwh_torrecontrol.tdc_cat_estados_envio_pedido OWNER TO postgres;

--
-- Name: tdc_cat_estados_envio_pedido_id_seq; Type: SEQUENCE; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE dwh_torrecontrol.tdc_cat_estados_envio_pedido ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dwh_torrecontrol.tdc_cat_estados_envio_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: tdc_cat_estados_pago_pedido; Type: TABLE; Schema: dwh_torrecontrol; Owner: postgres
--

CREATE TABLE dwh_torrecontrol.tdc_cat_estados_pago_pedido (
    md_uuid character varying NOT NULL,
    md_date timestamp without time zone NOT NULL,
    id bigint NOT NULL,
    cod_estado_pago character varying NOT NULL,
    des_estado_pago character varying
);


ALTER TABLE dwh_torrecontrol.tdc_cat_estados_pago_pedido OWNER TO postgres;

--
-- Name: tdc_cat_estados_pago_pedido_id_seq; Type: SEQUENCE; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE dwh_torrecontrol.tdc_cat_estados_pago_pedido ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dwh_torrecontrol.tdc_cat_estados_pago_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: tdc_cat_lineas_distribucion; Type: TABLE; Schema: dwh_torrecontrol; Owner: postgres
--

CREATE TABLE dwh_torrecontrol.tdc_cat_lineas_distribucion (
    md_uuid character varying NOT NULL,
    md_date timestamp without time zone NOT NULL,
    id bigint NOT NULL,
    cod_linea character varying NOT NULL,
    cod_provincia character varying NOT NULL,
    cod_municipio character varying NOT NULL,
    cod_barrio character varying NOT NULL
);


ALTER TABLE dwh_torrecontrol.tdc_cat_lineas_distribucion OWNER TO postgres;

--
-- Name: tdc_cat_lineas_distribucion_id_seq; Type: SEQUENCE; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE dwh_torrecontrol.tdc_cat_lineas_distribucion ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dwh_torrecontrol.tdc_cat_lineas_distribucion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: tdc_tch_estado_pedidos; Type: TABLE; Schema: dwh_torrecontrol; Owner: postgres
--

CREATE TABLE dwh_torrecontrol.tdc_tch_estado_pedidos (
    md_uuid character varying NOT NULL,
    md_date timestamp without time zone NOT NULL,
    id bigint NOT NULL,
    cod_estado_envio character varying,
    cod_estado_pago character varying,
    cod_estado_devolucion character varying,
    cod_pedido character varying NOT NULL,
    cod_linea character varying NOT NULL
);


ALTER TABLE dwh_torrecontrol.tdc_tch_estado_pedidos OWNER TO postgres;

--
-- Name: tdc_tch_estado_pedidos_id_seq; Type: SEQUENCE; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE dwh_torrecontrol.tdc_tch_estado_pedidos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME dwh_torrecontrol.tdc_tch_estado_pedidos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: tdc_cat_estados_devolucion_pedido; Type: TABLE DATA; Schema: dwh_torrecontrol; Owner: postgres
--

COPY dwh_torrecontrol.tdc_cat_estados_devolucion_pedido (md_uuid, md_date, id, cod_estado_devolucion, des_estado_devolucion) FROM stdin;
1	2022-11-16 11:42:00	2	A	Aceptada
2	2022-11-16 11:43:00	3	R	Rechazada
3	2022-11-16 11:43:00	4	D1	Devolución en almacén
4	2022-11-16 11:43:00	5	D2	Devolución finalizada
\.


--
-- Data for Name: tdc_cat_estados_envio_pedido; Type: TABLE DATA; Schema: dwh_torrecontrol; Owner: postgres
--

COPY dwh_torrecontrol.tdc_cat_estados_envio_pedido (md_uuid, md_date, id, cod_estado_envio, des_estado_envio) FROM stdin;
1	2022-11-16 11:36:00	2	S1	Solicitado
2	2022-11-16 11:36:00	3	R1	Registrado en almacén
3	2022-11-16 11:37:00	4	P1	En preparación
4	2022-11-16 11:37:00	5	E1	Enviado completo
5	2022-11-16 11:38:00	6	E2	Enviado parcial
6	2022-11-16 11:38:00	7	D	Devuelto
7	2022-11-16 11:39:00	8	R	Recibido en farmacia
\.


--
-- Data for Name: tdc_cat_estados_pago_pedido; Type: TABLE DATA; Schema: dwh_torrecontrol; Owner: postgres
--

COPY dwh_torrecontrol.tdc_cat_estados_pago_pedido (md_uuid, md_date, id, cod_estado_pago, des_estado_pago) FROM stdin;
1	2022-11-16 11:40:00	2	E1	Emitido factura
2	2022-11-16 11:40:00	3	P1	Pagado
3	2022-11-16 11:40:00	4	P2	Pago fraccionado
4	2022-11-16 11:41:00	5	R	Rechazado
5	2022-11-16 11:41:00	6	D1	Emisión cancelación
6	2022-11-16 11:42:00	7	D2	Pago devuelto
\.


--
-- Data for Name: tdc_cat_lineas_distribucion; Type: TABLE DATA; Schema: dwh_torrecontrol; Owner: postgres
--

COPY dwh_torrecontrol.tdc_cat_lineas_distribucion (md_uuid, md_date, id, cod_linea, cod_provincia, cod_municipio, cod_barrio) FROM stdin;
1	2022-11-16 11:29:00	2	1	SEV	SEV	AMA
2	2022-11-16 11:35:00	3	2	SEV	SEV	NER
\.


--
-- Data for Name: tdc_tch_estado_pedidos; Type: TABLE DATA; Schema: dwh_torrecontrol; Owner: postgres
--

COPY dwh_torrecontrol.tdc_tch_estado_pedidos (md_uuid, md_date, id, cod_estado_envio, cod_estado_pago, cod_estado_devolucion, cod_pedido, cod_linea) FROM stdin;
\.


--
-- Name: tdc_cat_estados_devolucion_pedido_id_seq; Type: SEQUENCE SET; Schema: dwh_torrecontrol; Owner: postgres
--

SELECT pg_catalog.setval('dwh_torrecontrol.tdc_cat_estados_devolucion_pedido_id_seq', 5, true);


--
-- Name: tdc_cat_estados_envio_pedido_id_seq; Type: SEQUENCE SET; Schema: dwh_torrecontrol; Owner: postgres
--

SELECT pg_catalog.setval('dwh_torrecontrol.tdc_cat_estados_envio_pedido_id_seq', 8, true);


--
-- Name: tdc_cat_estados_pago_pedido_id_seq; Type: SEQUENCE SET; Schema: dwh_torrecontrol; Owner: postgres
--

SELECT pg_catalog.setval('dwh_torrecontrol.tdc_cat_estados_pago_pedido_id_seq', 7, true);


--
-- Name: tdc_cat_lineas_distribucion_id_seq; Type: SEQUENCE SET; Schema: dwh_torrecontrol; Owner: postgres
--

SELECT pg_catalog.setval('dwh_torrecontrol.tdc_cat_lineas_distribucion_id_seq', 3, true);


--
-- Name: tdc_tch_estado_pedidos_id_seq; Type: SEQUENCE SET; Schema: dwh_torrecontrol; Owner: postgres
--

SELECT pg_catalog.setval('dwh_torrecontrol.tdc_tch_estado_pedidos_id_seq', 1, false);


--
-- Name: tdc_cat_estados_devolucion_pedido tdc_cat_estados_devolucion_pedido_cod_estado_devolucion_key; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_devolucion_pedido
    ADD CONSTRAINT tdc_cat_estados_devolucion_pedido_cod_estado_devolucion_key UNIQUE (cod_estado_devolucion);


--
-- Name: tdc_cat_estados_devolucion_pedido tdc_cat_estados_devolucion_pedido_pkey; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_devolucion_pedido
    ADD CONSTRAINT tdc_cat_estados_devolucion_pedido_pkey PRIMARY KEY (md_uuid);


--
-- Name: tdc_cat_estados_envio_pedido tdc_cat_estados_envio_pedido_cod_estado_envio_key; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_envio_pedido
    ADD CONSTRAINT tdc_cat_estados_envio_pedido_cod_estado_envio_key UNIQUE (cod_estado_envio);


--
-- Name: tdc_cat_estados_envio_pedido tdc_cat_estados_envio_pedido_pkey; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_envio_pedido
    ADD CONSTRAINT tdc_cat_estados_envio_pedido_pkey PRIMARY KEY (md_uuid);


--
-- Name: tdc_cat_estados_pago_pedido tdc_cat_estados_pago_pedido_cod_estado_pago_key; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_pago_pedido
    ADD CONSTRAINT tdc_cat_estados_pago_pedido_cod_estado_pago_key UNIQUE (cod_estado_pago);


--
-- Name: tdc_cat_estados_pago_pedido tdc_cat_estados_pago_pedido_pkey; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_estados_pago_pedido
    ADD CONSTRAINT tdc_cat_estados_pago_pedido_pkey PRIMARY KEY (md_uuid);


--
-- Name: tdc_cat_lineas_distribucion tdc_cat_lineas_distribucion_cod_linea_key; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_lineas_distribucion
    ADD CONSTRAINT tdc_cat_lineas_distribucion_cod_linea_key UNIQUE (cod_linea);


--
-- Name: tdc_cat_lineas_distribucion tdc_cat_lineas_distribucion_pkey; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_cat_lineas_distribucion
    ADD CONSTRAINT tdc_cat_lineas_distribucion_pkey PRIMARY KEY (md_uuid);


--
-- Name: tdc_tch_estado_pedidos tdc_tch_estado_pedidos_pkey; Type: CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_tch_estado_pedidos
    ADD CONSTRAINT tdc_tch_estado_pedidos_pkey PRIMARY KEY (md_uuid);


--
-- Name: tdc_tch_estado_pedidos tdc_tch_estado_pedidos_cod_estado_envio_fkey; Type: FK CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_tch_estado_pedidos
    ADD CONSTRAINT tdc_tch_estado_pedidos_cod_estado_envio_fkey FOREIGN KEY (cod_estado_envio) REFERENCES dwh_torrecontrol.tdc_cat_estados_envio_pedido(cod_estado_envio) NOT VALID;


--
-- Name: tdc_tch_estado_pedidos tdc_tch_estado_pedidos_cod_estado_pago_fkey; Type: FK CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_tch_estado_pedidos
    ADD CONSTRAINT tdc_tch_estado_pedidos_cod_estado_pago_fkey FOREIGN KEY (cod_estado_pago) REFERENCES dwh_torrecontrol.tdc_cat_estados_pago_pedido(cod_estado_pago) NOT VALID;


--
-- Name: tdc_tch_estado_pedidos tdc_tch_estado_pedidos_cod_linea_fkey; Type: FK CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_tch_estado_pedidos
    ADD CONSTRAINT tdc_tch_estado_pedidos_cod_linea_fkey FOREIGN KEY (cod_linea) REFERENCES dwh_torrecontrol.tdc_cat_lineas_distribucion(cod_linea) NOT VALID;


--
-- Name: tdc_tch_estado_pedidos tdc_tch_estado_pedidos_fkey; Type: FK CONSTRAINT; Schema: dwh_torrecontrol; Owner: postgres
--

ALTER TABLE ONLY dwh_torrecontrol.tdc_tch_estado_pedidos
    ADD CONSTRAINT tdc_tch_estado_pedidos_fkey FOREIGN KEY (cod_estado_devolucion) REFERENCES dwh_torrecontrol.tdc_cat_estados_devolucion_pedido(cod_estado_devolucion) NOT VALID;


--
-- PostgreSQL database dump complete
--

