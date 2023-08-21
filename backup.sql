--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Homebrew)
-- Dumped by pg_dump version 15.4 (Homebrew)

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
-- Name: users; Type: TABLE; Schema: public; Owner: mathius
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255),
    phone character varying(255) DEFAULT 'no-photo.png'::character varying,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO mathius;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: mathius
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO mathius;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mathius
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: mathius
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mathius
--

COPY public.users (id, username, email, password, phone, created_at) FROM stdin;
2	yerin	yerin@gmail.com	123	no-photo.png	2023-08-20 17:30:53.688585
3	umji	umji@gmail.com	123	no-photo.png	2023-08-20 17:30:53.688585
4	eunha	eunha@gmail.com	123	no-photo.png	2023-08-20 17:30:53.688585
5	sowon	sowon@gmail.com	123	no-photo.png	2023-08-20 17:30:53.688585
6	admin	admon@gmail.com	admin	no-photo.png	2023-08-21 12:37:56.670683
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mathius
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- Name: users email_unik; Type: CONSTRAINT; Schema: public; Owner: mathius
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT email_unik UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: mathius
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

