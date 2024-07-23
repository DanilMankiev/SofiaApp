--
-- PostgreSQL database cluster dump
--

-- Started on 2024-07-23 17:37:46

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--
--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3

-- Started on 2024-07-23 17:37:46

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

-- Completed on 2024-07-23 17:37:47

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3

-- Started on 2024-07-23 17:37:47

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
-- TOC entry 225 (class 1259 OID 16449)
-- Name: attributes_value; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attributes_value (
    id integer NOT NULL,
    productid integer,
    attibuteid integer,
    value text
);


ALTER TABLE public.attributes_value OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16448)
-- Name: attributes_value_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attributes_value_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attributes_value_id_seq OWNER TO postgres;

--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 224
-- Name: attributes_value_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attributes_value_id_seq OWNED BY public.attributes_value.id;


--
-- TOC entry 217 (class 1259 OID 16400)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    parentid integer
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16399)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO postgres;

--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 216
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 219 (class 1259 OID 16412)
-- Name: companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companies (
    id integer NOT NULL,
    name text,
    description text,
    image text
);


ALTER TABLE public.companies OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16411)
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.companies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.companies_id_seq OWNER TO postgres;

--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 218
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- TOC entry 228 (class 1259 OID 24623)
-- Name: company_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company_tags (
    tagsid integer,
    companyid integer
);


ALTER TABLE public.company_tags OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 24636)
-- Name: favorites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorites (
    userid text,
    productid integer
);


ALTER TABLE public.favorites OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16440)
-- Name: product_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_attributes (
    id integer NOT NULL,
    name text
);


ALTER TABLE public.product_attributes OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16439)
-- Name: product_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_attributes_id_seq OWNER TO postgres;

--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 222
-- Name: product_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_attributes_id_seq OWNED BY public.product_attributes.id;


--
-- TOC entry 221 (class 1259 OID 16421)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    title text,
    imagepreview text,
    imageall text[],
    description text,
    categoryid integer,
    price integer,
    companyid integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16420)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 220
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 227 (class 1259 OID 24617)
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 24616)
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tags_id_seq OWNER TO postgres;

--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 226
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- TOC entry 215 (class 1259 OID 16388)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id text NOT NULL,
    name character varying(255),
    email character varying(255),
    phone character varying(20),
    role character varying(20),
    birthdate character varying(20)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 32768)
-- Name: users_tmp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_tmp (
    id text NOT NULL,
    name character varying(255),
    email character varying(255),
    phone character varying(20),
    role character varying(20),
    code character varying(10),
    birthdate character varying(20)
);


ALTER TABLE public.users_tmp OWNER TO postgres;

--
-- TOC entry 3248 (class 2604 OID 16452)
-- Name: attributes_value id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attributes_value ALTER COLUMN id SET DEFAULT nextval('public.attributes_value_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 16403)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 16415)
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- TOC entry 3247 (class 2604 OID 16443)
-- Name: product_attributes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_attributes ALTER COLUMN id SET DEFAULT nextval('public.product_attributes_id_seq'::regclass);


--
-- TOC entry 3246 (class 2604 OID 16424)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 3249 (class 2604 OID 24620)
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- TOC entry 3434 (class 0 OID 16449)
-- Dependencies: 225
-- Data for Name: attributes_value; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attributes_value (id, productid, attibuteid, value) FROM stdin;
\.


--
-- TOC entry 3426 (class 0 OID 16400)
-- Dependencies: 217
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name, parentid) FROM stdin;
13	table	\N
14	table_with_choko	\N
15	table_with_chokoislav	13
\.


--
-- TOC entry 3428 (class 0 OID 16412)
-- Dependencies: 219
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.companies (id, name, description, image) FROM stdin;
\.


--
-- TOC entry 3437 (class 0 OID 24623)
-- Dependencies: 228
-- Data for Name: company_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company_tags (tagsid, companyid) FROM stdin;
\.


