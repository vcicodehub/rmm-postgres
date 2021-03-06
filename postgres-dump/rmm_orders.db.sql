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
-- Name: rmm_inventory_report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_inventory_report (
    rmm_inventory_report_id integer NOT NULL,
    rmm_shop_id integer NOT NULL,
    ir_status character varying(100),
    ir_diamonds_cost numeric,
    ir_asst_dia_bags_cost numeric,
    ir_genuine_colored_cost numeric,
    ir_created_colored_cost numeric,
    ir_synthetic_colored_cost numeric,
    ir_pearls_cost numeric,
    "ir_gold_stock_10K_cost" numeric,
    "ir_gold_stock_10K_count" numeric,
    "ir_gold_stock_14K_cost" numeric,
    "ir_gold_stock_14K_count" numeric,
    "ir_gold_stock_18K_cost" numeric,
    "ir_gold_stock_18K_count" numeric,
    "ir_gold_solder_10K_cost" numeric,
    "ir_gold_solder_10K_count" numeric,
    "ir_gold_solder_14K_cost" numeric,
    "ir_gold_solder_14K_count" numeric,
    "ir_gold_solder_18K_cost" numeric,
    "ir_gold_solder_18K_count" numeric,
    "ir_gold_casting_grain_10K_cost" numeric,
    "ir_gold_casting_grain_10K_count" numeric,
    "ir_gold_casting_grain_14K_cost" numeric,
    "ir_gold_casting_grain_14K_count" numeric,
    "ir_gold_casting_grain_18K_cost" numeric,
    "ir_gold_casting_grain_18K_count" numeric,
    ir_platinum_stock_cost numeric,
    ir_platinum_stock_count numeric,
    ir_platinum_solder_cost numeric,
    ir_platinum_solder_count numeric,
    ir_gold_findings_cost numeric,
    ir_gold_findings_count numeric,
    ir_platinum_findings_cost numeric,
    ir_platinum_findings_count numeric,
    ir_silver_stock_cost numeric,
    ir_silver_stock_count numeric,
    ir_silver_solder_cost numeric,
    ir_silver_solder_count numeric,
    ir_silver_casting_grain_cost numeric,
    ir_silver_casting_grain_count numeric,
    ir_silver_findings_cost numeric,
    ir_silver_findings_count numeric,
    ir_total numeric,
    ir_completion_date date,
    ir_shop_approval_status character(1),
    ir_dm_approval_status character(1),
    ir_op_approval_status character(1),
    ir_run_date date,
    ir_variance_total numeric,
    ir_fiscal_mmyyyy character varying(6),
    ir_inv_total numeric,
    ir_previous_total numeric
);


ALTER TABLE public.rmm_inventory_report OWNER TO postgres;

--
-- Name: rmm_inventory_report_rmm_inventory_report_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_inventory_report_rmm_inventory_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_inventory_report_rmm_inventory_report_id_seq OWNER TO postgres;

--
-- Name: rmm_inventory_report_rmm_inventory_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_inventory_report_rmm_inventory_report_id_seq OWNED BY public.rmm_inventory_report.rmm_inventory_report_id;


--
-- Name: rmm_inventory_report_rmm_shop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_inventory_report_rmm_shop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_inventory_report_rmm_shop_id_seq OWNER TO postgres;

--
-- Name: rmm_inventory_report_rmm_shop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_inventory_report_rmm_shop_id_seq OWNED BY public.rmm_inventory_report.rmm_shop_id;


--
-- Name: rmm_invoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_invoice (
    rmm_invoice_id integer NOT NULL,
    rmm_order_id integer NOT NULL,
    i_number character varying(200),
    i_status character varying(200),
    i_date date,
    i_grand_total numeric,
    i_sent_to_sap character(1),
    i_sent_to_sap_date date,
    i_pay_to_sap character(1),
    i_add_user_id character varying(500),
    i_add_date date,
    i_mtc_user_id character varying(500),
    i_mtc_date date
);


ALTER TABLE public.rmm_invoice OWNER TO postgres;

--
-- Name: rmm_invoice_line_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_invoice_line_item (
    rmm_invoice_line_item_id integer NOT NULL,
    rmm_invoice_id integer NOT NULL,
    rmm_product_id integer NOT NULL,
    ili_description character varying(2000),
    ili_line_num numeric,
    ili_cost numeric,
    ili_quantity numeric,
    ili_total_amount numeric,
    ili_add_user_id character varying(500),
    ili_add_date date,
    ili_mtc_user_id character varying(500),
    ili_mtc_date date
);


ALTER TABLE public.rmm_invoice_line_item OWNER TO postgres;

--
-- Name: rmm_invoice_line_item_rmm_invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_invoice_line_item_rmm_invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_invoice_line_item_rmm_invoice_id_seq OWNER TO postgres;

