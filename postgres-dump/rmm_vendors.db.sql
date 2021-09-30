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
-- Name: rmm_vendor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_vendor (
    rmm_vendor_id integer NOT NULL,
    v_type character varying(100),
    v_status character varying(100),
    v_number character varying(100),
    v_name character varying(1000),
    v_email_addr character varying(500),
    v_addr_line1 character varying(500),
    v_addr_line2 character varying(500),
    v_addr_city character varying(500),
    v_addr_state character varying(3),
    v_addr_zip character varying(10),
    v_payterm_discount numeric,
    v_payterm_net_date date,
    v_payterm_net_days numeric,
    v_add_user_id character varying(500),
    v_add_date date,
    v_mtc_user_id character varying(500),
    v_mtc_date date,
    v_order_method character varying(100),
    v_cadcam character(1),
    v_requires_srsp character(1),
    v_requires_kimberly character(1),
    v_send_flip_file character(1)
);


ALTER TABLE public.rmm_vendor OWNER TO postgres;

--
-- Name: rmm_vendor_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_vendor_file (
    rmm_vendor_file_id integer NOT NULL,
    vf_checksum character varying(100),
    vf_filename character varying(500),
    vf_vendor_name character varying(500),
    vf_doc_type character varying(100),
    vf_status character varying(100),
    vf_num_exceptions integer,
    vf_num_invalid_docs integer,
    vf_num_valid_docs integer,
    vf_file_set integer,
    vf_date_processed date,
    vf_file_id integer,
    vf_active character(1),
    vf_message character varying(4000),
    vf_add_user_id character varying(500),
    vf_add_date date,
    vf_mtc_user_id character varying(500),
    vf_mtc_date date
);


ALTER TABLE public.rmm_vendor_file OWNER TO postgres;

--
-- Name: rmm_vendor_file_rmm_vendor_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_vendor_file_rmm_vendor_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_vendor_file_rmm_vendor_file_id_seq OWNER TO postgres;

--
-- Name: rmm_vendor_file_rmm_vendor_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_vendor_file_rmm_vendor_file_id_seq OWNED BY public.rmm_vendor_file.rmm_vendor_file_id;


--
-- Name: rmm_vendor_ftp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_vendor_ftp (
    rmm_vendor_ftp_id integer NOT NULL,
    rmm_vendor_id numeric,
    vftp_vendor_name character varying(50),
    vftp_param1 character varying(50),
    vftp_param2 character varying(50),
    vftp_param3 character varying(50),
    vftp_active character(1),
    vftp_validated character(1),
    vftp_check_flags_only character(1),
    vftp_transaction_id integer,
    vftp_add_user_id character varying(500),
    vftp_add_date date,
    vftp_mtc_user_id character varying(500),
    vftp_mtc_date date
);


ALTER TABLE public.rmm_vendor_ftp OWNER TO postgres;

--
-- Name: rmm_vendor_ftp_rmm_vendor_ftp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_vendor_ftp_rmm_vendor_ftp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_vendor_ftp_rmm_vendor_ftp_id_seq OWNER TO postgres;

--
-- Name: rmm_vendor_ftp_rmm_vendor_ftp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_vendor_ftp_rmm_vendor_ftp_id_seq OWNED BY public.rmm_vendor_ftp.rmm_vendor_ftp_id;


--
-- Name: rmm_vendor_invoice_error; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_vendor_invoice_error (
    rmm_vendor_invoice_error_id integer NOT NULL,
    rmm_order_id integer,
    rmm_invoice_id integer,
    vie_amount numeric,
    vie_color character varying(100),
    vie_cut character varying(100),
    vie_category character varying(1000),
    vie_description character varying(1000),
    vie_error character(1),
    vie_invoice_number integer,
    vie_line_number integer,
    vie_message character varying(4000),
    vie_po_date date,
    vie_po_number integer,
    vie_processed character(1),
    vie_quality character varying(100),
    vie_quantity integer,
    vie_series character varying(500),
    vie_shape character varying(200),
    vie_ship_date date,
    vie_shop_number integer,
    vie_size_ct character varying(200),
    vie_sku character varying(200),
    vie_sterling_category character varying(200),
    vie_type character varying(200),
    vie_uniqueness character varying(200),
    vie_unit_cost numeric,
    vie_uom character varying(100),
    vie_vendor_name character varying(500),
    vie_vendor_number integer,
    vie_add_user_id character varying(500),
    vie_add_date date,
    vie_mtc_user_id character varying(500),
    vie_mtc_date date
);


