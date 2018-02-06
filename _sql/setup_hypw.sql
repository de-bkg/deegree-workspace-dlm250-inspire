--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.9
-- Dumped by pg_dump version 9.5.1

-- Started on 2017-07-25 15:47:55

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 15 (class 2615 OID 197375791)
-- Name: hypw; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA hypw;


--
-- TOC entry 5018 (class 0 OID 0)
-- Dependencies: 15
-- Name: SCHEMA hypw; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA hypw IS 'Schemata für INSPIRE HydroPhysicalWaters';


SET search_path = hypw, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 358 (class 1259 OID 197375852)
-- Name: crossing; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE crossing (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    condition_nilreason text,
    condition_nil boolean,
    condition_fk text,
    condition_href text,
    type_nilreason text,
    type_nil boolean,
    type_fk text,
    type_href text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 359 (class 1259 OID 197375858)
-- Name: crossing_gn; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE crossing_gn (
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
-- TOC entry 360 (class 1259 OID 197375864)
-- Name: crossing_gn_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE crossing_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 360
-- Name: crossing_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE crossing_gn_id_seq OWNED BY crossing_gn.id;


--
-- TOC entry 361 (class 1259 OID 197375866)
-- Name: crossing_gn_spelling; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE crossing_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 362 (class 1259 OID 197375872)
-- Name: crossing_gn_spelling_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE crossing_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 362
-- Name: crossing_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE crossing_gn_spelling_id_seq OWNED BY crossing_gn_spelling.id;


--
-- TOC entry 363 (class 1259 OID 197375874)
-- Name: crossing_hydroid; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE crossing_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 364 (class 1259 OID 197375880)
-- Name: crossing_hydroid_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE crossing_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 364
-- Name: crossing_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE crossing_hydroid_id_seq OWNED BY crossing_hydroid.id;


--
-- TOC entry 365 (class 1259 OID 197375882)
-- Name: damorweir; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE damorweir (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    condition_nilreason text,
    condition_nil boolean,
    condition_fk text,
    condition_href text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 366 (class 1259 OID 197375888)
-- Name: damorweir_gn; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE damorweir_gn (
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
-- TOC entry 367 (class 1259 OID 197375894)
-- Name: damorweir_gn_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE damorweir_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5022 (class 0 OID 0)
-- Dependencies: 367
-- Name: damorweir_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE damorweir_gn_id_seq OWNED BY damorweir_gn.id;


--
-- TOC entry 368 (class 1259 OID 197375896)
-- Name: damorweir_gn_spelling; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE damorweir_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 369 (class 1259 OID 197375902)
-- Name: damorweir_gn_spelling_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE damorweir_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5023 (class 0 OID 0)
-- Dependencies: 369
-- Name: damorweir_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE damorweir_gn_spelling_id_seq OWNED BY damorweir_gn_spelling.id;


--
-- TOC entry 370 (class 1259 OID 197375904)
-- Name: damorweir_hydroid; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE damorweir_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 371 (class 1259 OID 197375910)
-- Name: damorweir_hydroid_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE damorweir_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 371
-- Name: damorweir_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE damorweir_hydroid_id_seq OWNED BY damorweir_hydroid.id;


--
-- TOC entry 372 (class 1259 OID 197375912)
-- Name: embankment; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE embankment (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    condition_nilreason text,
    condition_nil boolean,
    condition_fk text,
    condition_href text,
    geometry public.geometry(Geometry,4258),
    embankmenttype_href text,
    embankmenttype_nilreason text,
    embankmenttype_nil boolean,
    predominantfeatureheight numeric,
    predominantfeatureheight_uom text,
    predominantfeatureheight_nilreason text,
    predominantfeatureheight_nil boolean,
    waterleveleffect_href text,
    waterleveleffect_nilreason text,
    waterleveleffect_nil boolean
);


--
-- TOC entry 373 (class 1259 OID 197375918)
-- Name: embankment_gn; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE embankment_gn (
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
-- TOC entry 374 (class 1259 OID 197375924)
-- Name: embankment_gn_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE embankment_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 374
-- Name: embankment_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE embankment_gn_id_seq OWNED BY embankment_gn.id;


--
-- TOC entry 375 (class 1259 OID 197375926)
-- Name: embankment_gn_spelling; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE embankment_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 376 (class 1259 OID 197375932)
-- Name: embankment_gn_spelling_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE embankment_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 376
-- Name: embankment_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE embankment_gn_spelling_id_seq OWNED BY embankment_gn_spelling.id;


--
-- TOC entry 377 (class 1259 OID 197375934)
-- Name: embankment_hydroid; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE embankment_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 378 (class 1259 OID 197375940)
-- Name: embankment_hydroid_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE embankment_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 378
-- Name: embankment_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE embankment_hydroid_id_seq OWNED BY embankment_hydroid.id;


--
-- TOC entry 379 (class 1259 OID 197375942)
-- Name: falls; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE falls (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    height numeric,
    height_nilreason text,
    height_uom text,
    height_nil boolean,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 380 (class 1259 OID 197375948)
-- Name: falls_gn; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE falls_gn (
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
-- TOC entry 381 (class 1259 OID 197375954)
-- Name: falls_gn_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE falls_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 381
-- Name: falls_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE falls_gn_id_seq OWNED BY falls_gn.id;


--
-- TOC entry 382 (class 1259 OID 197375956)
-- Name: falls_gn_spelling; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE falls_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 383 (class 1259 OID 197375962)
-- Name: falls_gn_spelling_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE falls_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 383
-- Name: falls_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE falls_gn_spelling_id_seq OWNED BY falls_gn_spelling.id;


--
-- TOC entry 384 (class 1259 OID 197375964)
-- Name: falls_hydroid; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE falls_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 385 (class 1259 OID 197375970)
-- Name: falls_hydroid_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE falls_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 385
-- Name: falls_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE falls_hydroid_id_seq OWNED BY falls_hydroid.id;


--
-- TOC entry 386 (class 1259 OID 197375972)
-- Name: island; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE island (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    beginlifespanversion_nilreason text,
    beginlifespanversion_nil boolean,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 387 (class 1259 OID 197375978)
-- Name: island_gn; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE island_gn (
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
-- TOC entry 388 (class 1259 OID 197375984)
-- Name: island_gn_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE island_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 388
-- Name: island_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE island_gn_id_seq OWNED BY island_gn.id;


--
-- TOC entry 389 (class 1259 OID 197375986)
-- Name: island_gn_spelling; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE island_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 390 (class 1259 OID 197375992)
-- Name: island_gn_spelling_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE island_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 390
-- Name: island_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE island_gn_spelling_id_seq OWNED BY island_gn_spelling.id;


--
-- TOC entry 391 (class 1259 OID 197375994)
-- Name: island_hydroid; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE island_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 392 (class 1259 OID 197376000)
-- Name: island_hydroid_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE island_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 392
-- Name: island_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE island_hydroid_id_seq OWNED BY island_hydroid.id;


--
-- TOC entry 393 (class 1259 OID 197376002)
-- Name: landwaterboundary; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE landwaterboundary (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    origin text,
    origin_nilreason text,
    origin_nil boolean,
    waterlevelcategory_nilreason text,
    waterlevelcategory_nil boolean,
    waterlevelcategory_fk text,
    waterlevelcategory_href text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 394 (class 1259 OID 197376008)
-- Name: lock; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE lock (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    condition_nilreason text,
    condition_nil boolean,
    condition_fk text,
    condition_href text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 395 (class 1259 OID 197376014)
-- Name: lock_gn; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE lock_gn (
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
-- TOC entry 396 (class 1259 OID 197376020)
-- Name: lock_gn_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE lock_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 396
-- Name: lock_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE lock_gn_id_seq OWNED BY lock_gn.id;


--
-- TOC entry 397 (class 1259 OID 197376022)
-- Name: lock_gn_spelling; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE lock_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 398 (class 1259 OID 197376028)
-- Name: lock_gn_spelling_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE lock_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 398
-- Name: lock_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE lock_gn_spelling_id_seq OWNED BY lock_gn_spelling.id;


--
-- TOC entry 399 (class 1259 OID 197376030)
-- Name: lock_hydroid; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE lock_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 400 (class 1259 OID 197376036)
-- Name: lock_hydroid_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE lock_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 400
-- Name: lock_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE lock_hydroid_id_seq OWNED BY lock_hydroid.id;


--
-- TOC entry 401 (class 1259 OID 197376038)
-- Name: shore; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE shore (
    localid text NOT NULL,
    composition_nilreason text,
    composition_nil boolean,
    composition_fk text,
    composition_href text,
    delineationknown boolean,
    delineationknown_nilreason text,
    delineationknown_nil boolean,
    beginlifespanversion timestamp without time zone,
    geometry public.geometry(MultiSurface,4258)
);


--
-- TOC entry 402 (class 1259 OID 197376044)
-- Name: shore_gn; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE shore_gn (
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
-- TOC entry 403 (class 1259 OID 197376050)
-- Name: shore_gn_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE shore_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 403
-- Name: shore_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE shore_gn_id_seq OWNED BY shore_gn.id;


--
-- TOC entry 404 (class 1259 OID 197376052)
-- Name: shore_gn_spelling; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE shore_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 405 (class 1259 OID 197376058)
-- Name: shore_gn_spelling_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE shore_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 405
-- Name: shore_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE shore_gn_spelling_id_seq OWNED BY shore_gn_spelling.id;


--
-- TOC entry 406 (class 1259 OID 197376060)
-- Name: shore_hydroid; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE shore_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 407 (class 1259 OID 197376066)
-- Name: shore_hydroid_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE shore_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 407
-- Name: shore_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE shore_hydroid_id_seq OWNED BY shore_hydroid.id;


--
-- TOC entry 408 (class 1259 OID 197376068)
-- Name: shorelineconstruction; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE shorelineconstruction (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    condition_nilreason text,
    condition_nil boolean,
    condition_fk text,
    condition_href text,
    geometry public.geometry(Geometry,4258),
    shorelineconstructiontype_nilreason text,
    shorelineconstructiontype_href text,
    shorelineconstructiontype_nil text
);


--
-- TOC entry 409 (class 1259 OID 197376074)
-- Name: shorelineconstruction_gn; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE shorelineconstruction_gn (
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
-- TOC entry 410 (class 1259 OID 197376080)
-- Name: shorelineconstruction_gn_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE shorelineconstruction_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 410
-- Name: shorelineconstruction_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE shorelineconstruction_gn_id_seq OWNED BY shorelineconstruction_gn.id;


--
-- TOC entry 411 (class 1259 OID 197376082)
-- Name: shorelineconstruction_gn_spelling; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE shorelineconstruction_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 412 (class 1259 OID 197376088)
-- Name: shorelineconstruction_gn_spelling_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE shorelineconstruction_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 412
-- Name: shorelineconstruction_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE shorelineconstruction_gn_spelling_id_seq OWNED BY shorelineconstruction_gn_spelling.id;


--
-- TOC entry 413 (class 1259 OID 197376090)
-- Name: shorelineconstruction_hydroid; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE shorelineconstruction_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 414 (class 1259 OID 197376096)
-- Name: shorelineconstruction_hydroid_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE shorelineconstruction_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 414
-- Name: shorelineconstruction_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE shorelineconstruction_hydroid_id_seq OWNED BY shorelineconstruction_hydroid.id;


--
-- TOC entry 415 (class 1259 OID 197376098)
-- Name: standingwater; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE standingwater (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    origin text,
    origin_nilreason text,
    origin_nil boolean,
    persistence_nilreason text,
    persistence_nil boolean,
    persistence_fk text,
    persistence_href text,
    tidal boolean,
    tidal_nilreason text,
    tidal_nil boolean,
    elevation numeric,
    elevation_nilreason text,
    elevation_uom text,
    elevation_nil boolean,
    meandepth numeric,
    meandepth_nilreason text,
    meandepth_uom text,
    meandepth_nil boolean,
    surfacearea numeric,
    surfacearea_nilreason text,
    surfacearea_uom text,
    surfacearea_nil boolean,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 416 (class 1259 OID 197376104)
-- Name: standingwater_gn; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE standingwater_gn (
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
-- TOC entry 417 (class 1259 OID 197376110)
-- Name: standingwater_gn_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE standingwater_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 417
-- Name: standingwater_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE standingwater_gn_id_seq OWNED BY standingwater_gn.id;


--
-- TOC entry 418 (class 1259 OID 197376112)
-- Name: standingwater_gn_spelling; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE standingwater_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 419 (class 1259 OID 197376118)
-- Name: standingwater_gn_spelling_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE standingwater_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 419
-- Name: standingwater_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE standingwater_gn_spelling_id_seq OWNED BY standingwater_gn_spelling.id;


--
-- TOC entry 420 (class 1259 OID 197376120)
-- Name: standingwater_hydroid; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE standingwater_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 421 (class 1259 OID 197376126)
-- Name: standingwater_hydroid_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE standingwater_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 421
-- Name: standingwater_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE standingwater_hydroid_id_seq OWNED BY standingwater_hydroid.id;


--
-- TOC entry 422 (class 1259 OID 197376128)
-- Name: watercourse; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE watercourse (
    localid text NOT NULL,
    beginlifespanversion timestamp without time zone,
    origin text,
    origin_nilreason text,
    origin_nil boolean,
    persistence_nilreason text,
    persistence_nil boolean,
    persistence_fk text,
    persistence_href text,
    tidal boolean,
    tidal_nilreason text,
    tidal_nil boolean,
    condition_nilreason text,
    condition_nil boolean,
    condition_fk text,
    condition_href text,
    delineationknown boolean,
    delineationknown_nilreason text,
    delineationknown_nil boolean,
    length numeric,
    length_nilreason text,
    length_uom text,
    length_nil boolean,
    level text,
    level_nilreason text,
    level_nil boolean,
    streamorder_nilreason text,
    streamorder_nil boolean,
    streamorder_hydroordercode_order text,
    streamorder_hydroordercode_orderscheme text,
    streamorder_hydroordercode_scope text,
    width_nilreason text,
    width_nil boolean,
    width_widthrange_lower numeric,
    width_widthrange_lower_uom text,
    width_widthrange_upper numeric,
    width_widthrange_upper_uom text,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 423 (class 1259 OID 197376134)
-- Name: watercourse_gn; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE watercourse_gn (
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
-- TOC entry 424 (class 1259 OID 197376140)
-- Name: watercourse_gn_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE watercourse_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 424
-- Name: watercourse_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE watercourse_gn_id_seq OWNED BY watercourse_gn.id;


--
-- TOC entry 425 (class 1259 OID 197376142)
-- Name: watercourse_gn_spelling; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE watercourse_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 426 (class 1259 OID 197376148)
-- Name: watercourse_gn_spelling_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE watercourse_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 426
-- Name: watercourse_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE watercourse_gn_spelling_id_seq OWNED BY watercourse_gn_spelling.id;


--
-- TOC entry 427 (class 1259 OID 197376150)
-- Name: watercourse_hydroid; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE watercourse_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 428 (class 1259 OID 197376156)
-- Name: watercourse_hydroid_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE watercourse_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 428
-- Name: watercourse_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE watercourse_hydroid_id_seq OWNED BY watercourse_hydroid.id;


--
-- TOC entry 429 (class 1259 OID 197376158)
-- Name: wetland; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE wetland (
    localid text NOT NULL,
    tidal boolean,
    tidal_nilreason text,
    tidal_nil boolean,
    beginlifespanversion timestamp without time zone,
    geometry public.geometry(Geometry,4258)
);


--
-- TOC entry 430 (class 1259 OID 197376164)
-- Name: wetland_gn; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE wetland_gn (
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
-- TOC entry 431 (class 1259 OID 197376170)
-- Name: wetland_gn_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE wetland_gn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 431
-- Name: wetland_gn_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE wetland_gn_id_seq OWNED BY wetland_gn.id;


--
-- TOC entry 432 (class 1259 OID 197376172)
-- Name: wetland_gn_spelling; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE wetland_gn_spelling (
    id integer NOT NULL,
    parentfk integer NOT NULL,
    text text,
    script text,
    nil boolean,
    nil_reason text
);


--
-- TOC entry 433 (class 1259 OID 197376178)
-- Name: wetland_gn_spelling_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE wetland_gn_spelling_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 433
-- Name: wetland_gn_spelling_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE wetland_gn_spelling_id_seq OWNED BY wetland_gn_spelling.id;


--
-- TOC entry 434 (class 1259 OID 197376180)
-- Name: wetland_hydroid; Type: TABLE; Schema: hypw; Owner: -
--

CREATE TABLE wetland_hydroid (
    id integer NOT NULL,
    parentfk text NOT NULL,
    nilreason text,
    nil boolean,
    hydroidentifier_classificationscheme text,
    hydroidentifier_localid text,
    hydroidentifier_namespace text
);


--
-- TOC entry 435 (class 1259 OID 197376186)
-- Name: wetland_hydroid_id_seq; Type: SEQUENCE; Schema: hypw; Owner: -
--

CREATE SEQUENCE wetland_hydroid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 435
-- Name: wetland_hydroid_id_seq; Type: SEQUENCE OWNED BY; Schema: hypw; Owner: -
--

ALTER SEQUENCE wetland_hydroid_id_seq OWNED BY wetland_hydroid.id;


--
-- TOC entry 4723 (class 2604 OID 197376194)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY crossing_gn ALTER COLUMN id SET DEFAULT nextval('crossing_gn_id_seq'::regclass);


--
-- TOC entry 4725 (class 2604 OID 197376195)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY crossing_gn_spelling ALTER COLUMN id SET DEFAULT nextval('crossing_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4726 (class 2604 OID 197376196)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY crossing_hydroid ALTER COLUMN id SET DEFAULT nextval('crossing_hydroid_id_seq'::regclass);


--
-- TOC entry 4727 (class 2604 OID 197376197)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY damorweir_gn ALTER COLUMN id SET DEFAULT nextval('damorweir_gn_id_seq'::regclass);


--
-- TOC entry 4729 (class 2604 OID 197376198)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY damorweir_gn_spelling ALTER COLUMN id SET DEFAULT nextval('damorweir_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4730 (class 2604 OID 197376199)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY damorweir_hydroid ALTER COLUMN id SET DEFAULT nextval('damorweir_hydroid_id_seq'::regclass);


--
-- TOC entry 4731 (class 2604 OID 197376200)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY embankment_gn ALTER COLUMN id SET DEFAULT nextval('embankment_gn_id_seq'::regclass);


--
-- TOC entry 4733 (class 2604 OID 197376201)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY embankment_gn_spelling ALTER COLUMN id SET DEFAULT nextval('embankment_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4734 (class 2604 OID 197376202)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY embankment_hydroid ALTER COLUMN id SET DEFAULT nextval('embankment_hydroid_id_seq'::regclass);


--
-- TOC entry 4735 (class 2604 OID 197376203)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY falls_gn ALTER COLUMN id SET DEFAULT nextval('falls_gn_id_seq'::regclass);


--
-- TOC entry 4737 (class 2604 OID 197376204)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY falls_gn_spelling ALTER COLUMN id SET DEFAULT nextval('falls_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4738 (class 2604 OID 197376205)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY falls_hydroid ALTER COLUMN id SET DEFAULT nextval('falls_hydroid_id_seq'::regclass);


--
-- TOC entry 4739 (class 2604 OID 197376206)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY island_gn ALTER COLUMN id SET DEFAULT nextval('island_gn_id_seq'::regclass);


--
-- TOC entry 4741 (class 2604 OID 197376207)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY island_gn_spelling ALTER COLUMN id SET DEFAULT nextval('island_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4742 (class 2604 OID 197376208)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY island_hydroid ALTER COLUMN id SET DEFAULT nextval('island_hydroid_id_seq'::regclass);


--
-- TOC entry 4743 (class 2604 OID 197376209)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY lock_gn ALTER COLUMN id SET DEFAULT nextval('lock_gn_id_seq'::regclass);


--
-- TOC entry 4745 (class 2604 OID 197376210)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY lock_gn_spelling ALTER COLUMN id SET DEFAULT nextval('lock_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4746 (class 2604 OID 197376211)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY lock_hydroid ALTER COLUMN id SET DEFAULT nextval('lock_hydroid_id_seq'::regclass);


--
-- TOC entry 4747 (class 2604 OID 197376212)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shore_gn ALTER COLUMN id SET DEFAULT nextval('shore_gn_id_seq'::regclass);


--
-- TOC entry 4749 (class 2604 OID 197376213)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shore_gn_spelling ALTER COLUMN id SET DEFAULT nextval('shore_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4750 (class 2604 OID 197376214)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shore_hydroid ALTER COLUMN id SET DEFAULT nextval('shore_hydroid_id_seq'::regclass);


--
-- TOC entry 4751 (class 2604 OID 197376215)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shorelineconstruction_gn ALTER COLUMN id SET DEFAULT nextval('shorelineconstruction_gn_id_seq'::regclass);


--
-- TOC entry 4753 (class 2604 OID 197376216)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shorelineconstruction_gn_spelling ALTER COLUMN id SET DEFAULT nextval('shorelineconstruction_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4754 (class 2604 OID 197376217)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shorelineconstruction_hydroid ALTER COLUMN id SET DEFAULT nextval('shorelineconstruction_hydroid_id_seq'::regclass);


--
-- TOC entry 4755 (class 2604 OID 197376218)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY standingwater_gn ALTER COLUMN id SET DEFAULT nextval('standingwater_gn_id_seq'::regclass);


--
-- TOC entry 4757 (class 2604 OID 197376219)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY standingwater_gn_spelling ALTER COLUMN id SET DEFAULT nextval('standingwater_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4758 (class 2604 OID 197376220)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY standingwater_hydroid ALTER COLUMN id SET DEFAULT nextval('standingwater_hydroid_id_seq'::regclass);


--
-- TOC entry 4759 (class 2604 OID 197376221)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY watercourse_gn ALTER COLUMN id SET DEFAULT nextval('watercourse_gn_id_seq'::regclass);


--
-- TOC entry 4761 (class 2604 OID 197376222)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY watercourse_gn_spelling ALTER COLUMN id SET DEFAULT nextval('watercourse_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4762 (class 2604 OID 197376223)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY watercourse_hydroid ALTER COLUMN id SET DEFAULT nextval('watercourse_hydroid_id_seq'::regclass);


--
-- TOC entry 4763 (class 2604 OID 197376224)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY wetland_gn ALTER COLUMN id SET DEFAULT nextval('wetland_gn_id_seq'::regclass);


--
-- TOC entry 4765 (class 2604 OID 197376225)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY wetland_gn_spelling ALTER COLUMN id SET DEFAULT nextval('wetland_gn_spelling_id_seq'::regclass);


--
-- TOC entry 4766 (class 2604 OID 197376226)
-- Name: id; Type: DEFAULT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY wetland_hydroid ALTER COLUMN id SET DEFAULT nextval('wetland_hydroid_id_seq'::regclass);


--
-- TOC entry 4771 (class 2606 OID 197382536)
-- Name: crossing_gn_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY crossing_gn
    ADD CONSTRAINT crossing_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4773 (class 2606 OID 197382538)
-- Name: crossing_gn_spelling_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY crossing_gn_spelling
    ADD CONSTRAINT crossing_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4775 (class 2606 OID 197382540)
-- Name: crossing_hydroid_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY crossing_hydroid
    ADD CONSTRAINT crossing_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4769 (class 2606 OID 197382542)
-- Name: crossing_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY crossing
    ADD CONSTRAINT crossing_pkey PRIMARY KEY (localid);


--
-- TOC entry 4780 (class 2606 OID 197382544)
-- Name: damorweir_gn_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY damorweir_gn
    ADD CONSTRAINT damorweir_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4782 (class 2606 OID 197382546)
-- Name: damorweir_gn_spelling_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY damorweir_gn_spelling
    ADD CONSTRAINT damorweir_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4784 (class 2606 OID 197382548)
-- Name: damorweir_hydroid_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY damorweir_hydroid
    ADD CONSTRAINT damorweir_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4778 (class 2606 OID 197382550)
-- Name: damorweir_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY damorweir
    ADD CONSTRAINT damorweir_pkey PRIMARY KEY (localid);


--
-- TOC entry 4789 (class 2606 OID 197382552)
-- Name: embankment_gn_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY embankment_gn
    ADD CONSTRAINT embankment_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4791 (class 2606 OID 197382554)
-- Name: embankment_gn_spelling_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY embankment_gn_spelling
    ADD CONSTRAINT embankment_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4793 (class 2606 OID 197382556)
-- Name: embankment_hydroid_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY embankment_hydroid
    ADD CONSTRAINT embankment_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4787 (class 2606 OID 197382558)
-- Name: embankment_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY embankment
    ADD CONSTRAINT embankment_pkey PRIMARY KEY (localid);


--
-- TOC entry 4798 (class 2606 OID 197382560)
-- Name: falls_gn_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY falls_gn
    ADD CONSTRAINT falls_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4800 (class 2606 OID 197382562)
-- Name: falls_gn_spelling_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY falls_gn_spelling
    ADD CONSTRAINT falls_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4802 (class 2606 OID 197382564)
-- Name: falls_hydroid_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY falls_hydroid
    ADD CONSTRAINT falls_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4796 (class 2606 OID 197382566)
-- Name: falls_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY falls
    ADD CONSTRAINT falls_pkey PRIMARY KEY (localid);


--
-- TOC entry 4807 (class 2606 OID 197382568)
-- Name: island_gn_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY island_gn
    ADD CONSTRAINT island_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4809 (class 2606 OID 197382570)
-- Name: island_gn_spelling_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY island_gn_spelling
    ADD CONSTRAINT island_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4811 (class 2606 OID 197382572)
-- Name: island_hydroid_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY island_hydroid
    ADD CONSTRAINT island_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4805 (class 2606 OID 197382574)
-- Name: island_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY island
    ADD CONSTRAINT island_pkey PRIMARY KEY (localid);


--
-- TOC entry 4814 (class 2606 OID 197382576)
-- Name: landwaterboundary_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY landwaterboundary
    ADD CONSTRAINT landwaterboundary_pkey PRIMARY KEY (localid);


--
-- TOC entry 4819 (class 2606 OID 197382578)
-- Name: lock_gn_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY lock_gn
    ADD CONSTRAINT lock_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4821 (class 2606 OID 197382580)
-- Name: lock_gn_spelling_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY lock_gn_spelling
    ADD CONSTRAINT lock_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4823 (class 2606 OID 197382582)
-- Name: lock_hydroid_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY lock_hydroid
    ADD CONSTRAINT lock_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4817 (class 2606 OID 197382584)
-- Name: lock_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY lock
    ADD CONSTRAINT lock_pkey PRIMARY KEY (localid);


--
-- TOC entry 4827 (class 2606 OID 197382586)
-- Name: shore_gn_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shore_gn
    ADD CONSTRAINT shore_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4829 (class 2606 OID 197382588)
-- Name: shore_gn_spelling_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shore_gn_spelling
    ADD CONSTRAINT shore_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4831 (class 2606 OID 197382590)
-- Name: shore_hydroid_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shore_hydroid
    ADD CONSTRAINT shore_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4825 (class 2606 OID 197382592)
-- Name: shore_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shore
    ADD CONSTRAINT shore_pkey PRIMARY KEY (localid);


--
-- TOC entry 4836 (class 2606 OID 197382594)
-- Name: shorelineconstruction_gn_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shorelineconstruction_gn
    ADD CONSTRAINT shorelineconstruction_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4838 (class 2606 OID 197382596)
-- Name: shorelineconstruction_gn_spelling_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shorelineconstruction_gn_spelling
    ADD CONSTRAINT shorelineconstruction_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4840 (class 2606 OID 197382598)
-- Name: shorelineconstruction_hydroid_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shorelineconstruction_hydroid
    ADD CONSTRAINT shorelineconstruction_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4834 (class 2606 OID 197382600)
-- Name: shorelineconstruction_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shorelineconstruction
    ADD CONSTRAINT shorelineconstruction_pkey PRIMARY KEY (localid);


--
-- TOC entry 4845 (class 2606 OID 197382602)
-- Name: standingwater_gn_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY standingwater_gn
    ADD CONSTRAINT standingwater_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4847 (class 2606 OID 197382604)
-- Name: standingwater_gn_spelling_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY standingwater_gn_spelling
    ADD CONSTRAINT standingwater_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4849 (class 2606 OID 197382606)
-- Name: standingwater_hydroid_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY standingwater_hydroid
    ADD CONSTRAINT standingwater_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4843 (class 2606 OID 197382608)
-- Name: standingwater_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY standingwater
    ADD CONSTRAINT standingwater_pkey PRIMARY KEY (localid);


--
-- TOC entry 4854 (class 2606 OID 197382610)
-- Name: watercourse_gn_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY watercourse_gn
    ADD CONSTRAINT watercourse_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4856 (class 2606 OID 197382612)
-- Name: watercourse_gn_spelling_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY watercourse_gn_spelling
    ADD CONSTRAINT watercourse_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4858 (class 2606 OID 197382614)
-- Name: watercourse_hydroid_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY watercourse_hydroid
    ADD CONSTRAINT watercourse_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4852 (class 2606 OID 197382616)
-- Name: watercourse_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY watercourse
    ADD CONSTRAINT watercourse_pkey PRIMARY KEY (localid);


--
-- TOC entry 4863 (class 2606 OID 197382618)
-- Name: wetland_gn_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY wetland_gn
    ADD CONSTRAINT wetland_gn_pkey PRIMARY KEY (id);


--
-- TOC entry 4865 (class 2606 OID 197382620)
-- Name: wetland_gn_spelling_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY wetland_gn_spelling
    ADD CONSTRAINT wetland_gn_spelling_pkey PRIMARY KEY (id);


--
-- TOC entry 4867 (class 2606 OID 197382622)
-- Name: wetland_hydroid_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY wetland_hydroid
    ADD CONSTRAINT wetland_hydroid_pkey PRIMARY KEY (id);


--
-- TOC entry 4861 (class 2606 OID 197382624)
-- Name: wetland_pkey; Type: CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY wetland
    ADD CONSTRAINT wetland_pkey PRIMARY KEY (localid);


--
-- TOC entry 4767 (class 1259 OID 197382627)
-- Name: crossing_geometry_idx; Type: INDEX; Schema: hypw; Owner: -
--

CREATE INDEX crossing_geometry_idx ON crossing USING gist (geometry);


--
-- TOC entry 4776 (class 1259 OID 197382628)
-- Name: damorweir_geometry_idx; Type: INDEX; Schema: hypw; Owner: -
--

CREATE INDEX damorweir_geometry_idx ON damorweir USING gist (geometry);


--
-- TOC entry 4785 (class 1259 OID 197382629)
-- Name: embankment_geometry_idx; Type: INDEX; Schema: hypw; Owner: -
--

CREATE INDEX embankment_geometry_idx ON embankment USING gist (geometry);


--
-- TOC entry 4794 (class 1259 OID 197382630)
-- Name: falls_geometry_idx; Type: INDEX; Schema: hypw; Owner: -
--

CREATE INDEX falls_geometry_idx ON falls USING gist (geometry);


--
-- TOC entry 4803 (class 1259 OID 197382631)
-- Name: island_geometry_idx; Type: INDEX; Schema: hypw; Owner: -
--

CREATE INDEX island_geometry_idx ON island USING gist (geometry);


--
-- TOC entry 4812 (class 1259 OID 197382632)
-- Name: landwaterboundary_geometry_idx; Type: INDEX; Schema: hypw; Owner: -
--

CREATE INDEX landwaterboundary_geometry_idx ON landwaterboundary USING gist (geometry);


--
-- TOC entry 4815 (class 1259 OID 197382633)
-- Name: lock_geometry_idx; Type: INDEX; Schema: hypw; Owner: -
--

CREATE INDEX lock_geometry_idx ON lock USING gist (geometry);


--
-- TOC entry 4832 (class 1259 OID 197382634)
-- Name: shorelineconstruction_geometry_idx; Type: INDEX; Schema: hypw; Owner: -
--

CREATE INDEX shorelineconstruction_geometry_idx ON shorelineconstruction USING gist (geometry);


--
-- TOC entry 4841 (class 1259 OID 197382635)
-- Name: standingwater_geometry_idx; Type: INDEX; Schema: hypw; Owner: -
--

CREATE INDEX standingwater_geometry_idx ON standingwater USING gist (geometry);


--
-- TOC entry 4850 (class 1259 OID 197382636)
-- Name: watercourse_geometry_idx; Type: INDEX; Schema: hypw; Owner: -
--

CREATE INDEX watercourse_geometry_idx ON watercourse USING gist (geometry);


--
-- TOC entry 4859 (class 1259 OID 197382637)
-- Name: wetland_geometry_idx; Type: INDEX; Schema: hypw; Owner: -
--

CREATE INDEX wetland_geometry_idx ON wetland USING gist (geometry);


--
-- TOC entry 4868 (class 2606 OID 197382668)
-- Name: crossing_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY crossing_gn
    ADD CONSTRAINT crossing_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES crossing(localid) ON DELETE CASCADE;


--
-- TOC entry 4869 (class 2606 OID 197382673)
-- Name: crossing_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY crossing_gn_spelling
    ADD CONSTRAINT crossing_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES crossing_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4870 (class 2606 OID 197382678)
-- Name: crossing_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY crossing_hydroid
    ADD CONSTRAINT crossing_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES crossing(localid) ON DELETE CASCADE;


--
-- TOC entry 4871 (class 2606 OID 197382683)
-- Name: damorweir_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY damorweir_gn
    ADD CONSTRAINT damorweir_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES damorweir(localid) ON DELETE CASCADE;


--
-- TOC entry 4872 (class 2606 OID 197382688)
-- Name: damorweir_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY damorweir_gn_spelling
    ADD CONSTRAINT damorweir_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES damorweir_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4873 (class 2606 OID 197382693)
-- Name: damorweir_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY damorweir_hydroid
    ADD CONSTRAINT damorweir_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES damorweir(localid) ON DELETE CASCADE;


--
-- TOC entry 4874 (class 2606 OID 197382698)
-- Name: embankment_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY embankment_gn
    ADD CONSTRAINT embankment_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES embankment(localid) ON DELETE CASCADE;


--
-- TOC entry 4875 (class 2606 OID 197382703)
-- Name: embankment_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY embankment_gn_spelling
    ADD CONSTRAINT embankment_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES embankment_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4876 (class 2606 OID 197382708)
-- Name: embankment_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY embankment_hydroid
    ADD CONSTRAINT embankment_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES embankment(localid) ON DELETE CASCADE;


--
-- TOC entry 4877 (class 2606 OID 197382713)
-- Name: falls_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY falls_gn
    ADD CONSTRAINT falls_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES falls(localid) ON DELETE CASCADE;


--
-- TOC entry 4878 (class 2606 OID 197382718)
-- Name: falls_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY falls_gn_spelling
    ADD CONSTRAINT falls_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES falls_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4879 (class 2606 OID 197382723)
-- Name: falls_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY falls_hydroid
    ADD CONSTRAINT falls_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES falls(localid) ON DELETE CASCADE;


--
-- TOC entry 4880 (class 2606 OID 197382728)
-- Name: island_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY island_gn
    ADD CONSTRAINT island_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES island(localid) ON DELETE CASCADE;


--
-- TOC entry 4881 (class 2606 OID 197382733)
-- Name: island_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY island_gn_spelling
    ADD CONSTRAINT island_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES island_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4882 (class 2606 OID 197382738)
-- Name: island_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY island_hydroid
    ADD CONSTRAINT island_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES island(localid) ON DELETE CASCADE;


--
-- TOC entry 4883 (class 2606 OID 197382743)
-- Name: lock_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY lock_gn
    ADD CONSTRAINT lock_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES lock(localid) ON DELETE CASCADE;


--
-- TOC entry 4884 (class 2606 OID 197382748)
-- Name: lock_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY lock_gn_spelling
    ADD CONSTRAINT lock_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES lock_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4885 (class 2606 OID 197382753)
-- Name: lock_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY lock_hydroid
    ADD CONSTRAINT lock_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES lock(localid) ON DELETE CASCADE;


--
-- TOC entry 4886 (class 2606 OID 197382758)
-- Name: shore_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shore_gn
    ADD CONSTRAINT shore_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES shore(localid) ON DELETE CASCADE;


--
-- TOC entry 4887 (class 2606 OID 197382763)
-- Name: shore_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shore_gn_spelling
    ADD CONSTRAINT shore_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES shore_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4888 (class 2606 OID 197382768)
-- Name: shore_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shore_hydroid
    ADD CONSTRAINT shore_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES shore(localid) ON DELETE CASCADE;


--
-- TOC entry 4889 (class 2606 OID 197382773)
-- Name: shorelineconstruction_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shorelineconstruction_gn
    ADD CONSTRAINT shorelineconstruction_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES shorelineconstruction(localid) ON DELETE CASCADE;


--
-- TOC entry 4890 (class 2606 OID 197382778)
-- Name: shorelineconstruction_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shorelineconstruction_gn_spelling
    ADD CONSTRAINT shorelineconstruction_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES shorelineconstruction_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4891 (class 2606 OID 197382783)
-- Name: shorelineconstruction_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY shorelineconstruction_hydroid
    ADD CONSTRAINT shorelineconstruction_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES shorelineconstruction(localid) ON DELETE CASCADE;


--
-- TOC entry 4892 (class 2606 OID 197382788)
-- Name: standingwater_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY standingwater_gn
    ADD CONSTRAINT standingwater_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES standingwater(localid) ON DELETE CASCADE;


--
-- TOC entry 4893 (class 2606 OID 197382793)
-- Name: standingwater_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY standingwater_gn_spelling
    ADD CONSTRAINT standingwater_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES standingwater_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4894 (class 2606 OID 197382798)
-- Name: standingwater_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY standingwater_hydroid
    ADD CONSTRAINT standingwater_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES standingwater(localid) ON DELETE CASCADE;


--
-- TOC entry 4895 (class 2606 OID 197382803)
-- Name: watercourse_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY watercourse_gn
    ADD CONSTRAINT watercourse_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES watercourse(localid) ON DELETE CASCADE;


--
-- TOC entry 4896 (class 2606 OID 197382809)
-- Name: watercourse_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY watercourse_gn_spelling
    ADD CONSTRAINT watercourse_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES watercourse_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4897 (class 2606 OID 197382814)
-- Name: watercourse_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY watercourse_hydroid
    ADD CONSTRAINT watercourse_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES watercourse(localid) ON DELETE CASCADE;


--
-- TOC entry 4898 (class 2606 OID 197382820)
-- Name: wetland_gn_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY wetland_gn
    ADD CONSTRAINT wetland_gn_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES wetland(localid) ON DELETE CASCADE;


--
-- TOC entry 4899 (class 2606 OID 197382825)
-- Name: wetland_gn_spelling_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY wetland_gn_spelling
    ADD CONSTRAINT wetland_gn_spelling_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES wetland_gn(id) ON DELETE CASCADE;


--
-- TOC entry 4900 (class 2606 OID 197382830)
-- Name: wetland_hydroid_parentfk_fkey; Type: FK CONSTRAINT; Schema: hypw; Owner: -
--

ALTER TABLE ONLY wetland_hydroid
    ADD CONSTRAINT wetland_hydroid_parentfk_fkey FOREIGN KEY (parentfk) REFERENCES wetland(localid) ON DELETE CASCADE;


-- Completed on 2017-07-25 15:47:55

--
-- PostgreSQL database dump complete
--

-- Indizes


CREATE INDEX crossing_gn_parent_idx ON hypw.crossing_gn (parentfk ASC NULLS LAST);
CREATE INDEX crossing_gn_spelling_parent_idx ON hypw.crossing_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX crossing_hydroid_parent_idx ON hypw.crossing_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX damorweir_gn_parent_idx ON hypw.damorweir_gn (parentfk ASC NULLS LAST);
CREATE INDEX damorweir_gn_spelling_parent_idx ON hypw.damorweir_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX damorweir_hydroid_parent_idx ON hypw.damorweir_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX embankment_gn_parent_idx ON hypw.embankment_gn (parentfk ASC NULLS LAST);
CREATE INDEX embankment_gn_spelling_parent_idx ON hypw.embankment_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX embankment_hydroid_parent_idx ON hypw.embankment_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX falls_gn_parent_idx ON hypw.falls_gn (parentfk ASC NULLS LAST);
CREATE INDEX falls_gn_spelling_parent_idx ON hypw.falls_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX falls_hydroid_parent_idx ON hypw.falls_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX island_gn_parent_idx ON hypw.island_gn (parentfk ASC NULLS LAST);
CREATE INDEX island_gn_spelling_parent_idx ON hypw.island_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX island_hydroid_parent_idx ON hypw.island_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX lock_gn_parent_idx ON hypw.lock_gn (parentfk ASC NULLS LAST);
CREATE INDEX lock_gn_spelling_parent_idx ON hypw.lock_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX lock_hydroid_parent_idx ON hypw.lock_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX shore_gn_parent_idx ON hypw.shore_gn (parentfk ASC NULLS LAST);
CREATE INDEX shore_gn_spelling_parent_idx ON hypw.shore_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX shore_hydroid_parent_idx ON hypw.shore_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX shorelineconstruction_gn_parent_idx ON hypw.shorelineconstruction_gn (parentfk ASC NULLS LAST);
CREATE INDEX shorelineconstruction_gn_spelling_parent_idx ON hypw.shorelineconstruction_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX shorelineconstruction_hydroid_parent_idx ON hypw.shorelineconstruction_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX standingwater_gn_parent_idx ON hypw.standingwater_gn (parentfk ASC NULLS LAST);
CREATE INDEX standingwater_gn_spelling_parent_idx ON hypw.standingwater_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX standingwater_hydroid_parent_idx ON hypw.standingwater_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX watercourse_gn_parent_idx ON hypw.watercourse_gn (parentfk ASC NULLS LAST);
CREATE INDEX watercourse_gn_spelling_parent_idx ON hypw.watercourse_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX watercourse_hydroid_parent_idx ON hypw.watercourse_hydroid (parentfk ASC NULLS LAST);
CREATE INDEX watercourse_delineationknown_idx ON hypw.watercourse USING btree (delineationknown);
CREATE INDEX wetland_gn_parent_idx ON hypw.wetland_gn (parentfk ASC NULLS LAST);
CREATE INDEX wetland_gn_spelling_parent_idx ON hypw.wetland_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX wetland_hydroid_parent_idx ON hypw.wetland_hydroid (parentfk ASC NULLS LAST);