--
-- Name: rmm_invoice_line_item_rmm_invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_invoice_line_item_rmm_invoice_id_seq OWNED BY public.rmm_invoice_line_item.rmm_invoice_id;


--
-- Name: rmm_invoice_line_item_rmm_invoice_line_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_invoice_line_item_rmm_invoice_line_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_invoice_line_item_rmm_invoice_line_item_id_seq OWNER TO postgres;

--
-- Name: rmm_invoice_line_item_rmm_invoice_line_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_invoice_line_item_rmm_invoice_line_item_id_seq OWNED BY public.rmm_invoice_line_item.rmm_invoice_line_item_id;


--
-- Name: rmm_invoice_line_item_rmm_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_invoice_line_item_rmm_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_invoice_line_item_rmm_product_id_seq OWNER TO postgres;

--
-- Name: rmm_invoice_line_item_rmm_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_invoice_line_item_rmm_product_id_seq OWNED BY public.rmm_invoice_line_item.rmm_product_id;


--
-- Name: rmm_invoice_rmm_invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_invoice_rmm_invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_invoice_rmm_invoice_id_seq OWNER TO postgres;

--
-- Name: rmm_invoice_rmm_invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_invoice_rmm_invoice_id_seq OWNED BY public.rmm_invoice.rmm_invoice_id;


--
-- Name: rmm_invoice_rmm_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_invoice_rmm_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_invoice_rmm_order_id_seq OWNER TO postgres;

--
-- Name: rmm_invoice_rmm_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_invoice_rmm_order_id_seq OWNED BY public.rmm_invoice.rmm_order_id;


--
-- Name: rmm_metal_rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_metal_rates (
    rmm_metal_rate_id integer NOT NULL,
    mr_metal_type character varying(500),
    mr_metal_name character varying(500),
    mr_rate numeric,
    mr_status character varying(100),
    mr_add_user_id character varying(500),
    mr_add_date date,
    mr_mtc_user_id character varying(500),
    mr_mtc_date date
);


ALTER TABLE public.rmm_metal_rates OWNER TO postgres;

--
-- Name: rmm_metal_rates_rmm_metal_rate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_metal_rates_rmm_metal_rate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_metal_rates_rmm_metal_rate_id_seq OWNER TO postgres;

--
-- Name: rmm_metal_rates_rmm_metal_rate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_metal_rates_rmm_metal_rate_id_seq OWNED BY public.rmm_metal_rates.rmm_metal_rate_id;


--
-- Name: rmm_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_order (
    rmm_order_id integer NOT NULL,
    rmm_user_id character varying(500),
    rmm_shop_id integer NOT NULL,
    rmm_vendor_id integer NOT NULL,
    o_number character varying(100),
    o_type character varying(100),
    o_date date,
    o_status character varying(100),
    o_store_comment character varying(4000),
    o_is_received character(1),
    o_is_delivered character(1),
    o_repair_job_num character varying(500),
    o_approved_by character varying(500),
    o_approved_by_date date,
    o_add_user_id character varying(500),
    o_add_date date,
    o_mtc_user_id character varying(500),
    o_mtc_date date
);


ALTER TABLE public.rmm_order OWNER TO postgres;

--
-- Name: rmm_order_line_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_order_line_item (
    rmm_order_line_item_id integer NOT NULL,
    rmm_order_id integer NOT NULL,
    rmm_product_id integer NOT NULL,
    oli_product_key character varying(1000),
    oli_description character varying(4000),
    oli_uom character varying(100),
    oli_line_num numeric,
    oli_quantity_ordered numeric,
    oli_quantity_delivered numeric,
    oli_quantity_invoiced numeric,
    oli_add_user_id character varying(500),
    oli_add_date date,
    oli_mtc_user_id character varying(500),
    oli_mtc_date date
);


ALTER TABLE public.rmm_order_line_item OWNER TO postgres;

--
-- Name: rmm_order_line_item_rmm_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_order_line_item_rmm_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_order_line_item_rmm_order_id_seq OWNER TO postgres;

--
-- Name: rmm_order_line_item_rmm_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_order_line_item_rmm_order_id_seq OWNED BY public.rmm_order_line_item.rmm_order_id;


--
-- Name: rmm_order_line_item_rmm_order_line_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_order_line_item_rmm_order_line_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_order_line_item_rmm_order_line_item_id_seq OWNER TO postgres;

--
-- Name: rmm_order_line_item_rmm_order_line_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_order_line_item_rmm_order_line_item_id_seq OWNED BY public.rmm_order_line_item.rmm_order_line_item_id;


--
-- Name: rmm_order_line_item_rmm_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_order_line_item_rmm_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_order_line_item_rmm_product_id_seq OWNER TO postgres;

--
-- Name: rmm_order_line_item_rmm_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_order_line_item_rmm_product_id_seq OWNED BY public.rmm_order_line_item.rmm_product_id;


