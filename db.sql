--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg120+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg120+1)

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
-- Name: history; Type: TABLE; Schema: public; Owner: history
--

CREATE TABLE public.history (
    id integer NOT NULL,
    operation text[] NOT NULL,
    result real NOT NULL
);


ALTER TABLE public.history OWNER TO ayomi;

--
-- Name: history_id_seq; Type: SEQUENCE; Schema: public; Owner: history
--

CREATE SEQUENCE public.history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_id_seq OWNER TO ayomi;

--
-- Name: history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayomi
--

ALTER SEQUENCE public.history_id_seq OWNED BY public.history.id;

--
-- Name: history id; Type: DEFAULT; Schema: public; Owner: ayomi
--

ALTER TABLE ONLY public.history ALTER COLUMN id SET DEFAULT nextval('public.history_id_seq'::regclass);

--
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: ayomi
--

COPY public.history (id, operation, result) FROM stdin;
\.


--
-- Name: history history_pkey; Type: CONSTRAINT; Schema: public; Owner: ayomi
--

ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (id);


--
-- Name: history_id_uindex; Type: INDEX; Schema: public; Owner: ayomi
--

CREATE UNIQUE INDEX history_id_uindex ON public.history USING btree (id);


--
-- PostgreSQL database dump complete
--
