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
-- Name: rmm_shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rmm_shop (
    rmm_shop_id integer NOT NULL,
    s_number character varying(100),
    s_store_number character varying(100),
    s_name character varying(1000),
    s_addr_line1 character varying(500),
    s_addr_line2 character varying(500),
    s_addr_city character varying(500),
    s_addr_state character varying(3),
    s_addr_zip character varying(10),
    s_status character varying(100),
    s_add_user_id character varying(500),
    s_add_date date,
    s_mtc_user_id character varying(500),
    s_mtc_date date
);


ALTER TABLE public.rmm_shop OWNER TO postgres;

--
-- Name: rmm_shop_rmm_shop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rmm_shop_rmm_shop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rmm_shop_rmm_shop_id_seq OWNER TO postgres;

--
-- Name: rmm_shop_rmm_shop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rmm_shop_rmm_shop_id_seq OWNED BY public.rmm_shop.rmm_shop_id;


--
-- Name: rmm_shop rmm_shop_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_shop ALTER COLUMN rmm_shop_id SET DEFAULT nextval('public.rmm_shop_rmm_shop_id_seq'::regclass);


--
-- Data for Name: rmm_shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rmm_shop (rmm_shop_id, s_number, s_store_number, s_name, s_addr_line1, s_addr_line2, s_addr_city, s_addr_state, s_addr_zip, s_status, s_add_user_id, s_add_date, s_mtc_user_id, s_mtc_date) FROM stdin;
1	8255/433-RiverTown Crossings	8255	433	3610 RiverTown Pkwy. SW	\N	Grandville	MI	49418	\N	\N	\N	\N	\N
2	8357/2407-Lynnhaven Parkway	8357	2407	656 Phoenix Dr.	\N	Virginia Beach	VA	23452	\N	\N	\N	\N	\N
3	8256/444-Regency Square at Brandon	8256	444	2206 W. Brandon Blvd.	\N	Brandon	FL	33511	\N	\N	\N	\N	\N
4	8356/2404-Southdale Square Shopping Center	8356	2404	6569 York Ave.	101	Minneapolis	MN	55435	\N	\N	\N	\N	\N
5	9269/488-Centre at Deane Hill	9269	488	222 Morrell Rd.	\N	Knoxville	TN	37919	\N	\N	\N	\N	\N
6	8338/2490-Independence Center	8338	2490	18813 East 39th St. S	Ste 2115	Independence	MO	64057	\N	\N	\N	\N	\N
7	9268/480-Paradise Valley-Outparcel	9268	480	12656 N. Tatum Blvd.	\N	Phoenix	AZ	85032	\N	\N	\N	\N	\N
8	965/485-International Drive Value Center	965	485	4095 Millenia Blvd	\N	Orlando	FL	32839	\N	\N	\N	\N	\N
9	9097/442-Pointe at North Fayette	9097	442	100 McHolme Dr.	\N	Pittsburgh	PA	15275	\N	\N	\N	\N	\N
10	9096/453-Ridge at Creekside	9096	453	1128 Galleria Blvd.	K	Roseville	CA	95678	\N	\N	\N	\N	\N
11	963/484-Best in the West	963	484	2110 N. Rainbow  Ste. 110	Building 7	Las Vegas	NV	89108	\N	\N	\N	\N	\N
12	962/483-Westminster City Center	962	483	9210 Sheridan Blvd.	\N	Westminster	CO	80031	\N	\N	\N	\N	\N
13	9093/447-Tuttle Crossing	9093	447	5061 Tuttle Crossing Blvd.	\N	Dublin	OH	43017	\N	\N	\N	\N	\N
14	9095/454-Arden Way aka Point West Crp Cnt	9095	454	1620 Arden Way	\N	Sacramento	CA	95815	\N	\N	\N	\N	\N
15	9094/464-Main St. Commons	9094	464	3691 E. Main St.	\N	St. Charles	IL	60174	\N	\N	\N	\N	\N
16	8281/422-Colorado Mills	8281	422	14145 W. Colfax Ave.	\N	lakewood	CO	80401	\N	\N	\N	\N	\N
17	9090/463-Meridian Square	9090	463	1016 N. Rte. 59	\N	Aurora	IL	60504	\N	\N	\N	\N	\N
18	9091/449-Tysons Corner	9091	449	8113 Leesburg Pike	\N	Vienna	VA	22182	\N	\N	\N	\N	\N
19	8282/417-Belden	8282	417	4381 Everhard Road NW	\N	Canton	OH	44718	\N	\N	\N	\N	\N
20	8346/2495-Morse Crossing	8346	2495	4159 Morse Crossing	\N	Columbus	OH	43219	\N	\N	\N	\N	\N
21	8345/2497-Freehold Raceway Mall	8345	2497	3710 Route 9, Suite K-200	K200	Freehold	NJ	07728	\N	\N	\N	\N	\N
22	8403/2461-Northlake Village	8403	2461	10331 Perimeter Pkwy.	\N	Charlotte	NC	28216	\N	\N	\N	\N	\N
23	8402/2458-Woodfield Road	8402	2458	1700 E. Woodfield Rd.	\N	Schaumburg	IL	60173	\N	\N	\N	\N	\N
24	8401/2456-Lakeline Mall-Outparcel	8401	2456	11047 Pecan Park	\N	Cedar Park	TX	78613	\N	\N	\N	\N	\N
25	9278/469-Arrowhead Towne Center	9278	469	7520 W. Bell Rd.	\N	Glendale	AZ	85308	\N	\N	\N	\N	\N
26	8329/1606-West 34th Street	8329	1606	136 W. 34th St.	\N	New York	NY	10001	\N	\N	\N	\N	\N
27	9279/489-Oviedo Marketplace	9279	489	8275 Red Bug Lake Rd.	\N	Oviedo	FL	32765	\N	\N	\N	\N	\N
28	9276/487-Chesterfield Towne Center	9276	487	11230 Midlothian Tpke.	\N	Richmond	VA	23235	\N	\N	\N	\N	\N
29	9277/493-Vista Ridge III	9277	493	2425 S. Stemmons	\N	Lewisville	TX	75067	\N	\N	\N	\N	\N
30	8328/1605-Weed Street District Retail Center	8328	1605	1001 W. North Ave.  Unit G/H	G/H	Chicago	IL	60622	\N	\N	\N	\N	\N
31	9274/486-Woodmen Commons	9274	486	1720 E. Woodmen Rd.	\N	Colorado Springs	CO	80920	\N	\N	\N	\N	\N
32	9275/498-Collin Creek Mall	9275	498	301 W. Plano Pkwy.	\N	Plano	TX	75075-8927	\N	\N	\N	\N	\N
33	950/475-Plaza at Chapel Hill	950	475	380 Howe Ave.	\N	Cuyahoga Falls	OH	44221	\N	\N	\N	\N	\N
34	8475/2499-Augusta Mall	8475	2499	3450 Wrightsboro Rd, Suite E100	\N	Augusta	GA	30909	\N	\N	\N	\N	\N
35	8270/432-Bal Harbour Square	8270	432	1630 N. Federal Highway	\N	Ft. Lauderdale	FL	33305	\N	\N	\N	\N	\N
36	8271/423-Fair Lakes Center	8271	423	12960 Fair Lakes Center	Prcl 4A14	Fairfax	VA	22033	\N	\N	\N	\N	\N
37	8272/430-Tyrone Square/22nd Ave. N	8272	430	6778 22nd Ave. N.	\N	St. Petersburg	FL	33710	\N	\N	\N	\N	\N
38	8274/426-Pavilion at Kings Grant	8274	426	8030 Concord Mills Blvd.	\N	Concord	NC	28027	\N	\N	\N	\N	\N
39	8391/2455-Promenade Pointe	8391	2455	693 E. Boughton Rd.	\N	Bolingbrook	IL	60440	\N	\N	\N	\N	\N
40	8392/2459-Pointe at Bridgeport	8392	2459	7162 SW Hazelfern Rd.	\N	Tigard	OR	97224	\N	\N	\N	\N	\N
41	8393/2441-Frisco Village	8393	2441	3110 Preston Rd.	\N	Frisco	TX	75034	\N	\N	\N	\N	\N
42	8394/2460-Simi Valley Town Center	8394	2460	1115 Simi Town Center Way	Pad F	Simi Valley	CA	93065-0512	\N	\N	\N	\N	\N
43	8395/2443-Patriots Place Shopping Center	8395	2443	297 Loudon Rd.	\N	Concord	NH	03301	\N	\N	\N	\N	\N
44	8310/495-Short Pump Town Center	8310	495	11724 W. Broad St.	\N	Richmond	VA	23233	\N	\N	\N	\N	\N
45	8311/445-Clearwater Mall	8311	445	2705 Gulf To Bay Blvd.	1100	Clearwater	FL	33759	\N	\N	\N	\N	\N
46	8314/491-Westfield Great Northern	8314	491	25851 Brookpark Rd.	\N	North Olmsted	OH	44070	\N	\N	\N	\N	\N
47	8315/441-Aurora City Place Shopping Center	8315	441	235 S. Abilene St.	\N	Aurora	CO	80012	\N	\N	\N	\N	\N
48	8313/496-59th & S. State	8313	496	5928 South State St.	\N	Murray	UT	84107	\N	\N	\N	\N	\N
49	8413/2449-Orchard Corners	8413	2449	9510 Quivira Rd.	\N	Lenexa	KS	66215	\N	\N	\N	\N	\N
50	8414/2471-White Marsh	8414	2471	8332 Honeygo Blvd	8050	Baltimore	MD	21236	\N	\N	\N	\N	\N
51	8411/2453-Victoria Gardens	8411	2453	12430 Foothill Blvd.	\N	Rancho Cucamonga	CA	91730	\N	\N	\N	\N	\N
52	8412/2474-Princeton Plaza Shopping Center	8412	2474	11681 Princeton Pike	\N	Springdale	OH	45246	\N	\N	\N	\N	\N
53	8410/2473-Promenade Shops at Centerra	8410	2473	5802 Sky Pond Dr.	\N	Loveland	CO	80538	\N	\N	\N	\N	\N
54	8555/2504-Wendover Avenue	8555	2504	4405 West Wendover Ave. Suite A	\N	Greensboro	NC	27407	\N	\N	\N	\N	\N
55	8437/2463-Route 202 Shopping Center	8437	2463	5327 Concord Pike	\N	Wilmington	DE	19803	\N	\N	\N	\N	\N
56	8242/448-Parks at Arlington	8242	448	3951 S. Cooper St.	\N	Arlington	TX	76015	\N	\N	\N	\N	\N
57	8389/2438-Dayton Mall	8389	2438	2760 Miamisburg Centerville Rd.	\N	Dayton	OH	45459	\N	\N	\N	\N	\N
58	8551/2478-Corbin Park	8551	2478	6675 W. 135th St.	\N	Overland Park	KS	66223	\N	\N	\N	\N	\N
59	8247/440-Appleton	8247	440	141 N. Casaloma Dr.	\N	Grand Chute	WI	54913	\N	\N	\N	\N	\N
60	8387/2435-Rim	8387	2435	17327 Interstate Hwy. 10 W.	\N	San Antonio	TX	78257	\N	\N	\N	\N	\N
61	8388/2437-Vernon Hills	8388	2437	567 E. Townline Rd.	\N	Vernon Hills	IL	60061	\N	\N	\N	\N	\N
62	8553/2491-Chesterfield Mall	8553	2491	975 Chesterfield Center Drive	\N	Chesterfield	MO	63017	\N	\N	\N	\N	\N
63	8249/443-Plaza at Citrus Park	8249	443	8104 Citrus Park Dr.	Outparcel M	Tampa	FL	33625	\N	\N	\N	\N	\N
64	8385/2434-Forum at Olympia Parkway	8385	2434	8152 Agora Pkwy.	\N	Selma	TX	78154	\N	\N	\N	\N	\N
65	8552/2492-Pearland Town Center	8552	2492	11222 Broadway Street	\N	Pearland	TX	77581	\N	\N	\N	\N	\N
66	8248/439-Town Center Lakeside	8248	439	16010 Kensington Dr.	\N	Sugar Land	TX	77478	\N	\N	\N	\N	\N
67	8386/2457-Shops at Arbor Trails	8386	2457	4301 W. William Cannon Dr.  Bld J	Building J	Austin	TX	78749	\N	\N	\N	\N	\N
68	8383/2432-Target Center	8383	2432	111 W. Reynolds Rd.  Ste. 150	\N	Lexington	KY	40503	\N	\N	\N	\N	\N
69	8384/2433-Southern Trails Shopping Center	8384	2433	8522 East 71st St.	\N	Tulsa	OK	74133	\N	\N	\N	\N	\N
70	8381/2450-Crestview Hills T.C.-Outparcel	8381	2450	2935 Dixie Hwy.	\N	Crestview Hills	KY	41017	\N	\N	\N	\N	\N
71	8382/2431-Waldorf Marketplace	8382	2431	3088 Waldorf Market Place	\N	Wadorf	MD	20603	\N	\N	\N	\N	\N
72	8380/2429-Hamilton Place	8380	2429	2001 Gunbarrel Rd.	\N	Chattanooga	TN	37421	\N	\N	\N	\N	\N
73	8302/438-Scottsdale Renaissance	8302	438	4545 N. Scottsdale Rd.  Ste. 101	101	Scottsdale	AZ	85251	\N	\N	\N	\N	\N
74	8303/427-Cary Towne Center	8303	427	1109 Walnut St.	\N	Cary	NC	27511	\N	\N	\N	\N	\N
75	8547/2496-Coconut Point	8547	2496	23160 Via Villagio	\N	Estero	FL	33928-8301	\N	\N	\N	\N	\N
76	8419/2476-Keystone Crossing	8419	2476	8520 Keystone Crossing	\N	Indianapolis	IN	46240	\N	\N	\N	\N	\N
77	8416/2466-King of Prussia	8416	2466	625 West DeKalb Pike	\N	King of Prussia	PA	19406	\N	\N	\N	\N	\N
78	8418/2469-Southlake Town Square	8418	2469	1500 E. Southlake Blvd.	\N	Southlake	TX	76092	\N	\N	\N	\N	\N
79	8417/2486-Countrywood Crossing	8417	2486	2293 N. Germantown Pkwy  Suite 103	103	Cordova	TN	38016	\N	\N	\N	\N	\N
80	8319/2401-Valley View Mall Shopping Center	8319	2401	13149 Preston Rd.	\N	Dallas	TX	75240	\N	\N	\N	\N	\N
81	8320/2405-W. 14 Mile Rd.	8320	2405	451 W. 14 Mile Rd.	\N	Madison Heights	MI	48071	\N	\N	\N	\N	\N
82	8321/2406-Newport News	8321	2406	12249 Jefferson Ave.	\N	Newport News	VA	23602	\N	\N	\N	\N	\N
83	8422/2451-Sycamore Plaza at Kenwood	8422	2451	7500 Kenwood Road	\N	Cincinnati	OH	45236	\N	\N	\N	\N	\N
84	8423/2481-Watchung Square	8423	2481	1529 Rt. 22 West	\N	Watchung	NJ	07069	\N	\N	\N	\N	\N
85	8421/2477-Greenwood Park Mall	8421	2477	729 West County Line Rd.	\N	Greenwood	IN	46142	\N	\N	\N	\N	\N
86	8542/2489-Woodland Corner Shops	8542	2489	3450 28th Street SE	0	Grand Rapids	MI	49512	\N	\N	\N	\N	\N
87	8396/2444-Crossings at Fox Run-Outparcel	8396	2444	65 Gosling Road	Outparcel L002	Newington	NH	03801	\N	\N	\N	\N	\N
88	8397/2446-Colony Place at Plymouth	8397	2446	260 Colony Place	\N	Plymouth	MA	02360	\N	\N	\N	\N	\N
89	8409/2470-Westfield Annapolis	8409	2470	180 Jennifer Road	\N	Annapolis	MD	21401	\N	\N	\N	\N	\N
90	8398/2448-Maine Mall	8398	2448	7 Philbrook Ave.	\N	S. Portland	ME	04106	\N	\N	\N	\N	\N
91	8408/2419-Pembroke Lakes Square	8408	2419	11077 Pines Boulevard	\N	Pembroke Pines	FL	33026	\N	\N	\N	\N	\N
92	8399/2454-Bell Tower Shops-Outparcel	8399	2454	5050 Bell Tower Shops Ave.	\N	Ft. Meyers	FL	33907	\N	\N	\N	\N	\N
93	8546/2508-Clackamas Promenade	8546	2508	8854 SE Sunnyside Road	010	Clackamas	OR	97015	\N	\N	\N	\N	\N
94	8407/2445-Wayside Commons	8407	2445	8 Wayside Rd.	E101	Burlington	MA	01803	\N	\N	\N	\N	\N
95	8545/2493-University Park	8545	2493	6501 N Grape Rd., Suite 1015	1015	Mishawaka	IN	46545	\N	\N	\N	\N	\N
96	8406/2440-Burnsville Center-Outparcel	8406	2440	801 County Rd. 42 W.	\N	Burnsville	MN	55306	\N	\N	\N	\N	\N
97	8544/2500-Loop West	8544	2500	2411 W Osceola Parkway	\N	Kissimmee	FL	34741	\N	\N	\N	\N	\N
98	8405/2462-Sierra Commons	8405	2462	849 West Rancho Vista Blvd.	\N	Palmdale	CA	93551	\N	\N	\N	\N	\N
99	8543/2487-Avenue(R) Carriage Crossing	8543	2487	4615 Merchants Park Circle	\N	Collierville	TN	38017	\N	\N	\N	\N	\N
100	8404/2468-Mall of New Hampshire	8404	2468	1571 South Willow St.	\N	Manchester	NH	03103	\N	\N	\N	\N	\N
101	8307/429-Renaissance Center @ Southpoint	8307	429	6813 Fayetteville Rd.  Ste. 104	C1	Durham	NC	27713	\N	\N	\N	\N	\N
102	8306/413-Broadway Blvd.	8306	413	5955 E. Broadway Blvd.	\N	Tucson	AZ	85711	\N	\N	\N	\N	\N
103	8390/2439-Mall at Fairfield Commons-Outparcel	8390	2439	2711 N. Fairfield Rd.	\N	Dayton	OH	45431	\N	\N	\N	\N	\N
104	8548/2507-The Shoppes at Chino Hills	8548	2507	3585 Grand Ave	\N	Chino Hills	CA	91709	\N	\N	\N	\N	\N
105	8549/2502-Avenue at Murfreesboro	8549	2502	2645 Medical Center Parkway	Outparcel 4	Murfreesboro	TN	37129	\N	\N	\N	\N	\N
106	8568/2498-College Center	8568	2498	28241 Marguerite Pkwy	0	Mission Viejo	CA	92692	\N	\N	\N	\N	\N
107	8234/452-Dulles Town Center	8234	452	21115 Dulles Town Cir.	\N	Dulles	VA	20166	\N	\N	\N	\N	\N
108	8378/2436-St. Clair Square	8378	2436	6530 N. Illinois Suite #101	\N	Fairview Heights	IL	62208	\N	\N	\N	\N	\N
109	8428/2475-Deptford Landing	8428	2475	2000 Clements Bridge Rd.	Pad D	Woodbury	NJ	08096	\N	\N	\N	\N	\N
110	8379/2428-Westpark Shopping Center	8379	2428	247 N. Milwaukee St.	\N	Boise	ID	83704	\N	\N	\N	\N	\N
111	8566/2494-South Hills Village	8566	2494	161 Fort Couch Rd.	\N	PITTSBURGH	PA	15241	\N	\N	\N	\N	\N
112	8565/2515-NW Executive Center	8565	2515	2050 NW Executive Center Circle	0	Boca Raton	FL	33431	\N	\N	\N	\N	\N
113	8564/2506-One Dayton Place	8564	2506	One Dayton Place	0	Waterford	CT	6385	\N	\N	\N	\N	\N
114	8563/2501-Jared University Mall	8563	2501	531 E. University Pkwy	0	Orem	UT	84097	\N	\N	\N	\N	\N
115	8237/492-West Oaks II	8237	492	27795 Novi Rd.	F100	Novi	MI	48377	\N	\N	\N	\N	\N
116	8375/2424-Summit Sierra	8375	2424	13957 S. Virginia St.	Pad 2	Reno	NV	89511	\N	\N	\N	\N	\N
117	8562/2503-Spotsylvania	8562	2503	3102 Plank Rd	0	Fredericksburg	VA	22401	\N	\N	\N	\N	\N
118	8376/2425-ABQ Uptown	8376	2425	2260 Louisiana Blvd. N.E.  Ste. 1A	1A	Albuquerque	NM	87110	\N	\N	\N	\N	\N
119	8235/465-Eastgate Power Center	8235	465	1071 W. Sunset Rd.	\N	Henderson	NV	89014	\N	\N	\N	\N	\N
120	8377/2430-Legacy Place	8377	2430	11360 Legacy Ave.  Ste. 100	Bldg Retail C	Palm Beach Gardens	FL	33410	\N	\N	\N	\N	\N
121	8560/2513-Boulevard Consumer Square	8560	2513	1591 Niagara Falls Blvd.	\N	Amherst	NY	14228	\N	\N	\N	\N	\N
122	8371/2420-St. Johns Town Center	8371	2420	4647 Town Center Pkwy.	\N	Jacksonville	FL	32246	\N	\N	\N	\N	\N
123	9237/481-Utica Park Place	9237	481	45011 Park Ave.	\N	Utica	MI	48315	\N	\N	\N	\N	\N
124	8372/2421-Walden Village	8372	2421	2009 Walden Ave.	\N	Cheektowaga	NY	14225	\N	\N	\N	\N	\N
125	9236/477-Montrose Centre	9236	477	3900 Medina Rd.	\N	Montrose	OH	44333	\N	\N	\N	\N	\N
126	8373/2422-Westfield Southlake-Outparcel	8373	2422	2196 Southlake Mall	\N	Merrillville	IN	46410	\N	\N	\N	\N	\N
127	9235/482-Centennial Promenade	9235	482	9535 E. County Line Rd.	\N	Englewood	CO	80112	\N	\N	\N	\N	\N
128	8230/457-Orland Park Place	8230	457	15341 LaGrange Rd.	\N	Orland park	IL	60462	\N	\N	\N	\N	\N
129	8432/2483-Monmouth Mall	8432	2483	184 Highway 35	\N	Eatontown	NJ	07724	\N	\N	\N	\N	\N
130	8229/456-Shops at Orchard Place	8229	456	9747 Skokie Blvd.	\N	Skokie	IL	60077	\N	\N	\N	\N	\N
131	8435/2427-Plaza Bonita	8435	2427	2960 Plaza Bonita Rd	\N	National City	CA	91950	\N	\N	\N	\N	\N
132	8436/2472-Westfield Mission Valley	8436	2472	1025 Camino De La Reina, Suite 1	\N	San Diego	CA	92108	\N	\N	\N	\N	\N
133	8558/2509-Willow Grove	8558	2509	10 Park Ave	\N	Willow Grove	PA	19090	\N	\N	\N	\N	\N
134	8433/2482-Bergen Town Center	8433	2482	1500 Bergen Town Center	\N	Paramus	NJ	07652	\N	\N	\N	\N	\N
135	8559/2512-Lake Grove Commons	8559	2512	150 New Moriches Rd	\N	Lake Grove	NY	11755	\N	\N	\N	\N	\N
136	8434/2467-Tanasbourne	8434	2467	19200 NW Cornell Road	Retail 2	Hillsboro	OR	97124	\N	\N	\N	\N	\N
137	9287/490-Willowbrook	9287	490	7400 FM 1960 W.	\N	Houston	TX	77070	\N	\N	\N	\N	\N
138	9288/494-Shops at North East Mall	9288	494	1330 Pipeline Rd.	C07	Hurst	TX	76053	\N	\N	\N	\N	\N
139	9289/461-Polaris Towne Center	9289	461	1499 Polaris Pkwy.	\N	Columbus	OH	43240	\N	\N	\N	\N	\N
140	8570/2510-The Plaza@Southpark	8570	2510	16760 Royalton Rd.	\N	Strongsville	OH	44136	\N	\N	\N	\N	\N
141	9281/471-Towson Place	9281	471	1238 Putty Hill Ave.	\N	Towson	MD	21286	\N	\N	\N	\N	\N
142	9283/466-Franklin Park	9283	466	5011 Monroe St.	\N	Toledo	OH	43623	\N	\N	\N	\N	\N
143	9285/472-Boynton Commons	9285	472	367 N. Congress Ave.	\N	Boynton Beach	FL	33426	\N	\N	\N	\N	\N
144	9286/474-Great Lakes Crossing	9286	474	3960 Baldwin Rd.	\N	Auburn Hills	MI	48326	\N	\N	\N	\N	\N
145	8262/436-Gwinnett Place/Pleasant Hill Rd.	8262	436	2150 Pleasant Hill Rd. NW	\N	Duluth	GA	30096	\N	\N	\N	\N	\N
146	8569/2511-Pike Center	8569	2511	12101 Rockville Pike	0	Rockville	MD	20852	\N	\N	\N	\N	\N
147	8263/446-Jay Scutti Plaza North	8263	446	300 Hylan Dr.	\N	Rochester	NY	14623	\N	\N	\N	\N	\N
148	8260/435-Marketplace at Stonecrest	8260	435	3001 Turner Hill Rd.	Prcl D1	Lithonia	GA	30038	\N	\N	\N	\N	\N
149	8261/437-West TowneMall/Gammon Rd.	8261	437	505 S. Gammon Rd.	\N	Madison	WI	53719	\N	\N	\N	\N	\N
150	8360/2410-St. Louis Mills	8360	2410	1700 St. Louis Mills Cir.	\N	Hazelwood	MO	63042	\N	\N	\N	\N	\N
151	8362/2412-Algonquin Commons	8362	2412	1504 Randall Rd.  Spc. 14000	\N	Algonquin	IL	60102	\N	\N	\N	\N	\N
152	8361/2411-Boulevard	8361	2411	21 The Boulevard Saint Louis	\N	Richmond Heights	MO	63117	\N	\N	\N	\N	\N
153	8364/2414-Dana Park	8364	2414	1750 S. Valvista Dr.	\N	Mesa	AZ	85204	\N	\N	\N	\N	\N
154	8363/2413-SEC Oracle & Wetmore	8363	2413	4240 N. Oracle Rd.	Pad 3	Tucson	AZ	85705	\N	\N	\N	\N	\N
155	8366/2416-Metairie	8366	2416	3400 Veterans Memorial Blvd.	\N	Metairie	LA	70002	\N	\N	\N	\N	\N
156	8365/2415-Plantation	8365	2415	12260 W.Sunrise Blvd.	\N	Plantation	FL	33323	\N	\N	\N	\N	\N
157	8368/2418-Uptown Altamonte	8368	2418	229 E. Altamonte Dr.  Ste. 1100	\N	Altamonte Springs	FL	32701	\N	\N	\N	\N	\N
158	8267/431-Kendall Village Cnt./SW 88th St.	8267	431	12355 SW 88th St.	Bldg B	Miami	FL	33186	\N	\N	\N	\N	\N
159	8367/2417-Jordan Creek	8367	2417	101 Jordan Creek Pky.  Ste. 12560	12560	West Des Moines	IA	50266	\N	\N	\N	\N	\N
160	8369/2408-Shoppes at Fountain Square	8369	2408	16070 W. Bluemound Rd.	\N	Brookfield	WI	53005	\N	\N	\N	\N	\N
161	9298/458-Thoroughbred Village	9298	458	549 Cool Springs Blvd.	\N	Franklin	TN	37067	\N	\N	\N	\N	\N
162	9292/497-Baybrook Gateway Shopping Center	9292	497	1045 W. Bay Area Blvd.	\N	Webster	TX	77598	\N	\N	\N	\N	\N
163	9293/468-Landings at Arbor Place	9293	468	9310 The Landings Dr.	\N	Douglasville	GA	30135	\N	\N	\N	\N	\N
164	9290/499-Memorial City	9290	499	9829 Katy Freeway	\N	Houston	TX	77024	\N	\N	\N	\N	\N
165	9291/473-Casa Paloma Shopping Center	9291	473	7181 W. Ray Rd.	\N	Chandler	AZ	85226	\N	\N	\N	\N	\N
166	9294/459-Town Center @ Cobb	9294	459	605 W. Barret Pkwy.  Bldg. 200	\N	Kennesaw	GA	30144	\N	\N	\N	\N	\N
167	9295/460-Marketplace Mill Creek	9295	460	3005 Mall of Georgia Blvd.	\N	Buford	GA	30519	\N	\N	\N	\N	\N
168	8250/470-Arundel Mills	8250	470	7684 Arundel Mills Blvd.	BlockELot5	Hanover	MD	21076	\N	\N	\N	\N	\N
169	8251/428-Rivergate Parkway	8251	428	914 Rivergate Pkwy.	\N	Goodlettsville	TN	37072	\N	\N	\N	\N	\N
170	8351/424-Capital Boulevard	8351	424	6100 Capital Blvd.	\N	Raleigh	NC	27616	\N	\N	\N	\N	\N
171	8257/462-Fountain Square of Lombard	8257	462	2370 Fountain Square Dr.	\N	Lombard	IL	60148	\N	\N	\N	\N	\N
172	8355/2403-Maplewood Mall-Outparcel	8355	2403	3081 White Bear Ave. N	\N	St. Paul	MN	55109	\N	\N	\N	\N	\N
173	8258/420-Holiday Centre	8258	420	3767 William Penn Hwy.	\N	Monroeville	PA	15146	\N	\N	\N	\N	\N
174	8354/2402-Shoppes at Arbor Lakes	8354	2402	11905 Elm Creek Blvd. N.	\N	Maple Grove	MN	55369	\N	\N	\N	\N	\N
175	8353/2400-Hulen Mall	8353	2400	4750 South Hulen St.	\N	Fort Worth	TX	76132	\N	\N	\N	\N	\N
176	8352/467-Park Place	8352	467	4503 Ashford-Dunwoody Rd.	D	Atlanta	GA	30346	\N	\N	\N	\N	\N
177	8359/2409-Deerbrook Mall	8359	2409	10027 FM 1960 Bypass	\N	Humble	TX	77338	\N	\N	\N	\N	\N
178	8254/425-Carolina Place Parkway	8254	425	9530 Pineville Matthews Rd.	\N	Pineville	NC	28134	\N	\N	\N	\N	\N
179	8276/419-Ross Park/McKnight Rd.	8276	419	7381 McKnight Rd.	\N	Pittsburgh	PA	15237	\N	\N	\N	\N	\N
180	8277/415-Parkway Square Shopping Center	8277	415	16840 Southcenter Pkwy.	\N	Tukwila	WA	98188	\N	\N	\N	\N	\N
181	8278/416-Lincoln Plaza Shopping Center	8278	416	2501 South 38th St.  #C100	C100	Tacoma	WA	98409	\N	\N	\N	\N	\N
182	8279/414-Golde Creek Plaza II	8279	414	2925 196th St. SW	\N	Lynnwood	WA	98036	\N	\N	\N	\N	\N
183	8621/3206-Pearlridge Center	8621	3206	98-1005 Moanalua Rd	Suite 850	Aiea	HI	96701	\N	\N	\N	\N	\N
184	8617/2586-Chestnut Hill	8617	2586	200 Boylston St	Suite 220	Chestnut Hill	MA	02647	\N	\N	\N	\N	\N
185	8443/2532-Federal Highway	8443	2532	2646 NW Federal Hwy.	\N	Stuart	FL	34994	\N	\N	\N	\N	\N
186	8454/2554-Louis Joliet	8454	2554	1524 Louis Joliet Mall	\N	Joliet	IL	60431	\N	\N	\N	\N	\N
187	8430/2525-Riverchase Galleria	8430	2525	2460 Galleria Circle	\N	Hoover	AL	35244	\N	\N	\N	\N	\N
188	8591/2562-French Quarter	8591	2562	4574 S. Broadway Ave	\N	Tyler	TX	75703	\N	\N	\N	\N	\N
189	8601/1047-The Meadows	8601	1047	4300 Meadows LN	\N	Las Vegas	NV	89107	\N	\N	\N	\N	\N
190	8611/2583-Stonefield Parcel	8611	2583	3928 Lenox Ave	\N	Charlottesville	VA	22901	\N	\N	\N	\N	\N
191	8444/2527-Glenbrook Sq	8444	2527	4335 Coldwater Rd.	\N	Fort Wayne	IN	46805	\N	\N	\N	\N	\N
192	8268/2594-FSK Mall	8268	2594	5617 Spectrum Dr.	\N	Frederick	MD	21703	\N	\N	\N	\N	\N
193	8984/2518-Braintree	8984	2518	20 Forbes Rd.	\N	Braintree	MA	02184	\N	\N	\N	\N	\N
194	8576/2555-Fashion Square	8576	2555	7415 Market St	\N	Boardman	OH	44512	\N	\N	\N	\N	\N
195	8425/2522-Biscayne Blvd.	8425	2522	19001 Biscayne Blvd.	\N	Aventura	FL	33180	\N	\N	\N	\N	\N
196	8457/1156-Lynnhaven	8457	1156	701 Lynnhaven Pkwy	Spc H04	Virginia Beach	VA	23452	\N	\N	\N	\N	\N
197	8446/2544-Magnolia Park	8446	2544	1025 Woodruff Rd.	Suite C101	Greenville	SC	29607	\N	\N	\N	\N	\N
198	8442/2536-Canyon West	8442	2536	5013 Milwaukee Ave.	\N	Lubbock	TX	79407	\N	\N	\N	\N	\N
199	8554/4029-Woodburry Common	8554	4029	889 Grape Vine Court	\N	Central Valley	NY	10917	\N	\N	\N	\N	\N
200	8456/2584-MarketPlace Sq	8456	2584	1174 South Washington St.	\N	North Attleborough	MA	02760	\N	\N	\N	\N	\N
201	8582/3202-SanTan Village	8582	3202	2200 E. Williams Field Rm 101	\N	Gilbert	AZ	85296	\N	\N	\N	\N	\N
202	8615/2585-Winchester Mktplc	8615	2585	40825 Winchester Road	\N	Temecula	CA	92591	\N	\N	\N	\N	\N
203	8588/2570-Legacy Place	8588	2570	404 Legacy Place	\N	Dedham	MA	02026	\N	\N	\N	\N	\N
204	8602/1993 -Westland Mall	8602	1993	1675 W. 9th St	\N	Hialeah	FL	33012	\N	\N	\N	\N	\N
205	8986/2516-Brea Plaza	8986	2516	1631 East Imperial Hwy.	\N	Brea	CA	92821	\N	\N	\N	\N	\N
206	8561/665-Willow Lake Crossing	8561	665	2911 Watson Blvd	\N	Warner Robbins	GA	31093	\N	\N	\N	\N	\N
207	8581/3201-Mall in Columbia	8581	3201	10300 Little Patuxent Ste 1975	\N	Columbia	MD	21044	\N	\N	\N	\N	\N
208	1017/1017-SJIM	1017	1017	125 Logan Parkway	Attn: Zale Receiving	Akron	OH	44319	\N	\N	\N	\N	\N
209	8450/2547-Shops at La Palmera	8450	2547	4954 S. Staples St.	\N	Corpus Christi	TX	78411	\N	\N	\N	\N	\N
210	0000-Diamond Room	\N	\N	375 Ghent Rd	\N	Akron	OH	44333	\N	\N	\N	\N	\N
211	8448/2546-Fountains at Farah	8448	2546	8889 Gateway W. Blvd.	Ste. 3100	El Paso	TX	79925	\N	\N	\N	\N	\N
212	8577/2563-Metro Pointe	8577	2563	901 South Coast Dr	\N	Costa Mesa	CA	92626	\N	\N	\N	\N	\N
213	8590/2557-North Point	8590	2557	6250 N. Point Parkway	\N	Alpharetta	GA	30022	\N	\N	\N	\N	\N
214	8599/2850 Waterford Lakes	8599	2850	549 N. Alafaya Trail	\N	Orlando	FL	32826	\N	\N	\N	\N	\N
215	8604/2692 - Tanger Outlet	8604	2692	1645 PARKWAY, STE 980	\N	Sevierville	TN	37862	\N	\N	\N	\N	\N
216	8441/2539-Station Park	8441	2539	300 N. Union Ave.	\N	Farmington	UT	84025	\N	\N	\N	\N	\N
217	8583/3203-Mentor	8583	3203	7850 Mentor Ave., Rm. 346	\N	Mentor	OH	44060	\N	\N	\N	\N	\N
218	8594/2564-River Walk	8594	2564	10600 Stockdale Hwy	\N	Bakersfield	CA	93311	\N	\N	\N	\N	\N
219	8605/2572-McGowin Park	8605	2572	3085 Government Blvd	\N	Mobile	AL	36606	\N	\N	\N	\N	\N
220	9325/3307-Cattleman	9325	3307	67 North Catlleman Road	Unit #1	Sarasota	FL	34243	\N	\N	\N	\N	\N
221	8575/2548-Chatham Plaza	8575	2548	7805 Abercorn St.	Suite 1A	Savannah	GA	31406	\N	\N	\N	\N	\N
222	8597/2565-Chase Corner	8597	2565	1490 Taylor Rd	\N	Montgomery	AL	36117	\N	\N	\N	\N	\N
223	8538/2529-The Woodlands	8538	2529	1475 Lake Woodlands Dr.	\N	The Woodlands	TX	77380	\N	\N	\N	\N	\N
224	8584/3204-Mall of America	8584	3204	278 W. Market St.	\N	Bloomington	MN	55425	\N	\N	\N	\N	\N
225	8439/2528-Eastland Mall	8439	2528	700 N. Green River Rd.	\N	Evansville	IN	47715	\N	\N	\N	\N	\N
226	8606/2571-Cordova Mall	8606	2571	5410 N. 9th Ave	\N	Pensecola	FL	32504	\N	\N	\N	\N	\N
227	8440/2540-San Antonio Center	8440	2540	685 San Antonio Road	Suite 19	Mountain View	CA	94040	\N	\N	\N	\N	\N
228	8578/2561-Asheville Market	8578	2561	4 South Tunnel Rd.	Suite 900	Asheville	NC	28805	\N	\N	\N	\N	\N
229	8580/3200-White Marsh Mall	8580	3200	8200 Perry Hall Blvd., Ste. 1076	\N	Baltimore	MD	21236	\N	\N	\N	\N	\N
230	8453/2553-Southpark	8453	2553	852 Southpark Ctr.	\N	Strongsville	OH	44136	\N	\N	\N	\N	\N
231	8438/2559-Park North	8438	2559	7427 San Pedro Ave	\N	San Antonio	TX	78216	\N	\N	\N	\N	\N
232	8987/2520-Columbiana Center	8987	2520	343 Harbison Blvd.	\N	Columbia	SC	29212	\N	\N	\N	\N	\N
233	8445/2543-Ashley Park	8445	2543	336 Newnan Crossing Bypass	\N	Newnan	GA	30263	\N	\N	\N	\N	\N
234	8449/2542-Midland Park	8449	2542	4515 N. Midkiff Rd.	\N	Midland	TX	79705	\N	\N	\N	\N	\N
235	8572/2550-Millcreek Marketplace	8572	2550	2081 Interchange Rd.	\N	Erie	PA	16059	\N	\N	\N	\N	\N
236	8579/2558-Carmel Mtn	8579	2558	11998 Carmel Mountain Rd.	\N	San Diego	CA	92128	\N	\N	\N	\N	\N
237	8447/2530-Carle Place NY	8447	2530	195 Old Country Road	\N	Carle Place	NY	11514	\N	\N	\N	\N	\N
238	8573/2552-Amb Row Cy	8573	2552	3601 Ambassador Caffery Pkwy	\N	Lafayette	LA	70503	\N	\N	\N	\N	\N
239	9324/2531 La Plaza Mall	9324	2531	2204 S 10th St.	\N	McAllen	TX	78501	\N	\N	\N	\N	\N
240	8335/1796-Floroence	8335	1796	2062 Florence Mall Rd	Spc 2062	Florence	KY	41042	\N	\N	\N	\N	\N
241	8985/2519-Mall of Louisiana	8985	2519	6071 Bluebonnet Blvd.	\N	Baton Rouge	LA	70809	\N	\N	\N	\N	\N
242	8431/2517-St. Matthews	8431	2517	5000 Shelbyville Rd.	\N	Louisville	KY	40207	\N	\N	\N	\N	\N
243	8452/2534-Corbin's Corner	8452	2534	1505 New Britain Ave	\N	W. Hartford	CT	06110	\N	\N	\N	\N	\N
244	8424/2521-Hanes Mall Blvd.	8424	2521	1976 S. Stratford Rd.	\N	Winston-Salem	NC	27103	\N	\N	\N	\N	\N
245	8612/2578-Lindale Mall	8612	2578	159 Collins Rd NE	\N	Cedar Rapids	IA	52402	\N	\N	\N	\N	\N
246	8427/2524-Park Plaza	8427	2524	310 S. University Ave.	\N	Little Rock	AR	77205	\N	\N	\N	\N	\N
247	8574/2551-Market Place	8574	2551	3017 El Camino Real	\N	Tustin	CA	92782	\N	\N	\N	\N	\N
248	8451/2541-Los Cerritos	8451	2541	18711 Gridley Rd	\N	Cerritos	CA	90703	\N	\N	\N	\N	\N
249	8607/2575-Town Place	8607	2575	941 Haddonfiled Rd Ste 1	\N	Cherry Hill	NJ	08002	\N	\N	\N	\N	\N
250	8589/2549-Harrisburg Pike	8589	2549	1476 Harrisburg Pike	\N	Lancaster	PA	17601	\N	\N	\N	\N	\N
251	8600/180 - Tyrone Square	8600	180	6901 22ND AVENUE N.	\N	St. Petersburg	FL	33710	\N	\N	\N	\N	\N
252	8598/2566-Christiana	8598	2566	2110 Fashion Center Blvd	\N	Newark	DE	19702	\N	\N	\N	\N	\N
253	8592/2569-Destiny USA	8592	2569	10381 Destiny USA Dr.	\N	Syracuse	NY	13204	\N	\N	\N	\N	\N
254	8585/3205-Mayfair Mall	8585	3205	2500 N. Mayfair Rd.	\N	Wautwatosa	WI	53226	\N	\N	\N	\N	\N
255	8610/2576-Hawthorne	8610	2576	22135 Hawthorne Blvd	\N	Torrance	CA	90503	\N	\N	\N	\N	\N
256	8595/2568-Warwick Mall	8595	2568	205 Lambert Lind Hwy	\N	Warwick	RI	02886	\N	\N	\N	\N	\N
257	8426/2523-Oxford Valley Mall	8426	2523	750 Middletown Blvd.	\N	Langhorne	PA	19047	\N	\N	\N	\N	\N
258	8593/2560-South Westnedge	8593	2560	6307 S. Westnedge Ave	\N	Portage	MI	49024	\N	\N	\N	\N	\N
259	8608/2574-Bridge Street	8608	2574	200 Bridge Street NW	\N	Huntsville	AL	35806	\N	\N	\N	\N	\N
260	8616/2579-Wayne Town Center	8616	2579	115 Route 23	\N	Wayne	NJ	07470	\N	\N	\N	\N	\N
\.


--
-- Name: rmm_shop_rmm_shop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rmm_shop_rmm_shop_id_seq', 260, true);


--
-- Name: rmm_shop rmm_shop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rmm_shop
    ADD CONSTRAINT rmm_shop_pkey PRIMARY KEY (rmm_shop_id);


--
-- PostgreSQL database dump complete
--