--
-- Name: rmm_order_rmm_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_order_rmm_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_order_rmm_order_id_seq OWNER TO postgres;

--
-- Name: rmm_order_rmm_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_order_rmm_order_id_seq OWNED BY public.rmm_order.rmm_order_id;


--
-- Name: rmm_order_rmm_shop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_order_rmm_shop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_order_rmm_shop_id_seq OWNER TO postgres;

--
-- Name: rmm_order_rmm_shop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_order_rmm_shop_id_seq OWNED BY public.rmm_order.rmm_shop_id;


--
-- Name: rmm_order_rmm_vendor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_order_rmm_vendor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_order_rmm_vendor_id_seq OWNER TO postgres;

--
-- Name: rmm_order_rmm_vendor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_order_rmm_vendor_id_seq OWNED BY public.rmm_order.rmm_vendor_id;


--
-- Name: rmm_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_product (
    rmm_product_id integer NOT NULL,
    rmm_supply_categories_id integer NOT NULL,
    p_key character varying(1000),
    p_type character varying(100),
    p_description character varying(4000),
    p_cost numeric,
    p_status character varying(100),
    p_name character varying(200),
    p_quality character varying(100),
    p_cut character varying(100),
    p_size character varying(20),
    p_shape character varying(100),
    p_size_carat character varying(50),
    p_color character varying(100),
    p_ster_quality character varying(100),
    p_add_user_id character varying(500),
    p_add_date date,
    p_mtc_user_id character varying(500),
    p_mtc_date date
);


ALTER TABLE public.rmm_product OWNER TO postgres;

--
-- Name: rmm_product_rmm_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_product_rmm_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_product_rmm_product_id_seq OWNER TO postgres;

--
-- Name: rmm_product_rmm_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_product_rmm_product_id_seq OWNED BY public.rmm_product.rmm_product_id;


--
-- Name: rmm_product_rmm_supply_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_product_rmm_supply_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_product_rmm_supply_categories_id_seq OWNER TO postgres;

--
-- Name: rmm_product_rmm_supply_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_product_rmm_supply_categories_id_seq OWNED BY public.rmm_product.rmm_supply_categories_id;


--
-- Name: rmm_receipt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_receipt (
    rmm_receipt_id integer NOT NULL,
    rmm_order_id integer NOT NULL,
    r_date date,
    r_status character varying(100),
    r_add_user_id character varying(500),
    r_add_date date,
    r_mtc_user_id character varying(500),
    r_mtc_date date
);


ALTER TABLE public.rmm_receipt OWNER TO postgres;

--
-- Name: rmm_receipt_line_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_receipt_line_item (
    rmm_receipt_line_item_id integer NOT NULL,
    rmm_receipt_id integer NOT NULL,
    rmm_product_id integer NOT NULL,
    rli_quantity numeric,
    rli_add_user_id character varying(500),
    rli_add_date date,
    rli_mtc_user_id character varying(500),
    rli_mtc_date date
);


ALTER TABLE public.rmm_receipt_line_item OWNER TO postgres;

--
-- Name: rmm_receipt_line_item_rmm_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_receipt_line_item_rmm_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_receipt_line_item_rmm_product_id_seq OWNER TO postgres;

--
-- Name: rmm_receipt_line_item_rmm_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_receipt_line_item_rmm_product_id_seq OWNED BY public.rmm_receipt_line_item.rmm_product_id;


--
-- Name: rmm_receipt_line_item_rmm_receipt_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_receipt_line_item_rmm_receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_receipt_line_item_rmm_receipt_id_seq OWNER TO postgres;

--
-- Name: rmm_receipt_line_item_rmm_receipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_receipt_line_item_rmm_receipt_id_seq OWNED BY public.rmm_receipt_line_item.rmm_receipt_id;


--
-- Name: rmm_receipt_line_item_rmm_receipt_line_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_receipt_line_item_rmm_receipt_line_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_receipt_line_item_rmm_receipt_line_item_id_seq OWNER TO postgres;

--
-- Name: rmm_receipt_line_item_rmm_receipt_line_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_receipt_line_item_rmm_receipt_line_item_id_seq OWNED BY public.rmm_receipt_line_item.rmm_receipt_line_item_id;


--
-- Name: rmm_receipt_rmm_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_receipt_rmm_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_receipt_rmm_order_id_seq OWNER TO postgres;

--
-- Name: rmm_receipt_rmm_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_receipt_rmm_order_id_seq OWNED BY public.rmm_receipt.rmm_order_id;


--
-- Name: rmm_receipt_rmm_receipt_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_receipt_rmm_receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_receipt_rmm_receipt_id_seq OWNER TO postgres;

--
-- Name: rmm_receipt_rmm_receipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_receipt_rmm_receipt_id_seq OWNED BY public.rmm_receipt.rmm_receipt_id;


