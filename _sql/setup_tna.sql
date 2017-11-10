--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.9
-- Dumped by pg_dump version 9.5.1

-- Started on 2017-07-25 15:48:59

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 12 (class 2615 OID 185762469)
-- Name: tna; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA tna;


--
-- TOC entry 4877 (class 0 OID 0)
-- Dependencies: 12
-- Name: SCHEMA tna; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA tna IS 'Schemata für Transport Network Air';


SET search_path = tna, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 269 (class 1259 OID 185762471)
-- Name: aerodromearea; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE aerodromearea (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    inspireid text,
    area numeric,
    area_uom text,
    transeuropeantransportnetwork boolean,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 270 (class 1259 OID 185762477)
-- Name: aerodromearea_gn; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE aerodromearea_gn (
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
-- TOC entry 271 (class 1259 OID 185762483)
-- Name: aerodromearea_gn_id_seq; Type: SEQUENCE; Schema: tna; Owner: -
--

CREATE SEQUENCE aerodromearea_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4878 (class 0 OID 0)
-- Dependencies: 271
-- Name: aerodromearea_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tna; Owner: -
--

ALTER SEQUENCE aerodromearea_gn_id_seq OWNED BY aerodromearea_gn.id;


--
-- TOC entry 272 (class 1259 OID 185762485)
-- Name: aerodromearea_gn_spelling; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE aerodromearea_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 273 (class 1259 OID 185762491)
-- Name: aerodromearea_gn_spelling_id_seq; Type: SEQUENCE; Schema: tna; Owner: -
--

CREATE SEQUENCE aerodromearea_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4879 (class 0 OID 0)
-- Dependencies: 273
-- Name: aerodromearea_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tna; Owner: -
--

ALTER SEQUENCE aerodromearea_gn_spelling_id_seq OWNED BY aerodromearea_gn_spelling.id;


--
-- TOC entry 274 (class 1259 OID 185762493)
-- Name: aerodromecategory; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE aerodromecategory (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    aerodromecategory_nilreason text,
    aerodromecategory_href text
);


--
-- TOC entry 275 (class 1259 OID 185762499)
-- Name: aerodromecategory_networkref; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE aerodromecategory_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text,
    networkreference_element_fk text
);


--
-- TOC entry 276 (class 1259 OID 185762505)
-- Name: aerodromecategory_networkref_id_seq; Type: SEQUENCE; Schema: tna; Owner: -
--

CREATE SEQUENCE aerodromecategory_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4880 (class 0 OID 0)
-- Dependencies: 276
-- Name: aerodromecategory_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tna; Owner: -
--

ALTER SEQUENCE aerodromecategory_networkref_id_seq OWNED BY aerodromecategory_networkref.id;


--
-- TOC entry 277 (class 1259 OID 185762507)
-- Name: aerodromenode; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE aerodromenode (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    inspireid text,
    significantpoint boolean,
    designatoriata text,
    designatoriata_nilreason text,
    designatoriata_nil boolean,
    locationindicatoricao text,
    locationindicatoricao_nilreason text,
    locationindicatoricao_nil boolean,
    transeuropeantransportnetwork boolean,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 278 (class 1259 OID 185762513)
-- Name: aerodromenode_gn; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE aerodromenode_gn (
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
-- TOC entry 279 (class 1259 OID 185762519)
-- Name: aerodromenode_gn_id_seq; Type: SEQUENCE; Schema: tna; Owner: -
--

CREATE SEQUENCE aerodromenode_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4881 (class 0 OID 0)
-- Dependencies: 279
-- Name: aerodromenode_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tna; Owner: -
--

ALTER SEQUENCE aerodromenode_gn_id_seq OWNED BY aerodromenode_gn.id;


--
-- TOC entry 280 (class 1259 OID 185762521)
-- Name: aerodromenode_gn_spelling; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE aerodromenode_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 281 (class 1259 OID 185762527)
-- Name: aerodromenode_gn_spelling_id_seq; Type: SEQUENCE; Schema: tna; Owner: -
--

CREATE SEQUENCE aerodromenode_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4882 (class 0 OID 0)
-- Dependencies: 281
-- Name: aerodromenode_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tna; Owner: -
--

ALTER SEQUENCE aerodromenode_gn_spelling_id_seq OWNED BY aerodromenode_gn_spelling.id;


--
-- TOC entry 282 (class 1259 OID 185762529)
-- Name: aerodrometype; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE aerodrometype (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    aerodrometype_nilreason text,
    aerodrometype_href text
);


--
-- TOC entry 283 (class 1259 OID 185762535)
-- Name: aerodrometype_networkref; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE aerodrometype_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text,
    networkreference_element_fk text
);


--
-- TOC entry 284 (class 1259 OID 185762541)
-- Name: aerodrometype_networkref_id_seq; Type: SEQUENCE; Schema: tna; Owner: -
--

CREATE SEQUENCE aerodrometype_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 284
-- Name: aerodrometype_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tna; Owner: -
--

ALTER SEQUENCE aerodrometype_networkref_id_seq OWNED BY aerodrometype_networkref.id;


--
-- TOC entry 285 (class 1259 OID 185762543)
-- Name: conditionofairfacility; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE conditionofairfacility (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    currentstatus_href text
);


--
-- TOC entry 286 (class 1259 OID 185762549)
-- Name: conditionofairfacility_networkref; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE conditionofairfacility_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text,
    networkreference_element_fk text
);


--
-- TOC entry 287 (class 1259 OID 185762555)
-- Name: conditionofairfacility_networkref_id_seq; Type: SEQUENCE; Schema: tna; Owner: -
--

CREATE SEQUENCE conditionofairfacility_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 287
-- Name: conditionofairfacility_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tna; Owner: -
--

ALTER SEQUENCE conditionofairfacility_networkref_id_seq OWNED BY conditionofairfacility_networkref.id;


--
-- TOC entry 288 (class 1259 OID 185762557)
-- Name: fieldelevation; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE fieldelevation (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    altitude numeric,
    altitude_uom text
);


--
-- TOC entry 289 (class 1259 OID 185762563)
-- Name: fieldelevation_networkref; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE fieldelevation_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text,
    networkreference_element_fk text
);


