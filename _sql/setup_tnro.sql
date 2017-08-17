--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.9
-- Dumped by pg_dump version 9.5.1

-- Started on 2017-07-25 15:50:03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 13 (class 2615 OID 185762470)
-- Name: tnro; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA tnro;


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA tnro; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA tnro IS 'Schemata für TransprotNetwork Roads';


SET search_path = tnro, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 298 (class 1259 OID 185762605)
-- Name: eroad; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE eroad (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    europeanroutenumber text,
    europeanroutenumber_nilreason text,
    europeanroutenumber_nil boolean
);


--
-- TOC entry 299 (class 1259 OID 185762611)
-- Name: eroad_gn; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE eroad_gn (
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
-- TOC entry 300 (class 1259 OID 185762617)
-- Name: eroad_gn_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE eroad_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 300
-- Name: eroad_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE eroad_gn_id_seq OWNED BY eroad_gn.id;


--
-- TOC entry 301 (class 1259 OID 185762619)
-- Name: eroad_gn_spelling; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE eroad_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 302 (class 1259 OID 185762625)
-- Name: eroad_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE eroad_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 302
-- Name: eroad_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE eroad_gn_spelling_id_seq OWNED BY eroad_gn_spelling.id;


--
-- TOC entry 303 (class 1259 OID 185762627)
-- Name: eroad_link; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE eroad_link (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    remoteschema text,
    owns boolean,
    fk text,
    href text
);


--
-- TOC entry 304 (class 1259 OID 185762633)
-- Name: eroad_link_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE eroad_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 304
-- Name: eroad_link_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE eroad_link_id_seq OWNED BY eroad_link.id;


--
-- TOC entry 305 (class 1259 OID 185762635)
-- Name: formofway; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE formofway (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    formofway_owns boolean,
    formofway_nilreason text,
    formofway_remoteschema text,
    formofway_fk text,
    formofway_href text
);


--
-- TOC entry 306 (class 1259 OID 185762641)
-- Name: formofway_networkref; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE formofway_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 307 (class 1259 OID 185762647)
-- Name: formofway_networkref_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE formofway_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 307
-- Name: formofway_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE formofway_networkref_id_seq OWNED BY formofway_networkref.id;


--
-- TOC entry 308 (class 1259 OID 185762649)
-- Name: functionalroadclass; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE functionalroadclass (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    functionalclass text
);


--
-- TOC entry 309 (class 1259 OID 185762655)
-- Name: functionalroadclass_networkref; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE functionalroadclass_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 310 (class 1259 OID 185762661)
-- Name: functionalroadclass_networkref_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE functionalroadclass_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 310
-- Name: functionalroadclass_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE functionalroadclass_networkref_id_seq OWNED BY functionalroadclass_networkref.id;


--
-- TOC entry 311 (class 1259 OID 185762663)
-- Name: interchangepoint; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE interchangepoint (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    typeofinterchange_owns boolean,
    typeofinterchange_nilreason text,
    typeofinterchange_remoteschema text,
    typeofinterchange_fk text,
    typeofinterchange_href text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 312 (class 1259 OID 185762669)
-- Name: interchangepoint_gn; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE interchangepoint_gn (
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
-- TOC entry 313 (class 1259 OID 185762675)
-- Name: interchangepoint_gn_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE interchangepoint_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 313
-- Name: interchangepoint_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE interchangepoint_gn_id_seq OWNED BY interchangepoint_gn.id;


--
-- TOC entry 314 (class 1259 OID 185762677)
-- Name: interchangepoint_gn_spelling; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE interchangepoint_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 315 (class 1259 OID 185762683)
-- Name: interchangepoint_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE interchangepoint_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 315
-- Name: interchangepoint_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE interchangepoint_gn_spelling_id_seq OWNED BY interchangepoint_gn_spelling.id;


--
-- TOC entry 316 (class 1259 OID 185762685)
-- Name: numberoflanes; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE numberoflanes (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    direction_owns boolean,
    direction_nilreason text,
    direction_remoteschema text,
    direction_nil boolean,
    direction_fk text,
    direction_href text,
    minmaxnumberoflanes text,
    minmaxnumberoflanes_nilreason text,
    minmaxnumberoflanes_nil boolean,
    numberoflanes integer
);


--
-- TOC entry 317 (class 1259 OID 185762691)
-- Name: numberoflanes_networkref; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE numberoflanes_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 318 (class 1259 OID 185762697)
-- Name: numberoflanes_networkref_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE numberoflanes_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 318
-- Name: numberoflanes_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE numberoflanes_networkref_id_seq OWNED BY numberoflanes_networkref.id;


--
-- TOC entry 319 (class 1259 OID 185762699)
-- Name: road; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE road (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    localroadcode text,
    localroadcode_nilreason text,
    localroadcode_nil boolean,
    nationalroadcode text,
    nationalroadcode_nilreason text,
    nationalroadcode_nil boolean
);


--
-- TOC entry 320 (class 1259 OID 185762705)
-- Name: road_gn; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE road_gn (
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
-- TOC entry 321 (class 1259 OID 185762711)
-- Name: road_gn_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE road_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 321
-- Name: road_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE road_gn_id_seq OWNED BY road_gn.id;


--
-- TOC entry 322 (class 1259 OID 185762713)
-- Name: road_gn_spelling; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE road_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 323 (class 1259 OID 185762719)
-- Name: road_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE road_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 323
-- Name: road_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE road_gn_spelling_id_seq OWNED BY road_gn_spelling.id;


--
-- TOC entry 324 (class 1259 OID 185762721)
-- Name: road_link; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE road_link (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    remoteschema text,
    owns boolean,
    fk text,
    href text
);


--
-- TOC entry 325 (class 1259 OID 185762727)
-- Name: road_link_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE road_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 325
-- Name: road_link_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE road_link_id_seq OWNED BY road_link.id;


--
-- TOC entry 326 (class 1259 OID 185762729)
-- Name: roadlink; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE roadlink (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    fictitious boolean,
    transeuropeantransportnetwork boolean,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 327 (class 1259 OID 185762735)
-- Name: roadlink_gn; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE roadlink_gn (
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
-- TOC entry 328 (class 1259 OID 185762741)
-- Name: roadlink_gn_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE roadlink_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 328
-- Name: roadlink_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE roadlink_gn_id_seq OWNED BY roadlink_gn.id;


--
-- TOC entry 329 (class 1259 OID 185762743)
-- Name: roadlink_gn_spelling; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE roadlink_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 330 (class 1259 OID 185762749)
-- Name: roadlink_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE roadlink_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 330
-- Name: roadlink_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE roadlink_gn_spelling_id_seq OWNED BY roadlink_gn_spelling.id;


--
-- TOC entry 331 (class 1259 OID 185762751)
-- Name: roadnode; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE roadnode (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    formofroadnode_owns boolean,
    formofroadnode_nilreason text,
    formofroadnode_remoteschema text,
    formofroadnode_nil boolean,
    formofroadnode_fk text,
    formofroadnode_href text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 332 (class 1259 OID 185762757)
-- Name: roadnode_gn; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE roadnode_gn (
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
-- TOC entry 333 (class 1259 OID 185762763)
-- Name: roadnode_gn_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE roadnode_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 333
-- Name: roadnode_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE roadnode_gn_id_seq OWNED BY roadnode_gn.id;


--
-- TOC entry 334 (class 1259 OID 185762765)
-- Name: roadnode_gn_spelling; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE roadnode_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 335 (class 1259 OID 185762771)
-- Name: roadnode_gn_spelling_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE roadnode_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 335
-- Name: roadnode_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE roadnode_gn_spelling_id_seq OWNED BY roadnode_gn_spelling.id;


--
-- TOC entry 336 (class 1259 OID 185762773)
-- Name: roadservicetype; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE roadservicetype (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    type_owns boolean,
    type_nilreason text,
    type_remoteschema text,
    type_fk text,
    type_href text
);


--
-- TOC entry 337 (class 1259 OID 185762779)
-- Name: roadservicetype_availablefacility; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE roadservicetype_availablefacility (
    id integer NOT NULL,
    parentfk text NOT NULL,
    owns boolean,
    nilreason text,
    remoteschema text,
    fk text,
    href text
);


--
-- TOC entry 338 (class 1259 OID 185762785)
-- Name: roadservicetype_availablefacility_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE roadservicetype_availablefacility_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 338
-- Name: roadservicetype_availablefacility_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE roadservicetype_availablefacility_id_seq OWNED BY roadservicetype_availablefacility.id;


--
-- TOC entry 339 (class 1259 OID 185762787)
-- Name: roadservicetype_networkref; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE roadservicetype_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 340 (class 1259 OID 185762793)
-- Name: roadservicetype_networkref_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE roadservicetype_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 340
-- Name: roadservicetype_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE roadservicetype_networkref_id_seq OWNED BY roadservicetype_networkref.id;


--
-- TOC entry 341 (class 1259 OID 185762795)
-- Name: roadsurfacecategory; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE roadsurfacecategory (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    surfacecategory_owns boolean,
    surfacecategory_nilreason text,
    surfacecategory_remoteschema text,
    surfacecategory_fk text,
    surfacecategory_href text
);


--
-- TOC entry 342 (class 1259 OID 185762801)
-- Name: roadsurfacecategory_networkref; Type: TABLE; Schema: tnro; Owner: -
--

CREATE TABLE roadsurfacecategory_networkref (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    networkreference_nilreason text,
    href text
);


--
-- TOC entry 343 (class 1259 OID 185762807)
-- Name: roadsurfacecategory_networkref_id_seq; Type: SEQUENCE; Schema: tnro; Owner: -
--

CREATE SEQUENCE roadsurfacecategory_networkref_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 343
-- Name: roadsurfacecategory_networkref_id_seq; Type: SEQUENCE OWNED BY; Schema: tnro; Owner: -
--

ALTER SEQUENCE roadsurfacecategory_networkref_id_seq OWNED BY roadsurfacecategory_networkref.id;


--
-- TOC entry 4706 (class 2604 OID 185762819)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY eroad_gn ALTER COLUMN id SET DEFAULT nextval('eroad_gn_id_seq'::regclass);


--
-- TOC entry 4708 (class 2604 OID 185762820)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY eroad_gn_spelling ALTER COLUMN id SET DEFAULT nextval('eroad_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4709 (class 2604 OID 185762821)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY eroad_link ALTER COLUMN id SET DEFAULT nextval('eroad_link_id_seq'::regclass);


--
-- TOC entry 4710 (class 2604 OID 185762822)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY formofway_networkref ALTER COLUMN id SET DEFAULT nextval('formofway_networkref_id_seq'::regclass);


--
-- TOC entry 4711 (class 2604 OID 185762823)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY functionalroadclass_networkref ALTER COLUMN id SET DEFAULT nextval('functionalroadclass_networkref_id_seq'::regclass);


--
-- TOC entry 4712 (class 2604 OID 185762824)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY interchangepoint_gn ALTER COLUMN id SET DEFAULT nextval('interchangepoint_gn_id_seq'::regclass);


--
-- TOC entry 4714 (class 2604 OID 185762825)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY interchangepoint_gn_spelling ALTER COLUMN id SET DEFAULT nextval('interchangepoint_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4715 (class 2604 OID 185762826)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY numberoflanes_networkref ALTER COLUMN id SET DEFAULT nextval('numberoflanes_networkref_id_seq'::regclass);


--
-- TOC entry 4716 (class 2604 OID 185762827)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY road_gn ALTER COLUMN id SET DEFAULT nextval('road_gn_id_seq'::regclass);


--
-- TOC entry 4718 (class 2604 OID 185762828)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY road_gn_spelling ALTER COLUMN id SET DEFAULT nextval('road_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4719 (class 2604 OID 185762829)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY road_link ALTER COLUMN id SET DEFAULT nextval('road_link_id_seq'::regclass);


--
-- TOC entry 4720 (class 2604 OID 185762830)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadlink_gn ALTER COLUMN id SET DEFAULT nextval('roadlink_gn_id_seq'::regclass);


--
-- TOC entry 4722 (class 2604 OID 185762831)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadlink_gn_spelling ALTER COLUMN id SET DEFAULT nextval('roadlink_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4723 (class 2604 OID 185762832)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadnode_gn ALTER COLUMN id SET DEFAULT nextval('roadnode_gn_id_seq'::regclass);


--
-- TOC entry 4725 (class 2604 OID 185762833)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadnode_gn_spelling ALTER COLUMN id SET DEFAULT nextval('roadnode_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4726 (class 2604 OID 185762834)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadservicetype_availablefacility ALTER COLUMN id SET DEFAULT nextval('roadservicetype_availablefacility_id_seq'::regclass);


--
-- TOC entry 4727 (class 2604 OID 185762835)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadservicetype_networkref ALTER COLUMN id SET DEFAULT nextval('roadservicetype_networkref_id_seq'::regclass);


--
-- TOC entry 4728 (class 2604 OID 185762836)
-- Name: id; Type: DEFAULT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadsurfacecategory_networkref ALTER COLUMN id SET DEFAULT nextval('roadsurfacecategory_networkref_id_seq'::regclass);


--
-- TOC entry 4732 (class 2606 OID 185762876)
-- Name: eroad_gn_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY eroad_gn
    ADD CONSTRAINT eroad_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4734 (class 2606 OID 185762878)
-- Name: eroad_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY eroad_gn_spelling
    ADD CONSTRAINT eroad_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4736 (class 2606 OID 185762880)
-- Name: eroad_link_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY eroad_link
    ADD CONSTRAINT eroad_link_pkey PRIMARY KEY (id);


--
-- TOC entry 4730 (class 2606 OID 185762882)
-- Name: eroad_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY eroad
    ADD CONSTRAINT eroad_pkey PRIMARY KEY (localid);


--
-- TOC entry 4740 (class 2606 OID 185762884)
-- Name: formofway_networkref_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY formofway_networkref
    ADD CONSTRAINT formofway_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4738 (class 2606 OID 185762886)
-- Name: formofway_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY formofway
    ADD CONSTRAINT formofway_pkey PRIMARY KEY (localid);


--
-- TOC entry 4744 (class 2606 OID 185762888)
-- Name: functionalroadclass_networkref_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY functionalroadclass_networkref
    ADD CONSTRAINT functionalroadclass_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4742 (class 2606 OID 185762890)
-- Name: functionalroadclass_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY functionalroadclass
    ADD CONSTRAINT functionalroadclass_pkey PRIMARY KEY (localid);


--
-- TOC entry 4749 (class 2606 OID 185762892)
-- Name: interchangepoint_gn_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY interchangepoint_gn
    ADD CONSTRAINT interchangepoint_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4751 (class 2606 OID 185762894)
-- Name: interchangepoint_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY interchangepoint_gn_spelling
    ADD CONSTRAINT interchangepoint_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4747 (class 2606 OID 185762896)
-- Name: interchangepoint_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY interchangepoint
    ADD CONSTRAINT interchangepoint_pkey PRIMARY KEY (localid);


--
-- TOC entry 4755 (class 2606 OID 185762898)
-- Name: numberoflanes_networkref_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY numberoflanes_networkref
    ADD CONSTRAINT numberoflanes_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4753 (class 2606 OID 185762900)
-- Name: numberoflanes_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY numberoflanes
    ADD CONSTRAINT numberoflanes_pkey PRIMARY KEY (localid);


--
-- TOC entry 4759 (class 2606 OID 185762902)
-- Name: road_gn_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY road_gn
    ADD CONSTRAINT road_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4761 (class 2606 OID 185762904)
-- Name: road_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY road_gn_spelling
    ADD CONSTRAINT road_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4763 (class 2606 OID 185762906)
-- Name: road_link_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY road_link
    ADD CONSTRAINT road_link_pkey PRIMARY KEY (id);


--
-- TOC entry 4757 (class 2606 OID 185762908)
-- Name: road_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY road
    ADD CONSTRAINT road_pkey PRIMARY KEY (localid);


--
-- TOC entry 4768 (class 2606 OID 185762910)
-- Name: roadlink_gn_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadlink_gn
    ADD CONSTRAINT roadlink_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4770 (class 2606 OID 185762912)
-- Name: roadlink_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadlink_gn_spelling
    ADD CONSTRAINT roadlink_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4766 (class 2606 OID 185762914)
-- Name: roadlink_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadlink
    ADD CONSTRAINT roadlink_pkey PRIMARY KEY (localid);


--
-- TOC entry 4775 (class 2606 OID 185762916)
-- Name: roadnode_gn_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadnode_gn
    ADD CONSTRAINT roadnode_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4777 (class 2606 OID 185762918)
-- Name: roadnode_gn_spelling_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadnode_gn_spelling
    ADD CONSTRAINT roadnode_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4773 (class 2606 OID 185762920)
-- Name: roadnode_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadnode
    ADD CONSTRAINT roadnode_pkey PRIMARY KEY (localid);


--
-- TOC entry 4781 (class 2606 OID 185762922)
-- Name: roadservicetype_availablefacility_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadservicetype_availablefacility
    ADD CONSTRAINT roadservicetype_availablefacility_pkey PRIMARY KEY (id);


--
-- TOC entry 4783 (class 2606 OID 185762924)
-- Name: roadservicetype_networkref_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadservicetype_networkref
    ADD CONSTRAINT roadservicetype_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4779 (class 2606 OID 185762926)
-- Name: roadservicetype_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadservicetype
    ADD CONSTRAINT roadservicetype_pkey PRIMARY KEY (localid);


--
-- TOC entry 4787 (class 2606 OID 185762928)
-- Name: roadsurfacecategory_networkref_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadsurfacecategory_networkref
    ADD CONSTRAINT roadsurfacecategory_networkref_pkey PRIMARY KEY (id);


--
-- TOC entry 4785 (class 2606 OID 185762930)
-- Name: roadsurfacecategory_pkey; Type: CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadsurfacecategory
    ADD CONSTRAINT roadsurfacecategory_pkey PRIMARY KEY (localid);


--
-- TOC entry 4745 (class 1259 OID 185762934)
-- Name: interchangepoint_geometry_idx; Type: INDEX; Schema: tnro; Owner: -
--

CREATE INDEX interchangepoint_geometry_idx ON interchangepoint USING gist (geometry);


--
-- TOC entry 4764 (class 1259 OID 185762935)
-- Name: roadlink_geometry_idx; Type: INDEX; Schema: tnro; Owner: -
--

CREATE INDEX roadlink_geometry_idx ON roadlink USING gist (geometry);


--
-- TOC entry 4771 (class 1259 OID 185762936)
-- Name: roadnode_geometry_idx; Type: INDEX; Schema: tnro; Owner: -
--

CREATE INDEX roadnode_geometry_idx ON roadnode USING gist (geometry);


--
-- TOC entry 4788 (class 2606 OID 185762987)
-- Name: eroad_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY eroad_gn
    ADD CONSTRAINT eroad_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES eroad(localid);


--
-- TOC entry 4789 (class 2606 OID 185762992)
-- Name: eroad_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY eroad_gn_spelling
    ADD CONSTRAINT eroad_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES eroad_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4790 (class 2606 OID 185762997)
-- Name: eroad_link_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY eroad_link
    ADD CONSTRAINT eroad_link_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES eroad(localid) ON DELETE CASCADE;


--
-- TOC entry 4791 (class 2606 OID 185763002)
-- Name: formofway_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY formofway_networkref
    ADD CONSTRAINT formofway_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES formofway(localid) ON DELETE CASCADE;


--
-- TOC entry 4792 (class 2606 OID 185763008)
-- Name: functionalroadclass_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY functionalroadclass_networkref
    ADD CONSTRAINT functionalroadclass_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES functionalroadclass(localid) ON DELETE CASCADE;


--
-- TOC entry 4793 (class 2606 OID 185763014)
-- Name: interchangepoint_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY interchangepoint_gn
    ADD CONSTRAINT interchangepoint_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES interchangepoint(localid);


--
-- TOC entry 4794 (class 2606 OID 185763019)
-- Name: interchangepoint_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY interchangepoint_gn_spelling
    ADD CONSTRAINT interchangepoint_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES interchangepoint_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4795 (class 2606 OID 185763024)
-- Name: numberoflanes_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY numberoflanes_networkref
    ADD CONSTRAINT numberoflanes_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES numberoflanes(localid) ON DELETE CASCADE;


--
-- TOC entry 4796 (class 2606 OID 185763029)
-- Name: road_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY road_gn
    ADD CONSTRAINT road_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES road(localid);


--
-- TOC entry 4797 (class 2606 OID 185763034)
-- Name: road_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY road_gn_spelling
    ADD CONSTRAINT road_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES road_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4798 (class 2606 OID 185763039)
-- Name: road_link_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY road_link
    ADD CONSTRAINT road_link_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES road(localid) ON DELETE CASCADE;


--
-- TOC entry 4799 (class 2606 OID 185763044)
-- Name: roadlink_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadlink_gn
    ADD CONSTRAINT roadlink_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES roadlink(localid);


--
-- TOC entry 4800 (class 2606 OID 185763049)
-- Name: roadlink_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadlink_gn_spelling
    ADD CONSTRAINT roadlink_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES roadlink_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4801 (class 2606 OID 185763054)
-- Name: roadnode_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadnode_gn
    ADD CONSTRAINT roadnode_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES roadnode(localid);


--
-- TOC entry 4802 (class 2606 OID 185763059)
-- Name: roadnode_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadnode_gn_spelling
    ADD CONSTRAINT roadnode_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES roadnode_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4803 (class 2606 OID 185763064)
-- Name: roadservicetype_availablefacility_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadservicetype_availablefacility
    ADD CONSTRAINT roadservicetype_availablefacility_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES roadservicetype(localid) ON DELETE CASCADE;


--
-- TOC entry 4804 (class 2606 OID 185763069)
-- Name: roadservicetype_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadservicetype_networkref
    ADD CONSTRAINT roadservicetype_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES roadservicetype(localid) ON DELETE CASCADE;


--
-- TOC entry 4805 (class 2606 OID 185763074)
-- Name: roadsurfacecategory_networkref_parentfk_fkey; Type: FK CONSTRAINT; Schema: tnro; Owner: -
--

ALTER TABLE ONLY roadsurfacecategory_networkref
    ADD CONSTRAINT roadsurfacecategory_networkref_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES roadsurfacecategory(localid) ON DELETE CASCADE;


-- Completed on 2017-07-25 15:50:03

--
-- PostgreSQL database dump complete
--