--
-- TOC entry 3438 (class 0 OID 24636)
-- Dependencies: 229
-- Data for Name: favorites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favorites (userid, productid) FROM stdin;
\.


--
-- TOC entry 3432 (class 0 OID 16440)
-- Dependencies: 223
-- Data for Name: product_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_attributes (id, name) FROM stdin;
\.


--
-- TOC entry 3430 (class 0 OID 16421)
-- Dependencies: 221
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, title, imagepreview, imageall, description, categoryid, price, companyid) FROM stdin;
\.


--
-- TOC entry 3436 (class 0 OID 24617)
-- Dependencies: 227
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags (id, name) FROM stdin;
\.


--
-- TOC entry 3424 (class 0 OID 16388)
-- Dependencies: 215
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, phone, role, birthdate) FROM stdin;
\.


--
-- TOC entry 3439 (class 0 OID 32768)
-- Dependencies: 230
-- Data for Name: users_tmp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_tmp (id, name, email, phone, role, code, birthdate) FROM stdin;
\.


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 224
-- Name: attributes_value_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attributes_value_id_seq', 1, false);


--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 216
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 15, true);


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 218
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.companies_id_seq', 1, false);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 222
-- Name: product_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_attributes_id_seq', 1, false);


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 220
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 226
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- TOC entry 3265 (class 2606 OID 16456)
-- Name: attributes_value attributes_value_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attributes_value
    ADD CONSTRAINT attributes_value_pkey PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 16405)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3259 (class 2606 OID 16419)
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- TOC entry 3263 (class 2606 OID 16447)
-- Name: product_attributes product_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_attributes
    ADD CONSTRAINT product_attributes_pkey PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 16428)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 24622)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 3251 (class 2606 OID 16396)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 3253 (class 2606 OID 16398)
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- TOC entry 3255 (class 2606 OID 16394)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 32774)
-- Name: users_tmp users_tmp_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_tmp
    ADD CONSTRAINT users_tmp_email_key UNIQUE (email);


--
-- TOC entry 3271 (class 2606 OID 32776)
-- Name: users_tmp users_tmp_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_tmp
    ADD CONSTRAINT users_tmp_phone_key UNIQUE (phone);


--
-- TOC entry 3275 (class 2606 OID 16462)
-- Name: attributes_value attributes_value_attibuteid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attributes_value
    ADD CONSTRAINT attributes_value_attibuteid_fkey FOREIGN KEY (attibuteid) REFERENCES public.product_attributes(id);


--
-- TOC entry 3276 (class 2606 OID 16457)
-- Name: attributes_value attributes_value_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attributes_value
    ADD CONSTRAINT attributes_value_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(id);


--
-- TOC entry 3272 (class 2606 OID 16406)
-- Name: categories categories_parentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parentid_fkey FOREIGN KEY (parentid) REFERENCES public.categories(id);


--
-- TOC entry 3277 (class 2606 OID 24631)
-- Name: company_tags company_tags_companyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_tags
    ADD CONSTRAINT company_tags_companyid_fkey FOREIGN KEY (companyid) REFERENCES public.companies(id);


--
-- TOC entry 3278 (class 2606 OID 24626)
-- Name: company_tags company_tags_tagsid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_tags
    ADD CONSTRAINT company_tags_tagsid_fkey FOREIGN KEY (tagsid) REFERENCES public.tags(id);


--
-- TOC entry 3279 (class 2606 OID 24646)
-- Name: favorites favorites_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(id);


--
-- TOC entry 3280 (class 2606 OID 24641)
-- Name: favorites favorites_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id);


--
-- TOC entry 3273 (class 2606 OID 16429)
-- Name: products products_categoryid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.categories(id);


--
-- TOC entry 3274 (class 2606 OID 16434)
-- Name: products products_companyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_companyid_fkey FOREIGN KEY (companyid) REFERENCES public.companies(id);


-- Completed on 2024-07-23 17:37:47

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-07-23 17:37:47

--
-- PostgreSQL database cluster dump complete
--