ALTER TABLE public.rmm_vendor_invoice_error OWNER TO postgres;

--
-- Name: rmm_vendor_invoice_error_rmm_vendor_invoice_error_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_vendor_invoice_error_rmm_vendor_invoice_error_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_vendor_invoice_error_rmm_vendor_invoice_error_id_seq OWNER TO postgres;

--
-- Name: rmm_vendor_invoice_error_rmm_vendor_invoice_error_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_vendor_invoice_error_rmm_vendor_invoice_error_id_seq OWNED BY public.rmm_vendor_invoice_error.rmm_vendor_invoice_error_id;


--
-- Name: rmm_vendor_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_vendor_order (
    rmm_vendor_order_id integer NOT NULL,
    rmm_product_id integer,
    rmm_order_id integer,
    rmm_order_line_item_id integer,
    vo_vendor_name character varying(500),
    vo_vendor_number integer,
    vo_po_number character varying(100),
    vo_line_number integer,
    vo_shop_number integer,
    vo_po_date date,
    vo_description character varying(2000),
    vo_description2 character varying(2000),
    vo_type character varying(100),
    vo_quantity integer,
    vo_category character varying(500),
    vo_sku character varying(100),
    vo_series character varying(200),
    vo_quality character varying(100),
    vo_size_ct character varying(100),
    vo_size_mm character varying(100),
    vo_shape character varying(100),
    vo_color character varying(100),
    vo_cut character varying(100),
    vo_processed character(1),
    vo_error character(1),
    vo_message character varying(4000),
    vo_add_user_id character varying(500),
    vo_add_date date,
    vo_mtc_user_id character varying(500),
    vo_mtc_date date
);


ALTER TABLE public.rmm_vendor_order OWNER TO postgres;

--
-- Name: rmm_vendor_order_rmm_vendor_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_vendor_order_rmm_vendor_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_vendor_order_rmm_vendor_order_id_seq OWNER TO postgres;

--
-- Name: rmm_vendor_order_rmm_vendor_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_vendor_order_rmm_vendor_order_id_seq OWNED BY public.rmm_vendor_order.rmm_vendor_order_id;


--
-- Name: rmm_vendor_rmm_vendor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_vendor_rmm_vendor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_vendor_rmm_vendor_id_seq OWNER TO postgres;

--
-- Name: rmm_vendor_rmm_vendor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_vendor_rmm_vendor_id_seq OWNED BY public.rmm_vendor.rmm_vendor_id;


--
-- Name: rmm_vendor rmm_vendor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_vendor ALTER COLUMN rmm_vendor_id SET DEFAULT nextval('public.rmm_vendor_rmm_vendor_id_seq'::regclass);


--
-- Name: rmm_vendor_file rmm_vendor_file_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_vendor_file ALTER COLUMN rmm_vendor_file_id SET DEFAULT nextval('public.rmm_vendor_file_rmm_vendor_file_id_seq'::regclass);


--
-- Name: rmm_vendor_ftp rmm_vendor_ftp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_vendor_ftp ALTER COLUMN rmm_vendor_ftp_id SET DEFAULT nextval('public.rmm_vendor_ftp_rmm_vendor_ftp_id_seq'::regclass);


--
-- Name: rmm_vendor_invoice_error rmm_vendor_invoice_error_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_vendor_invoice_error ALTER COLUMN rmm_vendor_invoice_error_id SET DEFAULT nextval('public.rmm_vendor_invoice_error_rmm_vendor_invoice_error_id_seq'::regclass);


--
-- Name: rmm_vendor_order rmm_vendor_order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_vendor_order ALTER COLUMN rmm_vendor_order_id SET DEFAULT nextval('public.rmm_vendor_order_rmm_vendor_order_id_seq'::regclass);