--
-- TOC entry 290 (class 1259 OID 185762569)
-- Name: fieldelevation_networkref_id_seq; Type: SEQUENCE; Schema: tna; Owner: -
--

CREATE SEQUENCE fieldelevation_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 290
-- Name: fieldelevation_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tna; Owner: -
--

ALTER SEQUENCE fieldelevation_networkref_id_seq OWNED BY fieldelevation_networkref.id;


--
-- TOC entry 291 (class 1259 OID 185762571)
-- Name: functionalusecategory; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE functionalusecategory (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    functionalusecategory_nilreason text,
    functionalusecategory_href text
);


--
-- TOC entry 292 (class 1259 OID 185762577)
-- Name: functionalusecategory_networkref; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE functionalusecategory_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text,
    networkreference_element_fk text
);


--
-- TOC entry 293 (class 1259 OID 185762583)
-- Name: functionalusecategory_networkref_id_seq; Type: SEQUENCE; Schema: tna; Owner: -
--

CREATE SEQUENCE functionalusecategory_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 293
-- Name: functionalusecategory_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tna; Owner: -
--

ALTER SEQUENCE functionalusecategory_networkref_id_seq OWNED BY functionalusecategory_networkref.id;


--
-- TOC entry 294 (class 1259 OID 185762585)
-- Name: runwayline; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE runwayline (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    length numeric,
    length_uom text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 295 (class 1259 OID 185762591)
-- Name: transportationusecategory; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE transportationusecategory (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    transportationusecategory_nilreason text,
    transportationusecategory_href text
);


--
-- TOC entry 296 (class 1259 OID 185762597)
-- Name: transportationusecategory_networkref; Type: TABLE; Schema: tna; Owner: -
--

CREATE TABLE transportationusecategory_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text,
    networkreference_element_fk text
);


--
-- TOC entry 297 (class 1259 OID 185762603)
-- Name: transportationusecategory_networkref_id_seq; Type: SEQUENCE; Schema: tna; Owner: -
--

CREATE SEQUENCE transportationusecategory_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 297
-- Name: transportationusecategory_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tna; Owner: -
--

ALTER SEQUENCE transportationusecategory_networkref_id_seq OWNED BY transportationusecategory_networkref.id;


--
-- TOC entry 4697 (class 2604 OID 185762809)
-- Name: id; Type: DEFAULT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromearea_gn ALTER COLUMN id SET DEFAULT nextval('aerodromearea_gn_id_seq'::regclass);


