--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.9
-- Dumped by pg_dump version 9.5.1

-- Started on 2017-07-25 15:49:29

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 10 (class 2615 OID 183681818)
-- Name: tnra; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA tnra;


--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA tnra; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA tnra IS 'Schemata für Thema TransportNetwork-Rail';


SET search_path = tnra, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 183681997)
-- Name: designspeed; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE designspeed (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    speed numeric,
    speed_uom text,
    speedclass_owns boolean,
    speedclass_nilreason text,
    speedclass_remoteschema text,
    speedclass_fk text,
    speedclass_href text
);


--
-- TOC entry 200 (class 1259 OID 183682003)
-- Name: designspeed_networkref; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE designspeed_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 201 (class 1259 OID 183682009)
-- Name: designspeed_networkref_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE designspeed_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 201
-- Name: designspeed_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE designspeed_networkref_id_seq OWNED BY designspeed_networkref.id;


--
-- TOC entry 202 (class 1259 OID 183682011)
-- Name: nominaltrackgauge; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE nominaltrackgauge (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    nominalgauge numeric,
    nominalgauge_nilreason text,
    nominalgauge_uom text,
    nominalgauge_nil boolean,
    nominalgaugecategory text,
    nominalgaugecategory_nilreason text,
    nominalgaugecategory_nil boolean
);


--
-- TOC entry 203 (class 1259 OID 183682017)
-- Name: nominaltrackgauge_networkref; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE nominaltrackgauge_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 204 (class 1259 OID 183682023)
-- Name: nominaltrackgauge_networkref_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE nominaltrackgauge_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 204
-- Name: nominaltrackgauge_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE nominaltrackgauge_networkref_id_seq OWNED BY nominaltrackgauge_networkref.id;


--
-- TOC entry 205 (class 1259 OID 183682025)
-- Name: numberoftracks; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE numberoftracks (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    minmaxnumberoftracks text,
    minmaxnumberoftracks_nilreason text,
    minmaxnumberoftracks_nil boolean,
    numberoftracks integer
);


--
-- TOC entry 206 (class 1259 OID 183682031)
-- Name: numberoftracks_networkref; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE numberoftracks_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 207 (class 1259 OID 183682037)
-- Name: numberoftracks_networkref_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE numberoftracks_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 207
-- Name: numberoftracks_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE numberoftracks_networkref_id_seq OWNED BY numberoftracks_networkref.id;


--
-- TOC entry 208 (class 1259 OID 183682039)
-- Name: railwayclass; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwayclass (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    railwayclass_owns boolean,
    railwayclass_nilreason text,
    railwayclass_remoteschema text,
    railwayclass_fk text,
    railwayclass_href text
);


--
-- TOC entry 209 (class 1259 OID 183682045)
-- Name: railwayclass_networkref; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwayclass_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 210 (class 1259 OID 183682051)
-- Name: railwayclass_networkref_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwayclass_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 210
-- Name: railwayclass_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwayclass_networkref_id_seq OWNED BY railwayclass_networkref.id;


--
-- TOC entry 211 (class 1259 OID 183682053)
-- Name: railwayelectrification; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwayelectrification (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    electrified boolean,
    railwaypowermethod_owns boolean,
    railwaypowermethod_nilreason text,
    railwaypowermethod_remoteschema text,
    railwaypowermethod_fk text,
    railwaypowermethod_href text
);


--
-- TOC entry 212 (class 1259 OID 183682059)
-- Name: railwayelectrification_networkref; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwayelectrification_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 213 (class 1259 OID 183682065)
-- Name: railwayelectrification_networkref_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwayelectrification_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 213
-- Name: railwayelectrification_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwayelectrification_networkref_id_seq OWNED BY railwayelectrification_networkref.id;


--
-- TOC entry 214 (class 1259 OID 183682067)
-- Name: railwayline; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwayline (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    railwaylinecode text,
    railwaylinecode_nilreason text,
    railwaylinecode_nil boolean
);


