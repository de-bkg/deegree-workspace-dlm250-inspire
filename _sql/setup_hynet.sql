--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.9
-- Dumped by pg_dump version 9.5.1

-- Started on 2017-07-25 15:46:54

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 14 (class 2615 OID 197375790)
-- Name: hynet; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA hynet;


--
-- TOC entry 4835 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA hynet; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA hynet IS 'Schemata für INSPIRE HydroNetwork';


SET search_path = hynet, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 344 (class 1259 OID 197375792)
-- Name: hydronode; Type: TABLE; Schema: hynet; Owner: -
--

CREATE TABLE hydronode (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    hydronodecategory_nilreason text,
    hydronodecategory_nil boolean,
    hydronodecategory_fk text,
    hydronodecategory_href text,
    relatedhydroobject_nilreason text,
    relatedhydroobject_href text,
    spring_nilreason text,
    spring_fk text,
    spring_href text,
    damorweir_nilreason text,
    damorweir_fk text,
    damorweir_href text,
    lock_nilreason text,
    lock_fk text,
    lock_href text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 345 (class 1259 OID 197375798)
-- Name: hydronode_gn; Type: TABLE; Schema: hynet; Owner: -
--

CREATE TABLE hydronode_gn (
    id integer NOT NULL,
    parentfk text NOT NULL,
    language text,
    nativeness_href text,
    namestatus_href text,
    sourceofname text,
    nil boolean DEFAULT true,
    nilreason text
);


--
-- TOC entry 346 (class 1259 OID 197375804)
-- Name: hydronode_gn_id_seq; Type: SEQUENCE; Schema: hynet; Owner: -
--

CREATE SEQUENCE hydronode_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4836 (class 0 OID 0)
-- Dependencies: 346
-- Name: hydronode_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hynet; Owner: -
--

ALTER SEQUENCE hydronode_gn_id_seq OWNED BY hydronode_gn.id;


--
-- TOC entry 347 (class 1259 OID 197375806)
-- Name: hydronode_gn_spelling; Type: TABLE; Schema: hynet; Owner: -
--

CREATE TABLE hydronode_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 348 (class 1259 OID 197375812)
-- Name: hydronode_gn_spelling_id_seq; Type: SEQUENCE; Schema: hynet; Owner: -
--

CREATE SEQUENCE hydronode_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4837 (class 0 OID 0)
-- Dependencies: 348
-- Name: hydronode_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hynet; Owner: -
--

ALTER SEQUENCE hydronode_gn_spelling_id_seq OWNED BY hydronode_gn_spelling.id;


--
-- TOC entry 349 (class 1259 OID 197375814)
-- Name: hydronode_hydroid; Type: TABLE; Schema: hynet; Owner: -
--

CREATE TABLE hydronode_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 350 (class 1259 OID 197375820)
-- Name: hydronode_hydroid_id_seq; Type: SEQUENCE; Schema: hynet; Owner: -
--

CREATE SEQUENCE hydronode_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4838 (class 0 OID 0)
-- Dependencies: 350
-- Name: hydronode_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hynet; Owner: -
--

ALTER SEQUENCE hydronode_hydroid_id_seq OWNED BY hydronode_hydroid.id;


--
-- TOC entry 351 (class 1259 OID 197375822)
-- Name: watercourselink; Type: TABLE; Schema: hynet; Owner: -
--

CREATE TABLE watercourselink (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    fictitious boolean,
    flowdirection_nilreason text,
    flowdirection_nil boolean,
    flowdirection_fk text,
    flowdirection_href text,
    length numeric,
    length_nilreason text,
    length_uom text,
    length_nil boolean,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 352 (class 1259 OID 197375828)
-- Name: watercourselink_gn; Type: TABLE; Schema: hynet; Owner: -
--

CREATE TABLE watercourselink_gn (
    id integer NOT NULL,
    parentfk text NOT NULL,
    language text,
    nativeness_href text,
    namestatus_href text,
    sourceofname text,
    nil boolean DEFAULT true,
    nilreason text
);


--
-- TOC entry 353 (class 1259 OID 197375834)
-- Name: watercourselink_gn_id_seq; Type: SEQUENCE; Schema: hynet; Owner: -
--

CREATE SEQUENCE watercourselink_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4839 (class 0 OID 0)
-- Dependencies: 353
-- Name: watercourselink_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hynet; Owner: -
--

ALTER SEQUENCE watercourselink_gn_id_seq OWNED BY watercourselink_gn.id;


--
-- TOC entry 354 (class 1259 OID 197375836)
-- Name: watercourselink_gn_spelling; Type: TABLE; Schema: hynet; Owner: -
--

CREATE TABLE watercourselink_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 355 (class 1259 OID 197375842)
-- Name: watercourselink_gn_spelling_id_seq; Type: SEQUENCE; Schema: hynet; Owner: -
--

CREATE SEQUENCE watercourselink_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4840 (class 0 OID 0)
-- Dependencies: 355
-- Name: watercourselink_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hynet; Owner: -
--

ALTER SEQUENCE watercourselink_gn_spelling_id_seq OWNED BY watercourselink_gn_spelling.id;


--
-- TOC entry 356 (class 1259 OID 197375844)
-- Name: watercourselink_hydroid; Type: TABLE; Schema: hynet; Owner: -
--

CREATE TABLE watercourselink_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 357 (class 1259 OID 197375850)
-- Name: watercourselink_hydroid_id_seq; Type: SEQUENCE; Schema: hynet; Owner: -
--

CREATE SEQUENCE watercourselink_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 357
-- Name: watercourselink_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hynet; Owner: -
--

ALTER SEQUENCE watercourselink_hydroid_id_seq OWNED BY watercourselink_hydroid.id;


--
-- TOC entry 4686 (class 2604 OID 197376188)
-- Name: id; Type: DEFAULT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY hydronode_gn ALTER COLUMN id SET DEFAULT nextval('hydronode_gn_id_seq'::regclass);


--
-- TOC entry 4688 (class 2604 OID 197376189)
-- Name: id; Type: DEFAULT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY hydronode_gn_spelling ALTER COLUMN id SET DEFAULT nextval('hydronode_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4689 (class 2604 OID 197376190)
-- Name: id; Type: DEFAULT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY hydronode_hydroid ALTER COLUMN id SET DEFAULT nextval('hydronode_hydroid_id_seq'::regclass);


--
-- TOC entry 4690 (class 2604 OID 197376191)
-- Name: id; Type: DEFAULT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY watercourselink_gn ALTER COLUMN id SET DEFAULT nextval('watercourselink_gn_id_seq'::regclass);


--
-- TOC entry 4692 (class 2604 OID 197376192)
-- Name: id; Type: DEFAULT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY watercourselink_gn_spelling ALTER COLUMN id SET DEFAULT nextval('watercourselink_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4693 (class 2604 OID 197376193)
-- Name: id; Type: DEFAULT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY watercourselink_hydroid ALTER COLUMN id SET DEFAULT nextval('watercourselink_hydroid_id_seq'::regclass);


--
-- TOC entry 4698 (class 2606 OID 197382520)
-- Name: hydronode_gn_pkey; Type: CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY hydronode_gn
    ADD CONSTRAINT hydronode_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4700 (class 2606 OID 197382522)
-- Name: hydronode_gn_spelling_pkey; Type: CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY hydronode_gn_spelling
    ADD CONSTRAINT hydronode_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4702 (class 2606 OID 197382524)
-- Name: hydronode_hydroid_pkey; Type: CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY hydronode_hydroid
    ADD CONSTRAINT hydronode_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4696 (class 2606 OID 197382526)
-- Name: hydronode_pkey; Type: CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY hydronode
    ADD CONSTRAINT hydronode_pkey PRIMARY KEY (localid);


--
-- TOC entry 4707 (class 2606 OID 197382528)
-- Name: watercourselink_gn_pkey; Type: CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY watercourselink_gn
    ADD CONSTRAINT watercourselink_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4709 (class 2606 OID 197382530)
-- Name: watercourselink_gn_spelling_pkey; Type: CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY watercourselink_gn_spelling
    ADD CONSTRAINT watercourselink_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4711 (class 2606 OID 197382532)
-- Name: watercourselink_hydroid_pkey; Type: CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY watercourselink_hydroid
    ADD CONSTRAINT watercourselink_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4705 (class 2606 OID 197382534)
-- Name: watercourselink_pkey; Type: CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY watercourselink
    ADD CONSTRAINT watercourselink_pkey PRIMARY KEY (localid);


--
-- TOC entry 4694 (class 1259 OID 197382625)
-- Name: hydronode_geometry_idx; Type: INDEX; Schema: hynet; Owner: -
--

CREATE INDEX hydronode_geometry_idx ON hydronode USING gist (geometry);


--
-- TOC entry 4703 (class 1259 OID 197382626)
-- Name: watercourselink_geometry_idx; Type: INDEX; Schema: hynet; Owner: -
--

CREATE INDEX watercourselink_geometry_idx ON watercourselink USING gist (geometry);


--
-- TOC entry 4712 (class 2606 OID 197382638)
-- Name: hydronode_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY hydronode_gn
    ADD CONSTRAINT hydronode_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES hydronode(localid) ON DELETE CASCADE;


--
-- TOC entry 4713 (class 2606 OID 197382643)
-- Name: hydronode_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY hydronode_gn_spelling
    ADD CONSTRAINT hydronode_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES hydronode_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4714 (class 2606 OID 197382648)
-- Name: hydronode_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY hydronode_hydroid
    ADD CONSTRAINT hydronode_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES hydronode(localid) ON DELETE CASCADE;


--
-- TOC entry 4715 (class 2606 OID 197382653)
-- Name: watercourselink_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY watercourselink_gn
    ADD CONSTRAINT watercourselink_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES watercourselink(localid) ON DELETE CASCADE;


--
-- TOC entry 4716 (class 2606 OID 197382658)
-- Name: watercourselink_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY watercourselink_gn_spelling
    ADD CONSTRAINT watercourselink_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES watercourselink_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4717 (class 2606 OID 197382663)
-- Name: watercourselink_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hynet; Owner: -
--

ALTER TABLE ONLY watercourselink_hydroid
    ADD CONSTRAINT watercourselink_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES watercourselink(localid) ON DELETE CASCADE;


-- Completed on 2017-07-25 15:46:54

--
-- PostgreSQL database dump complete
--

