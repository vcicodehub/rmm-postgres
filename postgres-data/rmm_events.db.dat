--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Debian 13.4-1.pgdg100+1)
-- Dumped by pg_dump version 13.4 (Debian 13.4-1.pgdg100+1)

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
-- Name: rmm_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_events (
    rmm_event_id integer NOT NULL,
    rmm_user_id character varying(500),
    e_date date,
    e_type character varying(500),
    e_type_id numeric,
    e_title character varying(500),
    e_description character varying(4000),
    e_add_user_id character varying(500),
    e_add_date date,
    e_mtc_user_id character varying(500),
    e_mtc_date date
);


ALTER TABLE public.rmm_events OWNER TO postgres;

--
-- Name: rmm_events_rmm_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_events_rmm_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_events_rmm_event_id_seq OWNER TO postgres;

--
-- Name: rmm_events_rmm_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_events_rmm_event_id_seq OWNED BY public.rmm_events.rmm_event_id;


--
-- Name: rmm_events rmm_event_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_events ALTER COLUMN rmm_event_id SET DEFAULT nextval('public.rmm_events_rmm_event_id_seq'::regclass);


--
-- Data for Name: rmm_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_events (rmm_event_id, rmm_user_id, e_date, e_type, e_type_id, e_title, e_description, e_add_user_id, e_add_date, e_mtc_user_id, e_mtc_date) FROM stdin;
\.


--
-- Name: rmm_events_rmm_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_events_rmm_event_id_seq', 1, false);


--
-- Name: rmm_events rmm_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_events
    ADD CONSTRAINT rmm_events_pkey PRIMARY KEY (rmm_event_id);


--
-- PostgreSQL database dump complete
--

