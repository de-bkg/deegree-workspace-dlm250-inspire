--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.9
-- Dumped by pg_dump version 9.5.1

-- Started on 2017-07-25 15:50:28

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 11 (class 2615 OID 183681820)
-- Name: tnw; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA tnw;


--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA tnw; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA tnw IS 'Schemata für Water Transport Network';


SET search_path = tnw, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 243 (class 1259 OID 183682401)
-- Name: conditionofwaterfacility; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE conditionofwaterfacility (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    currentstatus_nilreason text,
    currentstatus_href text
);


--
-- TOC entry 244 (class 1259 OID 183682407)
-- Name: conditionofwaterfacility_networkref; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE conditionofwaterfacility_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 245 (class 1259 OID 183682413)
-- Name: conditionofwaterfacility_networkref_id_seq; Type: SEQUENCE; Schema: tnw; Owner: -
--

CREATE SEQUENCE conditionofwaterfacility_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4871 (class 0 OID 0)
-- Dependencies: 245
-- Name: conditionofwaterfacility_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnw; Owner: -
--

ALTER SEQUENCE conditionofwaterfacility_networkref_id_seq OWNED BY conditionofwaterfacility_networkref.id;


--
-- TOC entry 246 (class 1259 OID 183682415)
-- Name: ferrycrossing; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE ferrycrossing (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    ferrycrossingidentifier text,
    internationalconnection boolean
);


