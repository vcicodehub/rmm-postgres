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
-- Name: rmm_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_role (
    rmm_role_id integer NOT NULL,
    ro_name character varying(500),
    ro_status character varying(100),
    ro_add_user_id character varying(500),
    ro_add_date date,
    ro_mtc_user_id character varying(500),
    ro_mtc_date date
);


ALTER TABLE public.rmm_role OWNER TO postgres;

--
-- Name: rmm_role_rmm_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_role_rmm_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_role_rmm_role_id_seq OWNER TO postgres;

--
-- Name: rmm_role_rmm_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_role_rmm_role_id_seq OWNED BY public.rmm_role.rmm_role_id;


--
-- Name: rmm_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_user (
    rmm_user_id character varying(500) NOT NULL,
    u_name character varying(500),
    u_password character varying(200),
    u_status character varying(100),
    u_add_user_id character varying(500),
    u_add_date date,
    u_mtc_user_id character varying(500),
    u_mtc_date date
);


ALTER TABLE public.rmm_user OWNER TO postgres;

--
-- Name: rmm_user_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_user_role (
    rmm_user_id character varying(500) NOT NULL,
    rmm_role_id integer NOT NULL,
    ur_value character varying(1000),
    ur_status character varying(100),
    ur_add_user_id character varying(500),
    ur_add_date date,
    ur_mtc_user_id character varying(500),
    ur_mtc_date date
);


ALTER TABLE public.rmm_user_role OWNER TO postgres;

--
-- Name: rmm_user_role_rmm_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_user_role_rmm_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_user_role_rmm_role_id_seq OWNER TO postgres;

--
-- Name: rmm_user_role_rmm_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_user_role_rmm_role_id_seq OWNED BY public.rmm_user_role.rmm_role_id;


--
-- Name: rmm_role rmm_role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_role ALTER COLUMN rmm_role_id SET DEFAULT nextval('public.rmm_role_rmm_role_id_seq'::regclass);


--
-- Name: rmm_user_role rmm_role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_user_role ALTER COLUMN rmm_role_id SET DEFAULT nextval('public.rmm_user_role_rmm_role_id_seq'::regclass);


--
-- Data for Name: rmm_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_role (rmm_role_id, ro_name, ro_status, ro_add_user_id, ro_add_date, ro_mtc_user_id, ro_mtc_date) FROM stdin;
1	ADMIN	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02
2	USER	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02
3	DM	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02
4	MANAGER	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02
5	CORPORATE	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02
\.


--
-- Data for Name: rmm_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_user (rmm_user_id, u_name, u_password, u_status, u_add_user_id, u_add_date, u_mtc_user_id, u_mtc_date) FROM stdin;
admin	Admin User	asdf	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02
user	User Account	asdf	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02
foo	User Account	asdf	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02
karl	Karl Account	asdf	ACTIVE	SYSTEM	2021-09-07	SYSTEM	2021-09-07
\.


--
-- Data for Name: rmm_user_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_user_role (rmm_user_id, rmm_role_id, ur_value, ur_status, ur_add_user_id, ur_add_date, ur_mtc_user_id, ur_mtc_date) FROM stdin;
admin	5	\N	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02
user	2	\N	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02
foo	2	\N	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02
karl	2	\N	ACTIVE	SYSTEM	2021-09-07	SYSTEM	2021-09-07
\.


--
-- Name: rmm_role_rmm_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_role_rmm_role_id_seq', 5, true);


--
-- Name: rmm_user_role_rmm_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_user_role_rmm_role_id_seq', 1, false);


--
-- Name: rmm_role rmm_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_role
    ADD CONSTRAINT rmm_role_pkey PRIMARY KEY (rmm_role_id);


--
-- Name: rmm_user rmm_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_user
    ADD CONSTRAINT rmm_user_pkey PRIMARY KEY (rmm_user_id);


--
-- Name: rmm_user_role rmm_user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_user_role
    ADD CONSTRAINT rmm_user_role_pkey PRIMARY KEY (rmm_user_id, rmm_role_id);


--
-- Name: rmm_user_role rmm_user_role_rmm_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_user_role
    ADD CONSTRAINT rmm_user_role_rmm_role_id_fkey FOREIGN KEY (rmm_role_id) REFERENCES public.rmm_role(rmm_role_id);


--
-- Name: rmm_user_role rmm_user_role_rmm_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_user_role
    ADD CONSTRAINT rmm_user_role_rmm_user_id_fkey FOREIGN KEY (rmm_user_id) REFERENCES public.rmm_user(rmm_user_id);


--
-- PostgreSQL database dump complete
--

