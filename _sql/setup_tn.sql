--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.9
-- Dumped by pg_dump version 9.5.1

-- Started on 2017-07-25 15:48:27

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 9 (class 2615 OID 183681816)
-- Name: tn; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA tn;


--
-- TOC entry 4819 (class 0 OID 0)
-- Dependencies: 9
-- Name: SCHEMA tn; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA tn IS 'Schemata für Gemeinsame Elemente von Transport Network';


SET search_path = tn, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 190 (class 1259 OID 183681821)
-- Name: accessrestriction; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE accessrestriction (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    nilreason text,
    restriction_href text
);


--
-- TOC entry 191 (class 1259 OID 183681827)
-- Name: accessrestriction_networkref; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE accessrestriction_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 192 (class 1259 OID 183681833)
-- Name: accessrestriction_networkref_id_seq; Type: SEQUENCE; Schema: tn; Owner: -
--

CREATE SEQUENCE accessrestriction_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 192
-- Name: accessrestriction_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tn; Owner: -
--

ALTER SEQUENCE accessrestriction_networkref_id_seq OWNED BY accessrestriction_networkref.id;


--
-- TOC entry 193 (class 1259 OID 183681835)
-- Name: conditionoffacility; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE conditionoffacility (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    nilreason text,
    currentstatus_href text
);


--
-- TOC entry 194 (class 1259 OID 183681841)
-- Name: conditionoffacility_networkref; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE conditionoffacility_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 195 (class 1259 OID 183681847)
-- Name: conditionoffacility_networkref_id_seq; Type: SEQUENCE; Schema: tn; Owner: -
--

CREATE SEQUENCE conditionoffacility_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 195
-- Name: conditionoffacility_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tn; Owner: -
--

ALTER SEQUENCE conditionoffacility_networkref_id_seq OWNED BY conditionoffacility_networkref.id;


--
-- TOC entry 196 (class 1259 OID 183681849)
-- Name: verticalposition; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE verticalposition (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    verticalposition text
);


--
-- TOC entry 197 (class 1259 OID 183681855)
-- Name: verticalposition_networkref; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE verticalposition_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 198 (class 1259 OID 183681861)
-- Name: verticalposition_networkref_id_seq; Type: SEQUENCE; Schema: tn; Owner: -
--

CREATE SEQUENCE verticalposition_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 198
-- Name: verticalposition_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tn; Owner: -
--

ALTER SEQUENCE verticalposition_networkref_id_seq OWNED BY verticalposition_networkref.id;


--
-- TOC entry 4684 (class 2604 OID 183682517)
-- Name: id; Type: DEFAULT; Schema: tn; Owner: -
--

ALTER TABLE ONLY accessrestriction_networkref ALTER COLUMN id SET DEFAULT nextval('accessrestriction_networkref_id_seq'::regclass);


--
-- TOC entry 4685 (class 2604 OID 183682518)
-- Name: id; Type: DEFAULT; Schema: tn; Owner: -
--

ALTER TABLE ONLY conditionoffacility_networkref ALTER COLUMN id SET DEFAULT nextval('conditionoffacility_networkref_id_seq'::regclass);


--
-- TOC entry 4686 (class 2604 OID 183682519)
-- Name: id; Type: DEFAULT; Schema: tn; Owner: -
--

ALTER TABLE ONLY verticalposition_networkref ALTER COLUMN id SET DEFAULT nextval('verticalposition_networkref_id_seq'::regclass);


--
-- TOC entry 4690 (class 2606 OID 183682575)
-- Name: accessrestriction_networkref_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY accessrestriction_networkref
    ADD CONSTRAINT accessrestriction_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4688 (class 2606 OID 183682577)
-- Name: accessrestriction_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY accessrestriction
    ADD CONSTRAINT accessrestriction_pkey PRIMARY KEY (localid);


--
-- TOC entry 4694 (class 2606 OID 183682579)
-- Name: conditionoffacility_networkref_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY conditionoffacility_networkref
    ADD CONSTRAINT conditionoffacility_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4692 (class 2606 OID 183682581)
-- Name: conditionoffacility_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY conditionoffacility
    ADD CONSTRAINT conditionoffacility_pkey PRIMARY KEY (localid);


--
-- TOC entry 4698 (class 2606 OID 183682583)
-- Name: verticalposition_networkref_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY verticalposition_networkref
    ADD CONSTRAINT verticalposition_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4696 (class 2606 OID 183682585)
-- Name: verticalposition_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY verticalposition
    ADD CONSTRAINT verticalposition_pkey PRIMARY KEY (localid);


--
-- TOC entry 4699 (class 2606 OID 183682781)
-- Name: accessrestriction_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY accessrestriction_networkref
    ADD CONSTRAINT accessrestriction_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES accessrestriction(localid) ON DELETE CASCADE;


--
-- TOC entry 4700 (class 2606 OID 183682786)
-- Name: conditionoffacility_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY conditionoffacility_networkref
    ADD CONSTRAINT conditionoffacility_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES conditionoffacility(localid) ON DELETE CASCADE;


--
-- TOC entry 4701 (class 2606 OID 183682791)
-- Name: verticalposition_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY verticalposition_networkref
    ADD CONSTRAINT verticalposition_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES verticalposition(localid) ON DELETE CASCADE;


-- Completed on 2017-07-25 15:48:27

--
-- PostgreSQL database dump complete
--