--
-- TOC entry 247 (class 1259 OID 183682421)
-- Name: ferrycrossing_gn; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE ferrycrossing_gn (
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
-- TOC entry 248 (class 1259 OID 183682427)
-- Name: ferrycrossing_gn_id_seq; Type: SEQUENCE; Schema: tnw; Owner: -
--

CREATE SEQUENCE ferrycrossing_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4872 (class 0 OID 0)
-- Dependencies: 248
-- Name: ferrycrossing_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnw; Owner: -
--

ALTER SEQUENCE ferrycrossing_gn_id_seq OWNED BY ferrycrossing_gn.id;


--
-- TOC entry 249 (class 1259 OID 183682429)
-- Name: ferrycrossing_gn_spelling; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE ferrycrossing_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 250 (class 1259 OID 183682435)
-- Name: ferrycrossing_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnw; Owner: -
--

CREATE SEQUENCE ferrycrossing_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4873 (class 0 OID 0)
-- Dependencies: 250
-- Name: ferrycrossing_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnw; Owner: -
--

ALTER SEQUENCE ferrycrossing_gn_spelling_id_seq OWNED BY ferrycrossing_gn_spelling.id;


--
-- TOC entry 251 (class 1259 OID 183682437)
-- Name: portarea; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE portarea (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    area numeric,
    area_uom text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 252 (class 1259 OID 183682443)
-- Name: portarea_gn; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE portarea_gn (
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
-- TOC entry 253 (class 1259 OID 183682449)
-- Name: portarea_gn_id_seq; Type: SEQUENCE; Schema: tnw; Owner: -
--

CREATE SEQUENCE portarea_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4874 (class 0 OID 0)
-- Dependencies: 253
-- Name: portarea_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnw; Owner: -
--

ALTER SEQUENCE portarea_gn_id_seq OWNED BY portarea_gn.id;


--
-- TOC entry 254 (class 1259 OID 183682451)
-- Name: portarea_gn_spelling; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE portarea_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 255 (class 1259 OID 183682457)
-- Name: portarea_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnw; Owner: -
--

CREATE SEQUENCE portarea_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4875 (class 0 OID 0)
-- Dependencies: 255
-- Name: portarea_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnw; Owner: -
--

ALTER SEQUENCE portarea_gn_spelling_id_seq OWNED BY portarea_gn_spelling.id;


--
-- TOC entry 256 (class 1259 OID 183682459)
-- Name: portnode; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE portnode (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    ferrystationidentifier text,
    locationcode text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 257 (class 1259 OID 183682465)
-- Name: portnode_gn; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE portnode_gn (
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
-- TOC entry 258 (class 1259 OID 183682471)
-- Name: portnode_gn_id_seq; Type: SEQUENCE; Schema: tnw; Owner: -
--

CREATE SEQUENCE portnode_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4876 (class 0 OID 0)
-- Dependencies: 258
-- Name: portnode_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnw; Owner: -
--

ALTER SEQUENCE portnode_gn_id_seq OWNED BY portnode_gn.id;


--
-- TOC entry 259 (class 1259 OID 183682473)
-- Name: portnode_gn_spelling; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE portnode_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 260 (class 1259 OID 183682479)
-- Name: portnode_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnw; Owner: -
--

CREATE SEQUENCE portnode_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4877 (class 0 OID 0)
-- Dependencies: 260
-- Name: portnode_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnw; Owner: -
--

ALTER SEQUENCE portnode_gn_spelling_id_seq OWNED BY portnode_gn_spelling.id;


--
-- TOC entry 261 (class 1259 OID 183682481)
-- Name: porttype; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE porttype (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    porttype_nilreason text,
    porttype_fk text,
    porttype_href text
);


--
-- TOC entry 262 (class 1259 OID 183682487)
-- Name: porttype_networkref; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE porttype_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 263 (class 1259 OID 183682493)
-- Name: porttype_networkref_id_seq; Type: SEQUENCE; Schema: tnw; Owner: -
--

CREATE SEQUENCE porttype_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4878 (class 0 OID 0)
-- Dependencies: 263
-- Name: porttype_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnw; Owner: -
--

ALTER SEQUENCE porttype_networkref_id_seq OWNED BY porttype_networkref.id;


--
-- TOC entry 264 (class 1259 OID 183682495)
-- Name: waterwaylink; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE waterwaylink (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    fictitious boolean,
    endnode_nilreason text,
    endnode_href text,
    startnode_nilreason text,
    startnode_href text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 265 (class 1259 OID 183682501)
-- Name: waterwaylink_gn; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE waterwaylink_gn (
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
-- TOC entry 266 (class 1259 OID 183682507)
-- Name: waterwaylink_gn_id_seq; Type: SEQUENCE; Schema: tnw; Owner: -
--

CREATE SEQUENCE waterwaylink_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4879 (class 0 OID 0)
-- Dependencies: 266
-- Name: waterwaylink_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnw; Owner: -
--

ALTER SEQUENCE waterwaylink_gn_id_seq OWNED BY waterwaylink_gn.id;


--
-- TOC entry 267 (class 1259 OID 183682509)
-- Name: waterwaylink_gn_spelling; Type: TABLE; Schema: tnw; Owner: -
--

CREATE TABLE waterwaylink_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 268 (class 1259 OID 183682515)
-- Name: waterwaylink_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnw; Owner: -
--

CREATE SEQUENCE waterwaylink_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4880 (class 0 OID 0)
-- Dependencies: 268
-- Name: waterwaylink_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnw; Owner: -
--

ALTER SEQUENCE waterwaylink_gn_spelling_id_seq OWNED BY waterwaylink_gn_spelling.id;


--
-- TOC entry 4694 (class 2604 OID 183682564)
-- Name: id; Type: DEFAULT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY conditionofwaterfacility_networkref ALTER COLUMN id SET DEFAULT nextval('conditionofwaterfacility_networkref_id_seq'::regclass);


--
-- TOC entry 4695 (class 2604 OID 183682565)
-- Name: id; Type: DEFAULT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY ferrycrossing_gn ALTER COLUMN id SET DEFAULT nextval('ferrycrossing_gn_id_seq'::regclass);


--
-- TOC entry 4697 (class 2604 OID 183682566)
-- Name: id; Type: DEFAULT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY ferrycrossing_gn_spelling ALTER COLUMN id SET DEFAULT nextval('ferrycrossing_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4698 (class 2604 OID 183682567)
-- Name: id; Type: DEFAULT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portarea_gn ALTER COLUMN id SET DEFAULT nextval('portarea_gn_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 183682568)
-- Name: id; Type: DEFAULT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portarea_gn_spelling ALTER COLUMN id SET DEFAULT nextval('portarea_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4701 (class 2604 OID 183682569)
-- Name: id; Type: DEFAULT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portnode_gn ALTER COLUMN id SET DEFAULT nextval('portnode_gn_id_seq'::regclass);


--
-- TOC entry 4703 (class 2604 OID 183682570)
-- Name: id; Type: DEFAULT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portnode_gn_spelling ALTER COLUMN id SET DEFAULT nextval('portnode_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4704 (class 2604 OID 183682571)
-- Name: id; Type: DEFAULT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY porttype_networkref ALTER COLUMN id SET DEFAULT nextval('porttype_networkref_id_seq'::regclass);


--
-- TOC entry 4705 (class 2604 OID 183682572)
-- Name: id; Type: DEFAULT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY waterwaylink_gn ALTER COLUMN id SET DEFAULT nextval('waterwaylink_gn_id_seq'::regclass);


--
-- TOC entry 4707 (class 2604 OID 183682573)
-- Name: id; Type: DEFAULT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY waterwaylink_gn_spelling ALTER COLUMN id SET DEFAULT nextval('waterwaylink_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4711 (class 2606 OID 183682738)
-- Name: conditionofwaterfacility_networkref_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY conditionofwaterfacility_networkref
    ADD CONSTRAINT conditionofwaterfacility_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4709 (class 2606 OID 183682740)
-- Name: conditionofwaterfacility_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY conditionofwaterfacility
    ADD CONSTRAINT conditionofwaterfacility_pkey PRIMARY KEY (localid);


--
-- TOC entry 4715 (class 2606 OID 183682742)
-- Name: ferrycrossing_gn_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY ferrycrossing_gn
    ADD CONSTRAINT ferrycrossing_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4717 (class 2606 OID 183682744)
-- Name: ferrycrossing_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY ferrycrossing_gn_spelling
    ADD CONSTRAINT ferrycrossing_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4713 (class 2606 OID 183682746)
-- Name: ferrycrossing_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY ferrycrossing
    ADD CONSTRAINT ferrycrossing_pkey PRIMARY KEY (localid);


--
-- TOC entry 4722 (class 2606 OID 183682748)
-- Name: portarea_gn_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portarea_gn
    ADD CONSTRAINT portarea_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4724 (class 2606 OID 183682750)
-- Name: portarea_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portarea_gn_spelling
    ADD CONSTRAINT portarea_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4720 (class 2606 OID 183682752)
-- Name: portarea_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portarea
    ADD CONSTRAINT portarea_pkey PRIMARY KEY (localid);


--
-- TOC entry 4729 (class 2606 OID 183682754)
-- Name: portnode_gn_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portnode_gn
    ADD CONSTRAINT portnode_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4731 (class 2606 OID 183682756)
-- Name: portnode_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portnode_gn_spelling
    ADD CONSTRAINT portnode_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4727 (class 2606 OID 183682758)
-- Name: portnode_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portnode
    ADD CONSTRAINT portnode_pkey PRIMARY KEY (localid);


--
-- TOC entry 4735 (class 2606 OID 183682760)
-- Name: porttype_networkref_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY porttype_networkref
    ADD CONSTRAINT porttype_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4733 (class 2606 OID 183682762)
-- Name: porttype_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY porttype
    ADD CONSTRAINT porttype_pkey PRIMARY KEY (localid);


--
-- TOC entry 4740 (class 2606 OID 183682764)
-- Name: waterwaylink_gn_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY waterwaylink_gn
    ADD CONSTRAINT waterwaylink_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4742 (class 2606 OID 183682766)
-- Name: waterwaylink_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY waterwaylink_gn_spelling
    ADD CONSTRAINT waterwaylink_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4738 (class 2606 OID 183682768)
-- Name: waterwaylink_pkey; Type: CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY waterwaylink
    ADD CONSTRAINT waterwaylink_pkey PRIMARY KEY (localid);


--
-- TOC entry 4718 (class 1259 OID 183682778)
-- Name: portarea_geometry_idx; Type: INDEX; Schema: tnw; Owner: -
--

CREATE INDEX portarea_geometry_idx ON portarea USING gist (geometry);


--
-- TOC entry 4725 (class 1259 OID 183682779)
-- Name: portnode_geometry_idx; Type: INDEX; Schema: tnw; Owner: -
--

CREATE INDEX portnode_geometry_idx ON portnode USING gist (geometry);


--
-- TOC entry 4736 (class 1259 OID 183682780)
-- Name: waterwaylink_geometry_idx; Type: INDEX; Schema: tnw; Owner: -
--

CREATE INDEX waterwaylink_geometry_idx ON waterwaylink USING gist (geometry);


--
-- TOC entry 4743 (class 2606 OID 183683017)
-- Name: conditionofwaterfacility_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY conditionofwaterfacility_networkref
    ADD CONSTRAINT conditionofwaterfacility_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES conditionofwaterfacility(localid) ON DELETE CASCADE;


--
-- TOC entry 4744 (class 2606 OID 183683022)
-- Name: ferrycrossing_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY ferrycrossing_gn
    ADD CONSTRAINT ferrycrossing_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES ferrycrossing(localid);


--
-- TOC entry 4745 (class 2606 OID 183683027)
-- Name: ferrycrossing_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY ferrycrossing_gn_spelling
    ADD CONSTRAINT ferrycrossing_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES ferrycrossing_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4746 (class 2606 OID 183683032)
-- Name: portarea_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portarea_gn
    ADD CONSTRAINT portarea_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES portarea(localid);


--
-- TOC entry 4747 (class 2606 OID 183683037)
-- Name: portarea_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portarea_gn_spelling
    ADD CONSTRAINT portarea_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES portarea_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4748 (class 2606 OID 183683042)
-- Name: portnode_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portnode_gn
    ADD CONSTRAINT portnode_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES portnode(localid);


--
-- TOC entry 4749 (class 2606 OID 183683047)
-- Name: portnode_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY portnode_gn_spelling
    ADD CONSTRAINT portnode_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES portnode_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4750 (class 2606 OID 183683052)
-- Name: porttype_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY porttype_networkref
    ADD CONSTRAINT porttype_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES porttype(localid) ON DELETE CASCADE;


--
-- TOC entry 4751 (class 2606 OID 183683057)
-- Name: waterwaylink_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY waterwaylink_gn
    ADD CONSTRAINT waterwaylink_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES waterwaylink(localid);


--
-- TOC entry 4752 (class 2606 OID 183683062)
-- Name: waterwaylink_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnw; Owner: -
--

ALTER TABLE ONLY waterwaylink_gn_spelling
    ADD CONSTRAINT waterwaylink_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES waterwaylink_gn(id) ON DELETE CASCADE;


-- Completed on 2017-07-25 15:50:28

--
-- PostgreSQL database dump complete
--