--
-- TOC entry 4699 (class 2604 OID 185762810)
-- Name: id; Type: DEFAULT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromearea_gn_spelling ALTER COLUMN id SET DEFAULT nextval('aerodromearea_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 185762811)
-- Name: id; Type: DEFAULT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromecategory_networkref ALTER COLUMN id SET DEFAULT nextval('aerodromecategory_networkref_id_seq'::regclass);


--
-- TOC entry 4701 (class 2604 OID 185762812)
-- Name: id; Type: DEFAULT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromenode_gn ALTER COLUMN id SET DEFAULT nextval('aerodromenode_gn_id_seq'::regclass);


--
-- TOC entry 4703 (class 2604 OID 185762813)
-- Name: id; Type: DEFAULT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromenode_gn_spelling ALTER COLUMN id SET DEFAULT nextval('aerodromenode_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4704 (class 2604 OID 185762814)
-- Name: id; Type: DEFAULT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodrometype_networkref ALTER COLUMN id SET DEFAULT nextval('aerodrometype_networkref_id_seq'::regclass);


--
-- TOC entry 4705 (class 2604 OID 185762815)
-- Name: id; Type: DEFAULT; Schema: tna; Owner: -
--

ALTER TABLE ONLY conditionofairfacility_networkref ALTER COLUMN id SET DEFAULT nextval('conditionofairfacility_networkref_id_seq'::regclass);


--
-- TOC entry 4706 (class 2604 OID 185762816)
-- Name: id; Type: DEFAULT; Schema: tna; Owner: -
--

ALTER TABLE ONLY fieldelevation_networkref ALTER COLUMN id SET DEFAULT nextval('fieldelevation_networkref_id_seq'::regclass);


--
-- TOC entry 4707 (class 2604 OID 185762817)
-- Name: id; Type: DEFAULT; Schema: tna; Owner: -
--

ALTER TABLE ONLY functionalusecategory_networkref ALTER COLUMN id SET DEFAULT nextval('functionalusecategory_networkref_id_seq'::regclass);


--
-- TOC entry 4708 (class 2604 OID 185762818)
-- Name: id; Type: DEFAULT; Schema: tna; Owner: -
--

ALTER TABLE ONLY transportationusecategory_networkref ALTER COLUMN id SET DEFAULT nextval('transportationusecategory_networkref_id_seq'::regclass);


--
-- TOC entry 4713 (class 2606 OID 185762838)
-- Name: aerodromearea_gn_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromearea_gn
    ADD CONSTRAINT aerodromearea_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4715 (class 2606 OID 185762840)
-- Name: aerodromearea_gn_spelling_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromearea_gn_spelling
    ADD CONSTRAINT aerodromearea_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4711 (class 2606 OID 185762842)
-- Name: aerodromearea_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromearea
    ADD CONSTRAINT aerodromearea_pkey PRIMARY KEY (localid);


--
-- TOC entry 4719 (class 2606 OID 185762844)
-- Name: aerodromecategory_networkref_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromecategory_networkref
    ADD CONSTRAINT aerodromecategory_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4717 (class 2606 OID 185762846)
-- Name: aerodromecategory_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromecategory
    ADD CONSTRAINT aerodromecategory_pkey PRIMARY KEY (localid);


--
-- TOC entry 4724 (class 2606 OID 185762848)
-- Name: aerodromenode_gn_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromenode_gn
    ADD CONSTRAINT aerodromenode_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4726 (class 2606 OID 185762850)
-- Name: aerodromenode_gn_spelling_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromenode_gn_spelling
    ADD CONSTRAINT aerodromenode_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4722 (class 2606 OID 185762852)
-- Name: aerodromenode_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromenode
    ADD CONSTRAINT aerodromenode_pkey PRIMARY KEY (localid);


--
-- TOC entry 4730 (class 2606 OID 185762854)
-- Name: aerodrometype_networkref_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodrometype_networkref
    ADD CONSTRAINT aerodrometype_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4728 (class 2606 OID 185762856)
-- Name: aerodrometype_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodrometype
    ADD CONSTRAINT aerodrometype_pkey PRIMARY KEY (localid);


--
-- TOC entry 4734 (class 2606 OID 185762858)
-- Name: conditionofairfacility_networkref_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY conditionofairfacility_networkref
    ADD CONSTRAINT conditionofairfacility_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4732 (class 2606 OID 185762860)
-- Name: conditionofairfacility_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY conditionofairfacility
    ADD CONSTRAINT conditionofairfacility_pkey PRIMARY KEY (localid);


--
-- TOC entry 4738 (class 2606 OID 185762862)
-- Name: fieldelevation_networkref_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY fieldelevation_networkref
    ADD CONSTRAINT fieldelevation_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4736 (class 2606 OID 185762864)
-- Name: fieldelevation_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY fieldelevation
    ADD CONSTRAINT fieldelevation_pkey PRIMARY KEY (localid);


--
-- TOC entry 4742 (class 2606 OID 185762866)
-- Name: functionalusecategory_networkref_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY functionalusecategory_networkref
    ADD CONSTRAINT functionalusecategory_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4740 (class 2606 OID 185762868)
-- Name: functionalusecategory_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY functionalusecategory
    ADD CONSTRAINT functionalusecategory_pkey PRIMARY KEY (localid);


--
-- TOC entry 4745 (class 2606 OID 185762870)
-- Name: runwayline_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY runwayline
    ADD CONSTRAINT runwayline_pkey PRIMARY KEY (localid);


--
-- TOC entry 4749 (class 2606 OID 185762872)
-- Name: transportationusecategory_networkref_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY transportationusecategory_networkref
    ADD CONSTRAINT transportationusecategory_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4747 (class 2606 OID 185762874)
-- Name: transportationusecategory_pkey; Type: CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY transportationusecategory
    ADD CONSTRAINT transportationusecategory_pkey PRIMARY KEY (localid);


--
-- TOC entry 4709 (class 1259 OID 185762931)
-- Name: aerodromearea_geometry_idx; Type: INDEX; Schema: tna; Owner: -
--

CREATE INDEX aerodromearea_geometry_idx ON aerodromearea USING gist (geometry);


--
-- TOC entry 4720 (class 1259 OID 185762932)
-- Name: aerodromenode_geometry_idx; Type: INDEX; Schema: tna; Owner: -
--

CREATE INDEX aerodromenode_geometry_idx ON aerodromenode USING gist (geometry);


--
-- TOC entry 4743 (class 1259 OID 185762933)
-- Name: runwayline_geometry_idx; Type: INDEX; Schema: tna; Owner: -
--

CREATE INDEX runwayline_geometry_idx ON runwayline USING gist (geometry);


--
-- TOC entry 4750 (class 2606 OID 185762937)
-- Name: aerodromearea_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromearea_gn
    ADD CONSTRAINT aerodromearea_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES aerodromearea(localid);


--
-- TOC entry 4751 (class 2606 OID 185762942)
-- Name: aerodromearea_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromearea_gn_spelling
    ADD CONSTRAINT aerodromearea_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES aerodromearea_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4752 (class 2606 OID 185762947)
-- Name: aerodromecategory_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromecategory_networkref
    ADD CONSTRAINT aerodromecategory_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES aerodromecategory(localid) ON DELETE CASCADE;


--
-- TOC entry 4753 (class 2606 OID 185762952)
-- Name: aerodromenode_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromenode_gn
    ADD CONSTRAINT aerodromenode_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES aerodromenode(localid);


--
-- TOC entry 4754 (class 2606 OID 185762957)
-- Name: aerodromenode_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodromenode_gn_spelling
    ADD CONSTRAINT aerodromenode_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES aerodromenode_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4755 (class 2606 OID 185762962)
-- Name: aerodrometype_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY aerodrometype_networkref
    ADD CONSTRAINT aerodrometype_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES aerodrometype(localid) ON DELETE CASCADE;


--
-- TOC entry 4756 (class 2606 OID 185762967)
-- Name: conditionofairfacility_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY conditionofairfacility_networkref
    ADD CONSTRAINT conditionofairfacility_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES conditionofairfacility(localid) ON DELETE CASCADE;


--
-- TOC entry 4757 (class 2606 OID 185762972)
-- Name: fieldelevation_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY fieldelevation_networkref
    ADD CONSTRAINT fieldelevation_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES fieldelevation(localid) ON DELETE CASCADE;


--
-- TOC entry 4758 (class 2606 OID 185762977)
-- Name: functionalusecategory_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY functionalusecategory_networkref
    ADD CONSTRAINT functionalusecategory_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES functionalusecategory(localid) ON DELETE CASCADE;


--
-- TOC entry 4759 (class 2606 OID 185762982)
-- Name: transportationusecategory_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tna; Owner: -
--

ALTER TABLE ONLY transportationusecategory_networkref
    ADD CONSTRAINT transportationusecategory_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES transportationusecategory(localid) ON DELETE CASCADE;


-- Completed on 2017-07-25 15:48:59

--
-- PostgreSQL database dump complete
--

-- indizes
CREATE INDEX aerodromearea_gn_parent_idx ON tna.aerodromearea_gn (parentfk ASC NULLS LAST);
CREATE INDEX aerodromearea_gn_spelling_parent_idx ON tna.aerodromearea_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX aerodromecategory_networkref_parent_idx ON tna.aerodromecategory_networkref (parentfk ASC NULLS LAST);
CREATE INDEX aerodromenode_gn_parent_idx ON tna.aerodromenode_gn (parentfk ASC NULLS LAST);
CREATE INDEX aerodromenode_gn_spelling_parent_idx ON tna.aerodromenode_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX aerodrometype_networkref_parent_idx ON tna.aerodrometype_networkref (parentfk ASC NULLS LAST);
CREATE INDEX conditionofairfacility_networkref_parent_idx ON tna.conditionofairfacility_networkref (parentfk ASC NULLS LAST);
CREATE INDEX fieldelevation_networkref_parent_idx ON tna.fieldelevation_networkref (parentfk ASC NULLS LAST);
CREATE INDEX functionalusecategory_networkref_parent_idx ON tna.functionalusecategory_networkref (parentfk ASC NULLS LAST);
CREATE INDEX transportationusecategory_networkref_parent_idx ON tna.transportationusecategory_networkref (parentfk ASC NULLS LAST);

