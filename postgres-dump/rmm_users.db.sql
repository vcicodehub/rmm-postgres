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
-- Name: rmm_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_permission (
    rmm_permission_id integer NOT NULL,
    p_name character varying(500),
    p_description character varying(1000),
    p_status character varying(100),
    p_add_user_id character varying(500),
    p_add_date date,
    p_mtc_user_id character varying(500),
    p_mtc_date date
);


ALTER TABLE public.rmm_permission OWNER TO postgres;

--
-- Name: rmm_permission_rmm_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_permission_rmm_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_permission_rmm_permission_id_seq OWNER TO postgres;

--
-- Name: rmm_permission_rmm_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_permission_rmm_permission_id_seq OWNED BY public.rmm_permission.rmm_permission_id;


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
    ro_mtc_date date,
    ro_description character varying(1000)
);


ALTER TABLE public.rmm_role OWNER TO postgres;

--
-- Name: rmm_role_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_role_permission (
    rmm_role_id integer,
    rmm_permission_id integer,
    rp_status character varying(100),
    rp_add_user_id character varying(500),
    rp_add_date date,
    rp_mtc_user_id character varying(500),
    rp_mtc_date date
);


ALTER TABLE public.rmm_role_permission OWNER TO postgres;

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
-- Name: rmm_permission rmm_permission_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_permission ALTER COLUMN rmm_permission_id SET DEFAULT nextval('public.rmm_permission_rmm_permission_id_seq'::regclass);


--
-- Name: rmm_role rmm_role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_role ALTER COLUMN rmm_role_id SET DEFAULT nextval('public.rmm_role_rmm_role_id_seq'::regclass);


--
-- Name: rmm_user_role rmm_role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_user_role ALTER COLUMN rmm_role_id SET DEFAULT nextval('public.rmm_user_role_rmm_role_id_seq'::regclass);


--
-- Data for Name: rmm_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_permission (rmm_permission_id, p_name, p_description, p_status, p_add_user_id, p_add_date, p_mtc_user_id, p_mtc_date) FROM stdin;
1	REQUEST_SUPPLIES	Request Supplies	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
2	RECEIVE_SUPPLIES	Receive Supplies	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
3	STONE_INVENTORY	Stone Inventory	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
4	MONTHLY_INVENTORY	Monthly Inventory	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
5	SHOP_TRANSFER_ORDERS	Shop Transfer Orders	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
6	MY_NOTICES	My Notices	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
\.


--
-- Data for Name: rmm_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_role (rmm_role_id, ro_name, ro_status, ro_add_user_id, ro_add_date, ro_mtc_user_id, ro_mtc_date, ro_description) FROM stdin;
1	ADMIN	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02	Administrator
2	USER	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02	User
3	DM	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02	District Manager
4	MANAGER	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02	Manager
5	CORPORATE	ACTIVE	SYSTEM	2021-09-02	SYSTEM	2021-09-02	Corporate User
\.


--
-- Data for Name: rmm_role_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_role_permission (rmm_role_id, rmm_permission_id, rp_status, rp_add_user_id, rp_add_date, rp_mtc_user_id, rp_mtc_date) FROM stdin;
1	1	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
1	2	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
1	3	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
1	4	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
1	5	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
1	6	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
4	1	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
4	2	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
4	3	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
4	4	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
4	5	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
4	6	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
5	1	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
5	2	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
5	3	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
5	4	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
5	5	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
5	6	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
2	1	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
2	2	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
3	4	ACTIVE	SYSTEM	2021-09-24	SYSTEM	2021-09-24
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
-- Name: rmm_permission_rmm_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_permission_rmm_permission_id_seq', 6, true);


--
-- Name: rmm_role_rmm_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_role_rmm_role_id_seq', 5, true);


--
-- Name: rmm_user_role_rmm_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_user_role_rmm_role_id_seq', 1, false);


--
-- Name: rmm_permission rmm_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_permission
    ADD CONSTRAINT rmm_permission_pkey PRIMARY KEY (rmm_permission_id);


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
-- Name: rmm_role_permission rmm_role_permission_rmm_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_role_permission
    ADD CONSTRAINT rmm_role_permission_rmm_permission_id_fkey FOREIGN KEY (rmm_permission_id) REFERENCES public.rmm_permission(rmm_permission_id);


--
-- Name: rmm_role_permission rmm_role_permission_rmm_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_role_permission
    ADD CONSTRAINT rmm_role_permission_rmm_role_id_fkey FOREIGN KEY (rmm_role_id) REFERENCES public.rmm_role(rmm_role_id);


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