--
-- Name: rmm_shop_inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_shop_inventory (
    rmm_shop_inventory_id integer NOT NULL,
    rmm_shop_id integer NOT NULL,
    rmm_product_id integer NOT NULL,
    si_quantity numeric,
    si_status character varying(100),
    si_add_user_id character varying(500),
    si_add_date date,
    si_mtc_user_id character varying(500),
    si_mtc_date date
);


ALTER TABLE public.rmm_shop_inventory OWNER TO postgres;

--
-- Name: rmm_shop_inventory_rmm_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_shop_inventory_rmm_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_shop_inventory_rmm_product_id_seq OWNER TO postgres;

--
-- Name: rmm_shop_inventory_rmm_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_shop_inventory_rmm_product_id_seq OWNED BY public.rmm_shop_inventory.rmm_product_id;


--
-- Name: rmm_shop_inventory_rmm_shop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_shop_inventory_rmm_shop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_shop_inventory_rmm_shop_id_seq OWNER TO postgres;

--
-- Name: rmm_shop_inventory_rmm_shop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_shop_inventory_rmm_shop_id_seq OWNED BY public.rmm_shop_inventory.rmm_shop_id;


--
-- Name: rmm_shop_inventory_rmm_shop_inventory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_shop_inventory_rmm_shop_inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_shop_inventory_rmm_shop_inventory_id_seq OWNER TO postgres;

--
-- Name: rmm_shop_inventory_rmm_shop_inventory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_shop_inventory_rmm_shop_inventory_id_seq OWNED BY public.rmm_shop_inventory.rmm_shop_inventory_id;


--
-- Name: rmm_supply_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_supply_categories (
    rmm_supply_categories_id integer NOT NULL,
    sc_category character varying(200),
    sc_description character varying(500),
    sc_bulk_item character(1),
    sc_cost numeric,
    sc_add_user_id character varying(500),
    sc_add_date date,
    sc_mtc_user_id character varying(500),
    sc_mtc_date date
);


ALTER TABLE public.rmm_supply_categories OWNER TO postgres;

--
-- Name: rmm_supply_categories_rmm_supply_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_supply_categories_rmm_supply_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_supply_categories_rmm_supply_categories_id_seq OWNER TO postgres;

--
-- Name: rmm_supply_categories_rmm_supply_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_supply_categories_rmm_supply_categories_id_seq OWNED BY public.rmm_supply_categories.rmm_supply_categories_id;


--
-- Name: rmm_inventory_report rmm_inventory_report_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_inventory_report ALTER COLUMN rmm_inventory_report_id SET DEFAULT nextval('public.rmm_inventory_report_rmm_inventory_report_id_seq'::regclass);


--
-- Name: rmm_inventory_report rmm_shop_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_inventory_report ALTER COLUMN rmm_shop_id SET DEFAULT nextval('public.rmm_inventory_report_rmm_shop_id_seq'::regclass);


--
-- Name: rmm_invoice rmm_invoice_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_invoice ALTER COLUMN rmm_invoice_id SET DEFAULT nextval('public.rmm_invoice_rmm_invoice_id_seq'::regclass);


--
-- Name: rmm_invoice rmm_order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_invoice ALTER COLUMN rmm_order_id SET DEFAULT nextval('public.rmm_invoice_rmm_order_id_seq'::regclass);


--
-- Name: rmm_invoice_line_item rmm_invoice_line_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_invoice_line_item ALTER COLUMN rmm_invoice_line_item_id SET DEFAULT nextval('public.rmm_invoice_line_item_rmm_invoice_line_item_id_seq'::regclass);


--
-- Name: rmm_invoice_line_item rmm_invoice_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_invoice_line_item ALTER COLUMN rmm_invoice_id SET DEFAULT nextval('public.rmm_invoice_line_item_rmm_invoice_id_seq'::regclass);


--
-- Name: rmm_invoice_line_item rmm_product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_invoice_line_item ALTER COLUMN rmm_product_id SET DEFAULT nextval('public.rmm_invoice_line_item_rmm_product_id_seq'::regclass);


--
-- Name: rmm_metal_rates rmm_metal_rate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_metal_rates ALTER COLUMN rmm_metal_rate_id SET DEFAULT nextval('public.rmm_metal_rates_rmm_metal_rate_id_seq'::regclass);


--
-- Name: rmm_order rmm_order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_order ALTER COLUMN rmm_order_id SET DEFAULT nextval('public.rmm_order_rmm_order_id_seq'::regclass);


--
-- Name: rmm_order rmm_shop_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_order ALTER COLUMN rmm_shop_id SET DEFAULT nextval('public.rmm_order_rmm_shop_id_seq'::regclass);


--
-- Name: rmm_order rmm_vendor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_order ALTER COLUMN rmm_vendor_id SET DEFAULT nextval('public.rmm_order_rmm_vendor_id_seq'::regclass);