--
-- Data for Name: rmm_vendor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_vendor (rmm_vendor_id, v_type, v_status, v_number, v_name, v_email_addr, v_addr_line1, v_addr_line2, v_addr_city, v_addr_state, v_addr_zip, v_payterm_discount, v_payterm_net_date, v_payterm_net_days, v_add_user_id, v_add_date, v_mtc_user_id, v_mtc_date, v_order_method, v_cadcam, v_requires_srsp, v_requires_kimberly, v_send_flip_file) FROM stdin;
29	VENDOR	ACTIVE	503470000	ROSECO INC	\N	13740 OMEGA ROAD	\N	DALLAS	TX	75244	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
30	VENDOR	ACTIVE	512003000	HERSCHLAG INC.	\N	41 WEST 47TH STREET	\N	NEW YORK	NY	10036	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
31	VENDOR	ACTIVE	706522000	MAJESTIC SETTINGS INC.	\N	P.O. BOX 246	\N	KENILWORTH	NJ	07033	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
32	VENDOR	ACTIVE	508115000	RIO GRANDE	\N	THE BELL GROUP	PO BOX 12277	ALBUQUERQUE	NM	87195	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
33	VENDOR	ACTIVE	612873000	LAB SAFETY SUPPLY INC	\N	ACCOUNT #5301910	P.O. BOX 5004	JANESVILLE	WI	53547	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
34	VENDOR	ACTIVE	509788000	CADSMITHING	\N	1324 NORTH FARRELL COURT	SUITE 112	GILBERT	AZ	85233	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
35	VENDOR	ACTIVE	506715000	PAUL H GESSWEIN & CO INC	\N	PO BOX 3998	255 HANCOCK AVE.	BRIDGEPORT	CT	06605	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
36	VENDOR	ACTIVE	509798000	G.M. CASTING HOUSE INC.	\N	5 SOUTH WABASH	SUITE 614	CHICAGO	IL	60603	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
37	VENDOR	ACTIVE	731278000	YACOUBIAN BROTHERS	\N	2 WEST 45TH STREET	SUITE 1104	NEW YORK	NY	10036	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
38	VENDOR	ACTIVE	682238000	SOSSNER STEEL STAMPS INC	\N	SOSSNER J. FRIEDMAN	180 JUDGE DON LEWIS BLVD.	ELIZABETHTON	TN	37643	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
39	VENDOR	ACTIVE	730102000	FREMADA GOLD INC	\N	2 WEST 45TH STREET	SUITE 1605	NEW YORK	NY	10036	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
40	VENDOR	ACTIVE	730534000	OPULENT MINERALS LLC	\N	580 5TH AVENUE	SUITE 1706	NEW YORK	NY	10036	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
41	VENDOR	ACTIVE	616767000	ARCET EQUIPMENT COMPANY	\N	P.O. BOX 11358	\N	NORFOLK	VA	23517	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
42	VENDOR	ACTIVE	619278000	MATHESON TRI-GAS	\N	PO BOX 845502	\N	DALLAS	TX	75284	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
43	VENDOR	ACTIVE	601494000	NEXAIR	\N	P O BOX 125	\N	MEMPHIS	TN	38101	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
44	VENDOR	ACTIVE	480653000	FEDEX KINKO'S	\N	P.O. BOX 672085	\N	DALLAS	TX	75267	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
45	VENDOR	ACTIVE	618868000	DS WATERS OF AMERICA, INC.	\N	PO BOX 660579	\N	DALLAS	TX	75266	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
46	VENDOR	ACTIVE	504101000	VALLEY NATIONAL GASES INC.	\N	P.O. BOX 6378	\N	WHEELING	WV	26003	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
47	VENDOR	ACTIVE	615141000	HAUN WELDING SUPPLY	\N	5921 COURT STREET RD.	\N	SYRACUSE	NY	13206	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
48	VENDOR	ACTIVE	601808000	QUIMBY CORP	\N	3030 N.W. 29TH AVENUE	\N	PORTLAND	OR	97210	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
49	VENDOR	ACTIVE	603527000	MACHINE & WELDING SUPPLY CO.	\N	P.O. BOX 1708	\N	DUNN	NC	28335	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
50	VENDOR	ACTIVE	505000000	OVERNIGHT MOUNTINGS	\N	1400 Plaza Avenue	\N	New Hyde Park	NY	11040	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
51	VENDOR	ACTIVE	509093000	ROFIN-BAASEL, INC.	\N	P.O. BOX 415551	\N	BOSTON	MA	02241	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
52	VENDOR	ACTIVE	604539000	AIRGAS NATIONAL WELDERS	\N	P.O. BOX 601985	\N	CHARLOTTE	NC	28260	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
53	VENDOR	ACTIVE	510559000	PRAXAIR DISTRIBUTION S.E.	\N	PO BOX 121222	\N	DALLAS	TX	75312	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
54	VENDOR	ACTIVE	617642000	PURITY CYLINDER GASES INC	\N	P.O. BOX 9390	\N	GRAND RAPIDS	MI	49509	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
55	VENDOR	ACTIVE	512696000	GRAVOGRAPH-NEW HERME	\N	PO BOX 934020	\N	ATLANTA	GA	31193	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
56	VENDOR	ACTIVE	604430000	GRAINGER INC	\N	DEPT 823908918	\N	PALATINE	IL	60038	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
57	VENDOR	ACTIVE	500699000	SOUTHEASTERN FINDINGS	\N	1733 MONTREAL CIRCLE	\N	TUCKER	GA	30084	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
58	VENDOR	ACTIVE	\N	Tree Farm Inc.	\N	1504 Vista Club Circle	\N	Santa Clara	CA	95054	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
59	VENDOR	ACTIVE	\N	Seed Farm Inc.	\N	59 West St	\N	Seymour	CT	06455	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
60	VENDOR	ACTIVE	\N	Patio Fun, Inc.	\N	50 Avenue B	\N	New York	NY	10009	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
61	VENDOR	ACTIVE	\N	GardenUser BP	\N	111 W St John St	\N	San Jose	CA	95113	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
62	VENDOR	ACTIVE	\N	GardenAdmin BP	\N	554 E Middlefield Rd	\N	Mountain View	CA	94043	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
63	VENDOR	ACTIVE	\N	Tree Farm Inc.	\N	100 Melbourne Way	\N	Melbourne	VIC	\N	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
64	VENDOR	ACTIVE	504312000	UNITED PRECIOUS METAL REFINING	\N	2781 TOWNLINE RD.	\N	ALDEN	NY	14004	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
65	VENDOR	ACTIVE	SIMS	SIMS - Sterling	\N	375 Ghent Rd	\N	AKRON	OH	44333	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
66	VENDOR	ACTIVE	703843000	JOSEPH FALKENSTEIN, INC.	\N	21 COGGINS LANE	\N	WEST ORANGE	NJ	07052	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
67	VENDOR	ACTIVE	500037000	NOBLE GIFT PACKAGING	\N	20 SAND PARK RD	\N	CEDAR GROVE	NJ	7009	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
68	VENDOR	ACTIVE	701931000	TESSLER & WEISS, INC.	\N	2389 VAUX HALL RD	\N	UNION	NJ	7083	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
69	VENDOR	ACTIVE	605614000	MAINE OXY-ACETYLENE SUPPLY CO.	\N	22 ALBISTON WAY	\N	AUBURN	ME	4210	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
70	VENDOR	ACTIVE	706522000	MAJESTIC SETTINGS INC.	\N	P.O. BOX 246	\N	KENILWORTH	NJ	7033	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
71	VENDOR	ACTIVE	508115000	RIO GRANDE	\N	THE BELL GROUP	PO BOX 12277	ALBUQUERQUE	NM	87195	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
72	VENDOR	ACTIVE	506715000	PAUL H GESSWEIN & CO INC	\N	PO BOX 3998	255 HANCOCK AVE.	BRIDGEPORT	CT	6605	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
73	VENDOR	ACTIVE	616767000	ARCET EQUIPMENT COMPANY	\N	P.O. BOX 11358	\N	NORFOLK	VA	23517	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
74	VENDOR	ACTIVE	601494000	NEXAIR	\N	P O BOX 125	\N	MEMPHIS	TN	38101	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
75	VENDOR	ACTIVE	618868000	DS WATERS OF AMERICA, INC.	\N	PO BOX 660579	\N	DALLAS	TX	75266	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
76	VENDOR	ACTIVE	604430000	GRAINGER INC	\N	DEPT 823908918	\N	PALATINE	IL	60038	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
77	VENDOR	ACTIVE	509093000	ROFIN-BAASEL, INC.	\N	P.O. BOX 415551	\N	BOSTON	MA	2241	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
78	VENDOR	ACTIVE	504101000	VALLEY NATIONAL GASES INC.	\N	P.O. BOX 6378	\N	WHEELING	WV	26003	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
79	VENDOR	ACTIVE	617642000	PURITY CYLINDER GASES INC	\N	P.O. BOX 9390	\N	GRAND RAPIDS	MI	49509	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
80	VENDOR	ACTIVE	\N	APEmail	\N	375 Ghent Rd	\N	AKRON	OH	44333	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
1	VENDOR	ACTIVE	618884000	JANESVILLE TOOL &MANUFACTURING	\N	1352 E HIGH STREET	\N	MILTON	WI	53563	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
2	VENDOR	ACTIVE	704550000	STULLER, INC.	\N	PO BOX 87777	\N	LAFAYETTE	LA	70598	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
3	VENDOR	ACTIVE	670001000	COMP-AIR OHIO	\N	9841 YORK-THETA DRIVE	\N	NORTH ROYALTON	OH	44133	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
4	VENDOR	ACTIVE	615797000	DISTILLATA COMPANY	\N	1608 EAST 24TH ST	\N	CLEVELAND	OH	44114	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
5	VENDOR	ACTIVE	552140000	HOLSTON GASES	\N	1105 STUART ST	\N	CHATTANOOGA	TN	37406	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
6	VENDOR	ACTIVE	502404000	I KASSOY INC.	\N	101 COMMERCIAL STREET, STE 200	\N	PLAINVIEW	NY	11803	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
7	VENDOR	ACTIVE	605385000	ROBERTS OXYGEN COMPANY INC	\N	PO BOX 5507	\N	ROCKVILLE	MD	20855	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
8	VENDOR	ACTIVE	619611000	LIBERTY SOLVENTS AND CHEM CO	\N	9429 RAVENNA RD	\N	TWINSBURG	OH	44087	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
9	VENDOR	ACTIVE	602680000	NEVADA COMPRESSED GAS	\N	1820 S WESTERN AVE	\N	LAS VEGAS	NV	89102	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
10	VENDOR	ACTIVE	703843000	JOSEPH FALKENSTEIN, INC.	\N	21 COGGINS LANE	\N	WEST ORANGE	NJ	07052	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
81	VENDOR	ACTIVE	500438000	Legor Group USA Inc.	\N	31-00 47th Ave.	5th Floor	Long Island City	NY	11101	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
11	VENDOR	ACTIVE	591000000	ASTRORANGER INDUSTRI	\N	3234 S.CLEVELAND-MASSILLION RD	\N	NORTON	OH	44203	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
12	VENDOR	ACTIVE	616976000	ULINE	\N	2200 S LAKESIDE DR	\N	WAUKEGAN	IL	60085	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
13	VENDOR	ACTIVE	512022000	TOLL GAS & WELDING SUPPLY	\N	3005 NIAGARA LANE N.	\N	PLYMOUTH	MN	55447	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
14	VENDOR	ACTIVE	502103000	THE JEWELRY EQUIPMENT DOCTOR	\N	1626 KINGS ROW ROAD	\N	BONNERS FERRY	ID	83805	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
15	VENDOR	ACTIVE	690643000	CARDINAL SAFETY PRODUCTS INC	\N	180 EAST MILLER AVENUE	\N	AKRON	OH	44301	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
16	VENDOR	ACTIVE	500758000	JEWEL CRAFT	\N	4122 OLYMPIC BLVD.	\N	ERLANGER	KY	41018	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
17	VENDOR	ACTIVE	513223000	WELDER SERVICE INC.	\N	101 ARCO DRIVE	\N	TOLEDO	OH	43607	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
18	VENDOR	ACTIVE	506487000	DELILLE OXYGEN CO.	\N	PO BOX 7809	\N	COLUMBUS	OH	43207	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
19	VENDOR	ACTIVE	507498000	COHLER ENTERPRISES	\N	101 NORTH HAVEN STREET	\N	BALTIMORE	MD	21224	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
20	VENDOR	ACTIVE	620192000	NORCO, INC	\N	PO BOX 15299	\N	BOISE	ID	83715	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
21	VENDOR	ACTIVE	605614000	MAINE OXY-ACETYLENE SUPPLY CO.	\N	22 ALBISTON WAY	\N	AUBURN	ME	04210	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
22	VENDOR	ACTIVE	507172000	DRS	\N	64 West 48th Street	Suite 1302	NEW YORK	NY	10036	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
23	VENDOR	ACTIVE	706867000	EMKAY INTERNATIONAL INS	\N	48 W. 48TH ST	\N	NEW YORK	NY	10036	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
24	VENDOR	ACTIVE	505010000	ALPHA TOOL & DIE CO.	\N	7 WEST 45TH STREET	\N	NEW YORK	NY	10036	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
25	VENDOR	ACTIVE	680837000	FANTAPAK INTERNATION	\N	1901 STEPHENSON HWY	\N	TROY	MI	48083	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
26	VENDOR	ACTIVE	701931000	TESSLER & WEISS, INC.	\N	2389 VAUX HALL RD	\N	UNION	NJ	07083	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
27	VENDOR	ACTIVE	732592000	CLYDE DUNEIER, INC. (NEIL LANE	\N	415 MADISON AVENUE	\N	NEW YORK	NY	10017	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
28	VENDOR	ACTIVE	500037000	NOBLE GIFT PACKAGING	\N	20 SAND PARK RD	\N	CEDAR GROVE	NJ	07009	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
82	VENDOR	ACTIVE	SJIM	SJIM - Import	\N	Logan Pkwy	\N	Akron	OH	\N	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
83	VENDOR	ACTIVE	\N	SELECT JEWELRY INC.	\N	47-28 37TH STREET	3RD FLOOR	LONG ISLAND CITY	NY	11101	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
84	VENDOR	ACTIVE	730315000	National Chain Group	\N	 55 Access Rd	\N	Warwick	RI	02886	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
85	VENDOR	ACTIVE	570004000	MIKE`S UNLIMITED CORP	\N	635 S. HILL ST.	#601	LOS ANGELES	CA	90014	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
86	VENDOR	ACTIVE	732541000	A&I, Inc	\N	7242 Valjean Ave	\N	Van Nuys	CA	91406	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
87	VENDOR	ACTIVE	570009000	RHODOMET INC	\N	1645 MCDONALD AVE	\N	BROOKLYN	NY	11230	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
88	VENDOR	ACTIVE	731475000	Levian	\N	185 Great Neck Road	Suite 240	Great Neck	NY	11021	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
89	VENDOR	ACTIVE	732370000	TROPICAL CREATIONS MFG. INC.	\N	650 IWILEI RD	SUITE 102	HONOLULU	HI	96817	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
90	VENDOR	ACTIVE	532209000	M & G Jewelers, Inc.	\N	10823 Edison Court	\N	Rancho Cucamonga	CA	91730	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
91	VENDOR	ACTIVE	685425000	Global Equipment	\N	 Harbor Park Drive	\N	Port Washinton	NY	11050	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
92	VENDOR	ACTIVE	680164000	Adjustable Ring System	\N	70 Pennington Drive Suite 16F	\N	Bluffton	SC	29910	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
93	VENDOR	ACTIVE	510000000	UNIQUE SETTINGS OF NY	\N	3100 47th Avenue	2nd Floor	Long Island City	NY	11101	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
94	VENDOR	ACTIVE	622238000	TECHNOLOGY WITHOUT LIMITS	\N	57 Service Rd	\N	West Warwick	RI	02893	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
95	VENDOR	ACTIVE	706920000	Star Struck	\N	 F.J. Clarke Circle	\N	Bethel	CT	06801	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
96	VENDOR	ACTIVE	999999999	Signet Diamond Room	\N	375 Ghent Rd	DC	Akron	OH	44333	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
97	VENDOR	ACTIVE	2341234213	ABC	\N	ggqertt	\N	ertewrt	CA	\N	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
98	VENDOR	ACTIVE	8723648723	Melissa Test	\N	werwerw	\N	\N	CA	\N	0	\N	\N	SYSTEM	2021-08-20	SYSTEM	2021-08-20	\N	\N	N	N	N
\.


--
-- Data for Name: rmm_vendor_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_vendor_file (rmm_vendor_file_id, vf_checksum, vf_filename, vf_vendor_name, vf_doc_type, vf_status, vf_num_exceptions, vf_num_invalid_docs, vf_num_valid_docs, vf_file_set, vf_date_processed, vf_file_id, vf_active, vf_message, vf_add_user_id, vf_add_date, vf_mtc_user_id, vf_mtc_date) FROM stdin;
\.


--
-- Data for Name: rmm_vendor_ftp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_vendor_ftp (rmm_vendor_ftp_id, rmm_vendor_id, vftp_vendor_name, vftp_param1, vftp_param2, vftp_param3, vftp_active, vftp_validated, vftp_check_flags_only, vftp_transaction_id, vftp_add_user_id, vftp_add_date, vftp_mtc_user_id, vftp_mtc_date) FROM stdin;
\.


--
-- Data for Name: rmm_vendor_invoice_error; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_vendor_invoice_error (rmm_vendor_invoice_error_id, rmm_order_id, rmm_invoice_id, vie_amount, vie_color, vie_cut, vie_category, vie_description, vie_error, vie_invoice_number, vie_line_number, vie_message, vie_po_date, vie_po_number, vie_processed, vie_quality, vie_quantity, vie_series, vie_shape, vie_ship_date, vie_shop_number, vie_size_ct, vie_sku, vie_sterling_category, vie_type, vie_uniqueness, vie_unit_cost, vie_uom, vie_vendor_name, vie_vendor_number, vie_add_user_id, vie_add_date, vie_mtc_user_id, vie_mtc_date) FROM stdin;
\.


--
-- Data for Name: rmm_vendor_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_vendor_order (rmm_vendor_order_id, rmm_product_id, rmm_order_id, rmm_order_line_item_id, vo_vendor_name, vo_vendor_number, vo_po_number, vo_line_number, vo_shop_number, vo_po_date, vo_description, vo_description2, vo_type, vo_quantity, vo_category, vo_sku, vo_series, vo_quality, vo_size_ct, vo_size_mm, vo_shape, vo_color, vo_cut, vo_processed, vo_error, vo_message, vo_add_user_id, vo_add_date, vo_mtc_user_id, vo_mtc_date) FROM stdin;
\.


--
-- Name: rmm_vendor_file_rmm_vendor_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_vendor_file_rmm_vendor_file_id_seq', 1, false);


--
-- Name: rmm_vendor_ftp_rmm_vendor_ftp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_vendor_ftp_rmm_vendor_ftp_id_seq', 1, false);


--
-- Name: rmm_vendor_invoice_error_rmm_vendor_invoice_error_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_vendor_invoice_error_rmm_vendor_invoice_error_id_seq', 1, false);


--
-- Name: rmm_vendor_order_rmm_vendor_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_vendor_order_rmm_vendor_order_id_seq', 1, false);


--
-- Name: rmm_vendor_rmm_vendor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_vendor_rmm_vendor_id_seq', 98, true);


--
-- Name: rmm_vendor rmm_vendor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_vendor
    ADD CONSTRAINT rmm_vendor_pkey PRIMARY KEY (rmm_vendor_id);


--
-- PostgreSQL database dump complete
--