--
-- TOC entry 215 (class 1259 OID 183682073)
-- Name: railwayline_gn; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwayline_gn (
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
-- TOC entry 216 (class 1259 OID 183682079)
-- Name: railwayline_gn_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwayline_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 216
-- Name: railwayline_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwayline_gn_id_seq OWNED BY railwayline_gn.id;


--
-- TOC entry 217 (class 1259 OID 183682081)
-- Name: railwayline_gn_spelling; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwayline_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 218 (class 1259 OID 183682087)
-- Name: railwayline_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwayline_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 218
-- Name: railwayline_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwayline_gn_spelling_id_seq OWNED BY railwayline_gn_spelling.id;


--
-- TOC entry 219 (class 1259 OID 183682089)
-- Name: railwaylink; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaylink (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    fictitious boolean,
    transeuropeantransportnetwork boolean,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 220 (class 1259 OID 183682095)
-- Name: railwaylink_gn; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaylink_gn (
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
-- TOC entry 221 (class 1259 OID 183682101)
-- Name: railwaylink_gn_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwaylink_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 221
-- Name: railwaylink_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwaylink_gn_id_seq OWNED BY railwaylink_gn.id;


--
-- TOC entry 222 (class 1259 OID 183682103)
-- Name: railwaylink_gn_spelling; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaylink_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 223 (class 1259 OID 183682109)
-- Name: railwaylink_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwaylink_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 223
-- Name: railwaylink_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwaylink_gn_spelling_id_seq OWNED BY railwaylink_gn_spelling.id;


--
-- TOC entry 224 (class 1259 OID 183682111)
-- Name: railwaynode; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaynode (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    formofnode_owns boolean,
    formofnode_nilreason text,
    formofnode_remoteschema text,
    formofnode_nil boolean,
    formofnode_fk text,
    formofnode_href text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 225 (class 1259 OID 183682117)
-- Name: railwaynode_gn; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaynode_gn (
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
-- TOC entry 226 (class 1259 OID 183682123)
-- Name: railwaynode_gn_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwaynode_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 226
-- Name: railwaynode_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwaynode_gn_id_seq OWNED BY railwaynode_gn.id;


--
-- TOC entry 227 (class 1259 OID 183682125)
-- Name: railwaynode_gn_spelling; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaynode_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 228 (class 1259 OID 183682131)
-- Name: railwaynode_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwaynode_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 228
-- Name: railwaynode_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwaynode_gn_spelling_id_seq OWNED BY railwaynode_gn_spelling.id;


--
-- TOC entry 229 (class 1259 OID 183682133)
-- Name: railwaystationcode; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaystationcode (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    stationcode text
);


--
-- TOC entry 230 (class 1259 OID 183682139)
-- Name: railwaystationcode_networkref; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaystationcode_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 231 (class 1259 OID 183682145)
-- Name: railwaystationcode_networkref_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwaystationcode_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 231
-- Name: railwaystationcode_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwaystationcode_networkref_id_seq OWNED BY railwaystationcode_networkref.id;


--
-- TOC entry 232 (class 1259 OID 183682147)
-- Name: railwaystationnode; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaystationnode (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    formofnode_owns boolean,
    formofnode_nilreason text,
    formofnode_remoteschema text,
    formofnode_nil boolean,
    formofnode_fk text,
    formofnode_href text,
    numberofplatforms integer,
    numberofplatforms_nilreason text,
    numberofplatforms_nil boolean,
    facilitytype_owns boolean,
    facilitytype_nilreason text,
    facilitytype_remoteschema text,
    facilitytype_fk text,
    facilitytype_href text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 233 (class 1259 OID 183682153)
-- Name: railwaystationnode_gn; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaystationnode_gn (
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
-- TOC entry 234 (class 1259 OID 183682159)
-- Name: railwaystationnode_gn_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwaystationnode_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 234
-- Name: railwaystationnode_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwaystationnode_gn_id_seq OWNED BY railwaystationnode_gn.id;


--
-- TOC entry 235 (class 1259 OID 183682161)
-- Name: railwaystationnode_gn_spelling; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaystationnode_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 236 (class 1259 OID 183682167)
-- Name: railwaystationnode_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwaystationnode_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 236
-- Name: railwaystationnode_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwaystationnode_gn_spelling_id_seq OWNED BY railwaystationnode_gn_spelling.id;


--
-- TOC entry 237 (class 1259 OID 183682169)
-- Name: railwaytype; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaytype (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    type_owns boolean,
    type_nilreason text,
    type_remoteschema text,
    type_fk text,
    type_href text
);


--
-- TOC entry 238 (class 1259 OID 183682175)
-- Name: railwaytype_networkref; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwaytype_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 239 (class 1259 OID 183682181)
-- Name: railwaytype_networkref_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwaytype_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 239
-- Name: railwaytype_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwaytype_networkref_id_seq OWNED BY railwaytype_networkref.id;


--
-- TOC entry 240 (class 1259 OID 183682183)
-- Name: railwayuse; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwayuse (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    use_owns boolean,
    use_nilreason text,
    use_remoteschema text,
    use_fk text,
    use_href text
);


--
-- TOC entry 241 (class 1259 OID 183682189)
-- Name: railwayuse_networkref; Type: TABLE; Schema: tnra; Owner: -
--

CREATE TABLE railwayuse_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 242 (class 1259 OID 183682195)
-- Name: railwayuse_networkref_id_seq; Type: SEQUENCE; Schema: tnra; Owner: -
--

CREATE SEQUENCE railwayuse_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 242
-- Name: railwayuse_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnra; Owner: -
--

ALTER SEQUENCE railwayuse_networkref_id_seq OWNED BY railwayuse_networkref.id;


--
-- TOC entry 4706 (class 2604 OID 183682530)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY designspeed_networkref ALTER COLUMN id SET DEFAULT nextval('designspeed_networkref_id_seq'::regclass);


--
-- TOC entry 4707 (class 2604 OID 183682531)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY nominaltrackgauge_networkref ALTER COLUMN id SET DEFAULT nextval('nominaltrackgauge_networkref_id_seq'::regclass);


--
-- TOC entry 4708 (class 2604 OID 183682532)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY numberoftracks_networkref ALTER COLUMN id SET DEFAULT nextval('numberoftracks_networkref_id_seq'::regclass);


--
-- TOC entry 4709 (class 2604 OID 183682533)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayclass_networkref ALTER COLUMN id SET DEFAULT nextval('railwayclass_networkref_id_seq'::regclass);


--
-- TOC entry 4710 (class 2604 OID 183682534)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayelectrification_networkref ALTER COLUMN id SET DEFAULT nextval('railwayelectrification_networkref_id_seq'::regclass);


--
-- TOC entry 4711 (class 2604 OID 183682535)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayline_gn ALTER COLUMN id SET DEFAULT nextval('railwayline_gn_id_seq'::regclass);


--
-- TOC entry 4713 (class 2604 OID 183682536)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayline_gn_spelling ALTER COLUMN id SET DEFAULT nextval('railwayline_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4714 (class 2604 OID 183682537)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaylink_gn ALTER COLUMN id SET DEFAULT nextval('railwaylink_gn_id_seq'::regclass);


--
-- TOC entry 4716 (class 2604 OID 183682538)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaylink_gn_spelling ALTER COLUMN id SET DEFAULT nextval('railwaylink_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4717 (class 2604 OID 183682539)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaynode_gn ALTER COLUMN id SET DEFAULT nextval('railwaynode_gn_id_seq'::regclass);


--
-- TOC entry 4719 (class 2604 OID 183682540)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaynode_gn_spelling ALTER COLUMN id SET DEFAULT nextval('railwaynode_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4720 (class 2604 OID 183682541)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaystationcode_networkref ALTER COLUMN id SET DEFAULT nextval('railwaystationcode_networkref_id_seq'::regclass);


--
-- TOC entry 4721 (class 2604 OID 183682542)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaystationnode_gn ALTER COLUMN id SET DEFAULT nextval('railwaystationnode_gn_id_seq'::regclass);


--
-- TOC entry 4723 (class 2604 OID 183682543)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaystationnode_gn_spelling ALTER COLUMN id SET DEFAULT nextval('railwaystationnode_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4724 (class 2604 OID 183682544)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaytype_networkref ALTER COLUMN id SET DEFAULT nextval('railwaytype_networkref_id_seq'::regclass);


--
-- TOC entry 4725 (class 2604 OID 183682545)
-- Name: id; Type: DEFAULT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayuse_networkref ALTER COLUMN id SET DEFAULT nextval('railwayuse_networkref_id_seq'::regclass);


--
-- TOC entry 4729 (class 2606 OID 183682625)
-- Name: designspeed_networkref_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY designspeed_networkref
    ADD CONSTRAINT designspeed_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4727 (class 2606 OID 183682627)
-- Name: designspeed_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY designspeed
    ADD CONSTRAINT designspeed_pkey PRIMARY KEY (localid);


--
-- TOC entry 4733 (class 2606 OID 183682629)
-- Name: nominaltrackgauge_networkref_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY nominaltrackgauge_networkref
    ADD CONSTRAINT nominaltrackgauge_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4731 (class 2606 OID 183682631)
-- Name: nominaltrackgauge_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY nominaltrackgauge
    ADD CONSTRAINT nominaltrackgauge_pkey PRIMARY KEY (localid);


--
-- TOC entry 4737 (class 2606 OID 183682633)
-- Name: numberoftracks_networkref_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY numberoftracks_networkref
    ADD CONSTRAINT numberoftracks_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4735 (class 2606 OID 183682635)
-- Name: numberoftracks_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY numberoftracks
    ADD CONSTRAINT numberoftracks_pkey PRIMARY KEY (localid);


--
-- TOC entry 4741 (class 2606 OID 183682637)
-- Name: railwayclass_networkref_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayclass_networkref
    ADD CONSTRAINT railwayclass_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4739 (class 2606 OID 183682639)
-- Name: railwayclass_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayclass
    ADD CONSTRAINT railwayclass_pkey PRIMARY KEY (localid);


--
-- TOC entry 4745 (class 2606 OID 183682641)
-- Name: railwayelectrification_networkref_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayelectrification_networkref
    ADD CONSTRAINT railwayelectrification_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4743 (class 2606 OID 183682643)
-- Name: railwayelectrification_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayelectrification
    ADD CONSTRAINT railwayelectrification_pkey PRIMARY KEY (localid);


--
-- TOC entry 4749 (class 2606 OID 183682645)
-- Name: railwayline_gn_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayline_gn
    ADD CONSTRAINT railwayline_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4751 (class 2606 OID 183682647)
-- Name: railwayline_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayline_gn_spelling
    ADD CONSTRAINT railwayline_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4747 (class 2606 OID 183682649)
-- Name: railwayline_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayline
    ADD CONSTRAINT railwayline_pkey PRIMARY KEY (localid);


--
-- TOC entry 4756 (class 2606 OID 183682651)
-- Name: railwaylink_gn_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaylink_gn
    ADD CONSTRAINT railwaylink_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4758 (class 2606 OID 183682653)
-- Name: railwaylink_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaylink_gn_spelling
    ADD CONSTRAINT railwaylink_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4754 (class 2606 OID 183682655)
-- Name: railwaylink_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaylink
    ADD CONSTRAINT railwaylink_pkey PRIMARY KEY (localid);


--
-- TOC entry 4763 (class 2606 OID 183682657)
-- Name: railwaynode_gn_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaynode_gn
    ADD CONSTRAINT railwaynode_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4765 (class 2606 OID 183682659)
-- Name: railwaynode_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaynode_gn_spelling
    ADD CONSTRAINT railwaynode_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4761 (class 2606 OID 183682661)
-- Name: railwaynode_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaynode
    ADD CONSTRAINT railwaynode_pkey PRIMARY KEY (localid);


--
-- TOC entry 4769 (class 2606 OID 183682663)
-- Name: railwaystationcode_networkref_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaystationcode_networkref
    ADD CONSTRAINT railwaystationcode_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4767 (class 2606 OID 183682665)
-- Name: railwaystationcode_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaystationcode
    ADD CONSTRAINT railwaystationcode_pkey PRIMARY KEY (localid);


--
-- TOC entry 4774 (class 2606 OID 183682667)
-- Name: railwaystationnode_gn_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaystationnode_gn
    ADD CONSTRAINT railwaystationnode_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4776 (class 2606 OID 183682669)
-- Name: railwaystationnode_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaystationnode_gn_spelling
    ADD CONSTRAINT railwaystationnode_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4772 (class 2606 OID 183682671)
-- Name: railwaystationnode_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaystationnode
    ADD CONSTRAINT railwaystationnode_pkey PRIMARY KEY (localid);


--
-- TOC entry 4780 (class 2606 OID 183682673)
-- Name: railwaytype_networkref_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaytype_networkref
    ADD CONSTRAINT railwaytype_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4778 (class 2606 OID 183682675)
-- Name: railwaytype_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaytype
    ADD CONSTRAINT railwaytype_pkey PRIMARY KEY (localid);


--
-- TOC entry 4784 (class 2606 OID 183682677)
-- Name: railwayuse_networkref_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayuse_networkref
    ADD CONSTRAINT railwayuse_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4782 (class 2606 OID 183682679)
-- Name: railwayuse_pkey; Type: CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayuse
    ADD CONSTRAINT railwayuse_pkey PRIMARY KEY (localid);


--
-- TOC entry 4752 (class 1259 OID 183682772)
-- Name: railwaylink_geometry_idx; Type: INDEX; Schema: tnra; Owner: -
--

CREATE INDEX railwaylink_geometry_idx ON railwaylink USING gist (geometry);


--
-- TOC entry 4759 (class 1259 OID 183682773)
-- Name: railwaynode_geometry_idx; Type: INDEX; Schema: tnra; Owner: -
--

CREATE INDEX railwaynode_geometry_idx ON railwaynode USING gist (geometry);


--
-- TOC entry 4770 (class 1259 OID 183682774)
-- Name: railwaystationnode_geometry_idx; Type: INDEX; Schema: tnra; Owner: -
--

CREATE INDEX railwaystationnode_geometry_idx ON railwaystationnode USING gist (geometry);


--
-- TOC entry 4785 (class 2606 OID 183682847)
-- Name: designspeed_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY designspeed_networkref
    ADD CONSTRAINT designspeed_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES designspeed(localid) ON DELETE CASCADE;


--
-- TOC entry 4786 (class 2606 OID 183682852)
-- Name: nominaltrackgauge_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY nominaltrackgauge_networkref
    ADD CONSTRAINT nominaltrackgauge_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES nominaltrackgauge(localid) ON DELETE CASCADE;


--
-- TOC entry 4787 (class 2606 OID 183682857)
-- Name: numberoftracks_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY numberoftracks_networkref
    ADD CONSTRAINT numberoftracks_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES numberoftracks(localid) ON DELETE CASCADE;


--
-- TOC entry 4788 (class 2606 OID 183682862)
-- Name: railwayclass_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayclass_networkref
    ADD CONSTRAINT railwayclass_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwayclass(localid) ON DELETE CASCADE;


--
-- TOC entry 4789 (class 2606 OID 183682867)
-- Name: railwayelectrification_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayelectrification_networkref
    ADD CONSTRAINT railwayelectrification_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwayelectrification(localid) ON DELETE CASCADE;


--
-- TOC entry 4790 (class 2606 OID 183682872)
-- Name: railwayline_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayline_gn
    ADD CONSTRAINT railwayline_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwayline(localid);


--
-- TOC entry 4791 (class 2606 OID 183682877)
-- Name: railwayline_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayline_gn_spelling
    ADD CONSTRAINT railwayline_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwayline_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4792 (class 2606 OID 183682882)
-- Name: railwaylink_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaylink_gn
    ADD CONSTRAINT railwaylink_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwaylink(localid);


--
-- TOC entry 4793 (class 2606 OID 183682887)
-- Name: railwaylink_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaylink_gn_spelling
    ADD CONSTRAINT railwaylink_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwaylink_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4794 (class 2606 OID 183682892)
-- Name: railwaynode_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaynode_gn
    ADD CONSTRAINT railwaynode_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwaynode(localid);


--
-- TOC entry 4795 (class 2606 OID 183682897)
-- Name: railwaynode_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaynode_gn_spelling
    ADD CONSTRAINT railwaynode_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwaynode_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4796 (class 2606 OID 183682902)
-- Name: railwaystationcode_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaystationcode_networkref
    ADD CONSTRAINT railwaystationcode_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwaystationcode(localid) ON DELETE CASCADE;


--
-- TOC entry 4797 (class 2606 OID 183682907)
-- Name: railwaystationnode_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaystationnode_gn
    ADD CONSTRAINT railwaystationnode_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwaystationnode(localid);


--
-- TOC entry 4798 (class 2606 OID 183682912)
-- Name: railwaystationnode_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaystationnode_gn_spelling
    ADD CONSTRAINT railwaystationnode_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwaystationnode_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4799 (class 2606 OID 183682917)
-- Name: railwaytype_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwaytype_networkref
    ADD CONSTRAINT railwaytype_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwaytype(localid) ON DELETE CASCADE;


--
-- TOC entry 4800 (class 2606 OID 183682922)
-- Name: railwayuse_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnra; Owner: -
--

ALTER TABLE ONLY railwayuse_networkref
    ADD CONSTRAINT railwayuse_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES railwayuse(localid) ON DELETE CASCADE;


-- Completed on 2017-07-25 15:49:29

--
-- PostgreSQL database dump complete
--
--

-- indizes
CREATE INDEX designspeed_networkref_parent_idx ON tnra.designspeed_networkref (parentfk ASC NULLS LAST);
CREATE INDEX nominaltrackgauge_networkref_parent_idx ON tnra.nominaltrackgauge_networkref (parentfk ASC NULLS LAST);
CREATE INDEX numberoftracks_networkref_parent_idx ON tnra.numberoftracks_networkref (parentfk ASC NULLS LAST);
CREATE INDEX railwayclass_networkref_parent_idx ON tnra.railwayclass_networkref (parentfk ASC NULLS LAST);
CREATE INDEX railwayelectrification_networkref_parent_idx ON tnra.railwayelectrification_networkref (parentfk ASC NULLS LAST);
CREATE INDEX railwayline_gn_parent_idx ON tnra.railwayline_gn (parentfk ASC NULLS LAST);
CREATE INDEX railwayline_gn_spelling_parent_idx ON tnra.railwayline_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX railwaylink_gn_parent_idx ON tnra.railwaylink_gn (parentfk ASC NULLS LAST);
CREATE INDEX railwaylink_gn_spelling_parent_idx ON tnra.railwaylink_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX railwaynode_gn_parent_idx ON tnra.railwaynode_gn (parentfk ASC NULLS LAST);
CREATE INDEX railwaynode_gn_spelling_parent_idx ON tnra.railwaynode_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX railwaystationcode_networkref_parent_idx ON tnra.railwaystationcode_networkref (parentfk ASC NULLS LAST);
CREATE INDEX railwaystationnode_gn_parent_idx ON tnra.railwaystationnode_gn (parentfk ASC NULLS LAST);
CREATE INDEX railwaystationnode_gn_spelling_parent_idx ON tnra.railwaystationnode_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX railwaytype_networkref_parent_idx ON tnra.railwaytype_networkref (parentfk ASC NULLS LAST);
CREATE INDEX railwayuse_networkref_parent_idx ON tnra.railwayuse_networkref (parentfk ASC NULLS LAST);