--
-- Name: rmm_order_line_item rmm_order_line_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_order_line_item ALTER COLUMN rmm_order_line_item_id SET DEFAULT nextval('public.rmm_order_line_item_rmm_order_line_item_id_seq'::regclass);


--
-- Name: rmm_order_line_item rmm_order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_order_line_item ALTER COLUMN rmm_order_id SET DEFAULT nextval('public.rmm_order_line_item_rmm_order_id_seq'::regclass);


--
-- Name: rmm_order_line_item rmm_product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_order_line_item ALTER COLUMN rmm_product_id SET DEFAULT nextval('public.rmm_order_line_item_rmm_product_id_seq'::regclass);


--
-- Name: rmm_product rmm_product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_product ALTER COLUMN rmm_product_id SET DEFAULT nextval('public.rmm_product_rmm_product_id_seq'::regclass);


--
-- Name: rmm_product rmm_supply_categories_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_product ALTER COLUMN rmm_supply_categories_id SET DEFAULT nextval('public.rmm_product_rmm_supply_categories_id_seq'::regclass);


--
-- Name: rmm_receipt rmm_receipt_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_receipt ALTER COLUMN rmm_receipt_id SET DEFAULT nextval('public.rmm_receipt_rmm_receipt_id_seq'::regclass);


--
-- Name: rmm_receipt rmm_order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_receipt ALTER COLUMN rmm_order_id SET DEFAULT nextval('public.rmm_receipt_rmm_order_id_seq'::regclass);


--
-- Name: rmm_receipt_line_item rmm_receipt_line_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_receipt_line_item ALTER COLUMN rmm_receipt_line_item_id SET DEFAULT nextval('public.rmm_receipt_line_item_rmm_receipt_line_item_id_seq'::regclass);


--
-- Name: rmm_receipt_line_item rmm_receipt_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_receipt_line_item ALTER COLUMN rmm_receipt_id SET DEFAULT nextval('public.rmm_receipt_line_item_rmm_receipt_id_seq'::regclass);


--
-- Name: rmm_receipt_line_item rmm_product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_receipt_line_item ALTER COLUMN rmm_product_id SET DEFAULT nextval('public.rmm_receipt_line_item_rmm_product_id_seq'::regclass);


--
-- Name: rmm_shop_inventory rmm_shop_inventory_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_shop_inventory ALTER COLUMN rmm_shop_inventory_id SET DEFAULT nextval('public.rmm_shop_inventory_rmm_shop_inventory_id_seq'::regclass);


--
-- Name: rmm_shop_inventory rmm_shop_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_shop_inventory ALTER COLUMN rmm_shop_id SET DEFAULT nextval('public.rmm_shop_inventory_rmm_shop_id_seq'::regclass);


--
-- Name: rmm_shop_inventory rmm_product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_shop_inventory ALTER COLUMN rmm_product_id SET DEFAULT nextval('public.rmm_shop_inventory_rmm_product_id_seq'::regclass);


--
-- Name: rmm_supply_categories rmm_supply_categories_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_supply_categories ALTER COLUMN rmm_supply_categories_id SET DEFAULT nextval('public.rmm_supply_categories_rmm_supply_categories_id_seq'::regclass);


--
-- Data for Name: rmm_inventory_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_inventory_report (rmm_inventory_report_id, rmm_shop_id, ir_status, ir_diamonds_cost, ir_asst_dia_bags_cost, ir_genuine_colored_cost, ir_created_colored_cost, ir_synthetic_colored_cost, ir_pearls_cost, "ir_gold_stock_10K_cost", "ir_gold_stock_10K_count", "ir_gold_stock_14K_cost", "ir_gold_stock_14K_count", "ir_gold_stock_18K_cost", "ir_gold_stock_18K_count", "ir_gold_solder_10K_cost", "ir_gold_solder_10K_count", "ir_gold_solder_14K_cost", "ir_gold_solder_14K_count", "ir_gold_solder_18K_cost", "ir_gold_solder_18K_count", "ir_gold_casting_grain_10K_cost", "ir_gold_casting_grain_10K_count", "ir_gold_casting_grain_14K_cost", "ir_gold_casting_grain_14K_count", "ir_gold_casting_grain_18K_cost", "ir_gold_casting_grain_18K_count", ir_platinum_stock_cost, ir_platinum_stock_count, ir_platinum_solder_cost, ir_platinum_solder_count, ir_gold_findings_cost, ir_gold_findings_count, ir_platinum_findings_cost, ir_platinum_findings_count, ir_silver_stock_cost, ir_silver_stock_count, ir_silver_solder_cost, ir_silver_solder_count, ir_silver_casting_grain_cost, ir_silver_casting_grain_count, ir_silver_findings_cost, ir_silver_findings_count, ir_total, ir_completion_date, ir_shop_approval_status, ir_dm_approval_status, ir_op_approval_status, ir_run_date, ir_variance_total, ir_fiscal_mmyyyy, ir_inv_total, ir_previous_total) FROM stdin;
\.


--
-- Data for Name: rmm_invoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_invoice (rmm_invoice_id, rmm_order_id, i_number, i_status, i_date, i_grand_total, i_sent_to_sap, i_sent_to_sap_date, i_pay_to_sap, i_add_user_id, i_add_date, i_mtc_user_id, i_mtc_date) FROM stdin;
\.


--
-- Data for Name: rmm_invoice_line_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_invoice_line_item (rmm_invoice_line_item_id, rmm_invoice_id, rmm_product_id, ili_description, ili_line_num, ili_cost, ili_quantity, ili_total_amount, ili_add_user_id, ili_add_date, ili_mtc_user_id, ili_mtc_date) FROM stdin;
\.


--
-- Data for Name: rmm_metal_rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_metal_rates (rmm_metal_rate_id, mr_metal_type, mr_metal_name, mr_rate, mr_status, mr_add_user_id, mr_add_date, mr_mtc_user_id, mr_mtc_date) FROM stdin;
1	GOLD_18K	Gold 18K	1.38	ACTIVE	SYSTEM	2021-09-17	SYSTEM	2021-09-17
2	GOLD_14K	Gold 14K	1.38	ACTIVE	SYSTEM	2021-09-17	SYSTEM	2021-09-17
3	GOLD_10K	Gold 10K	1.38	ACTIVE	SYSTEM	2021-09-17	SYSTEM	2021-09-17
4	SILVER_18K	Silver 18K	1.38	ACTIVE	SYSTEM	2021-09-17	SYSTEM	2021-09-17
5	SILVER_14K	Silver 18K	1.38	ACTIVE	SYSTEM	2021-09-17	SYSTEM	2021-09-17
6	SILVER_10K	Silver 18K	1.38	ACTIVE	SYSTEM	2021-09-17	SYSTEM	2021-09-17
7	PLATINUM_18K	Platinum 18K	1.38	ACTIVE	SYSTEM	2021-09-17	SYSTEM	2021-09-17
8	PLATINUM_14K	Platinum 14K	1.38	ACTIVE	SYSTEM	2021-09-17	SYSTEM	2021-09-17
9	PLATINUM_18K	Platinum 10K	1.38	ACTIVE	SYSTEM	2021-09-17	SYSTEM	2021-09-17
\.


--
-- Data for Name: rmm_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_order (rmm_order_id, rmm_user_id, rmm_shop_id, rmm_vendor_id, o_number, o_type, o_date, o_status, o_store_comment, o_is_received, o_is_delivered, o_repair_job_num, o_approved_by, o_approved_by_date, o_add_user_id, o_add_date, o_mtc_user_id, o_mtc_date) FROM stdin;
2	foo	55	1	2200	VENDOR	2021-08-29	ACTIVE	Need these ASAP!	N	N	797	Megan	2021-08-29	\N	2021-09-11	\N	2021-09-11
3	foo	44	1	3300	VENDOR	2021-08-29	ACTIVE	Need these ASAP!	N	N	797	Megan	2021-08-29	\N	2021-09-11	\N	2021-09-11
1	foo	77	1	1100	VENDOR	2021-08-29	ACTIVE	Did this update?	N	N	777	Megan	2021-08-29	\N	2021-09-11	\N	2021-09-14
\.


--
-- Data for Name: rmm_order_line_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_order_line_item (rmm_order_line_item_id, rmm_order_id, rmm_product_id, oli_product_key, oli_description, oli_uom, oli_line_num, oli_quantity_ordered, oli_quantity_delivered, oli_quantity_invoiced, oli_add_user_id, oli_add_date, oli_mtc_user_id, oli_mtc_date) FROM stdin;
1	2	2	PRD-KEY	Silver Chain	\N	1	16	0	0	\N	2021-09-11	\N	2021-09-11
2	3	4	PRD-KEY	Gold Chain	\N	1	16	0	0	\N	2021-09-11	\N	2021-09-11
3	3	5	PRD-KEY	Pendant	\N	2	12	0	0	\N	2021-09-11	\N	2021-09-11
4	3	6	PRD-KEY	Diamond	\N	3	2	0	0	\N	2021-09-11	\N	2021-09-11
\.


--
-- Data for Name: rmm_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_product (rmm_product_id, rmm_supply_categories_id, p_key, p_type, p_description, p_cost, p_status, p_name, p_quality, p_cut, p_size, p_shape, p_size_carat, p_color, p_ster_quality, p_add_user_id, p_add_date, p_mtc_user_id, p_mtc_date) FROM stdin;
2	2	KEY-0004	SILVER	Silver jewelry	399.99	ACTIVE	Silver Chain	4					silver	5	\N	2021-09-11	\N	2021-09-11
4	2	KEY-0004	GOLD	Gold jewelry	599.99	ACTIVE	Gold Chain	4					silver	5	\N	2021-09-11	\N	2021-09-11
5	3	KEY-0004	SILVER	Silver jewelry	299.99	ACTIVE	Pendant	4		small			silver	3	\N	2021-09-11	\N	2021-09-11
6	4	KEY-00664	GEMSTONE	Diamond	3299.99	ACTIVE	Forever Diamond	4		small			yellow	6	\N	2021-09-11	\N	2021-09-11
\.


--
-- Data for Name: rmm_receipt; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_receipt (rmm_receipt_id, rmm_order_id, r_date, r_status, r_add_user_id, r_add_date, r_mtc_user_id, r_mtc_date) FROM stdin;
\.


--
-- Data for Name: rmm_receipt_line_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_receipt_line_item (rmm_receipt_line_item_id, rmm_receipt_id, rmm_product_id, rli_quantity, rli_add_user_id, rli_add_date, rli_mtc_user_id, rli_mtc_date) FROM stdin;
\.


--
-- Data for Name: rmm_shop_inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_shop_inventory (rmm_shop_inventory_id, rmm_shop_id, rmm_product_id, si_quantity, si_status, si_add_user_id, si_add_date, si_mtc_user_id, si_mtc_date) FROM stdin;
\.


--
-- Data for Name: rmm_supply_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_supply_categories (rmm_supply_categories_id, sc_category, sc_description, sc_bulk_item, sc_cost, sc_add_user_id, sc_add_date, sc_mtc_user_id, sc_mtc_date) FROM stdin;
2	GOLD	Gold	Y	250.00	\N	2021-09-11	\N	2021-09-11
3	SILVER	Silver	Y	299.00	\N	2021-09-11	\N	2021-09-11
4	DIAMOND	Diamond	Y	2499.99	\N	2021-09-11	\N	2021-09-11
\.


--
-- Name: rmm_inventory_report_rmm_inventory_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_inventory_report_rmm_inventory_report_id_seq', 1, false);


--
-- Name: rmm_inventory_report_rmm_shop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_inventory_report_rmm_shop_id_seq', 1, false);


--
-- Name: rmm_invoice_line_item_rmm_invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_invoice_line_item_rmm_invoice_id_seq', 1, false);


--
-- Name: rmm_invoice_line_item_rmm_invoice_line_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_invoice_line_item_rmm_invoice_line_item_id_seq', 1, false);


--
-- Name: rmm_invoice_line_item_rmm_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_invoice_line_item_rmm_product_id_seq', 1, false);


--
-- Name: rmm_invoice_rmm_invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_invoice_rmm_invoice_id_seq', 1, false);


--
-- Name: rmm_invoice_rmm_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_invoice_rmm_order_id_seq', 1, false);


--
-- Name: rmm_metal_rates_rmm_metal_rate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_metal_rates_rmm_metal_rate_id_seq', 9, true);


--
-- Name: rmm_order_line_item_rmm_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_order_line_item_rmm_order_id_seq', 1, false);


--
-- Name: rmm_order_line_item_rmm_order_line_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_order_line_item_rmm_order_line_item_id_seq', 4, true);


--
-- Name: rmm_order_line_item_rmm_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_order_line_item_rmm_product_id_seq', 1, false);


--
-- Name: rmm_order_rmm_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_order_rmm_order_id_seq', 3, true);


--
-- Name: rmm_order_rmm_shop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_order_rmm_shop_id_seq', 1, false);


--
-- Name: rmm_order_rmm_vendor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_order_rmm_vendor_id_seq', 1, false);


--
-- Name: rmm_product_rmm_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_product_rmm_product_id_seq', 6, true);


--
-- Name: rmm_product_rmm_supply_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_product_rmm_supply_categories_id_seq', 1, false);


--
-- Name: rmm_receipt_line_item_rmm_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_receipt_line_item_rmm_product_id_seq', 1, false);


--
-- Name: rmm_receipt_line_item_rmm_receipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_receipt_line_item_rmm_receipt_id_seq', 1, false);


--
-- Name: rmm_receipt_line_item_rmm_receipt_line_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_receipt_line_item_rmm_receipt_line_item_id_seq', 1, false);


--
-- Name: rmm_receipt_rmm_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_receipt_rmm_order_id_seq', 1, false);


--
-- Name: rmm_receipt_rmm_receipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_receipt_rmm_receipt_id_seq', 1, false);


--
-- Name: rmm_shop_inventory_rmm_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_shop_inventory_rmm_product_id_seq', 1, false);


--
-- Name: rmm_shop_inventory_rmm_shop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_shop_inventory_rmm_shop_id_seq', 1, false);


--
-- Name: rmm_shop_inventory_rmm_shop_inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_shop_inventory_rmm_shop_inventory_id_seq', 1, false);


--
-- Name: rmm_supply_categories_rmm_supply_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_supply_categories_rmm_supply_categories_id_seq', 4, true);


--
-- Name: rmm_inventory_report rmm_inventory_report_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_inventory_report
    ADD CONSTRAINT rmm_inventory_report_pkey PRIMARY KEY (rmm_inventory_report_id);


--
-- Name: rmm_invoice_line_item rmm_invoice_line_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_invoice_line_item
    ADD CONSTRAINT rmm_invoice_line_item_pkey PRIMARY KEY (rmm_invoice_line_item_id);


--
-- Name: rmm_invoice rmm_invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_invoice
    ADD CONSTRAINT rmm_invoice_pkey PRIMARY KEY (rmm_invoice_id);


--
-- Name: rmm_order_line_item rmm_order_line_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_order_line_item
    ADD CONSTRAINT rmm_order_line_item_pkey PRIMARY KEY (rmm_order_line_item_id);


--
-- Name: rmm_order rmm_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_order
    ADD CONSTRAINT rmm_order_pkey PRIMARY KEY (rmm_order_id);


--
-- Name: rmm_product rmm_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_product
    ADD CONSTRAINT rmm_product_pkey PRIMARY KEY (rmm_product_id);


--
-- Name: rmm_receipt_line_item rmm_receipt_line_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_receipt_line_item
    ADD CONSTRAINT rmm_receipt_line_item_pkey PRIMARY KEY (rmm_receipt_line_item_id);


--
-- Name: rmm_receipt rmm_receipt_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_receipt
    ADD CONSTRAINT rmm_receipt_pkey PRIMARY KEY (rmm_receipt_id);


--
-- Name: rmm_shop_inventory rmm_shop_inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_shop_inventory
    ADD CONSTRAINT rmm_shop_inventory_pkey PRIMARY KEY (rmm_shop_inventory_id);


--
-- Name: rmm_supply_categories rmm_supply_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_supply_categories
    ADD CONSTRAINT rmm_supply_categories_pkey PRIMARY KEY (rmm_supply_categories_id);


--
-- Name: rmm_invoice_line_item rmm_invoice_line_item_rmm_invoice_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_invoice_line_item
    ADD CONSTRAINT rmm_invoice_line_item_rmm_invoice_id_fkey FOREIGN KEY (rmm_invoice_id) REFERENCES public.rmm_invoice(rmm_invoice_id);


--
-- Name: rmm_invoice_line_item rmm_invoice_line_item_rmm_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_invoice_line_item
    ADD CONSTRAINT rmm_invoice_line_item_rmm_product_id_fkey FOREIGN KEY (rmm_product_id) REFERENCES public.rmm_product(rmm_product_id);


--
-- Name: rmm_invoice rmm_invoice_rmm_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_invoice
    ADD CONSTRAINT rmm_invoice_rmm_order_id_fkey FOREIGN KEY (rmm_order_id) REFERENCES public.rmm_order(rmm_order_id);


--
-- Name: rmm_order_line_item rmm_order_line_item_rmm_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_order_line_item
    ADD CONSTRAINT rmm_order_line_item_rmm_order_id_fkey FOREIGN KEY (rmm_order_id) REFERENCES public.rmm_order(rmm_order_id);


--
-- Name: rmm_order_line_item rmm_order_line_item_rmm_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_order_line_item
    ADD CONSTRAINT rmm_order_line_item_rmm_product_id_fkey FOREIGN KEY (rmm_product_id) REFERENCES public.rmm_product(rmm_product_id);


--
-- Name: rmm_product rmm_product_rmm_supply_categories_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_product
    ADD CONSTRAINT rmm_product_rmm_supply_categories_id_fkey FOREIGN KEY (rmm_supply_categories_id) REFERENCES public.rmm_supply_categories(rmm_supply_categories_id);


--
-- Name: rmm_receipt_line_item rmm_receipt_line_item_rmm_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_receipt_line_item
    ADD CONSTRAINT rmm_receipt_line_item_rmm_product_id_fkey FOREIGN KEY (rmm_product_id) REFERENCES public.rmm_product(rmm_product_id);


--
-- Name: rmm_receipt_line_item rmm_receipt_line_item_rmm_receipt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_receipt_line_item
    ADD CONSTRAINT rmm_receipt_line_item_rmm_receipt_id_fkey FOREIGN KEY (rmm_receipt_id) REFERENCES public.rmm_receipt(rmm_receipt_id);


--
-- Name: rmm_receipt rmm_receipt_rmm_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_receipt
    ADD CONSTRAINT rmm_receipt_rmm_order_id_fkey FOREIGN KEY (rmm_order_id) REFERENCES public.rmm_order(rmm_order_id);


--
-- Name: rmm_shop_inventory rmm_shop_inventory_rmm_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_shop_inventory
    ADD CONSTRAINT rmm_shop_inventory_rmm_product_id_fkey FOREIGN KEY (rmm_product_id) REFERENCES public.rmm_product(rmm_product_id);


--
-- PostgreSQL database dump complete
--

