-- Schema: au

-- DROP SCHEMA au CASCADE;

CREATE SCHEMA au AUTHORIZATION inspire;

COMMENT ON SCHEMA au IS 'Schemata für Administrative Units';
  
-- == Tabellen =====

-- == AdminBoundary ================================  
CREATE TABLE au.adminboundary (
    localid text,
    country text,
    country_nilreason text,
    country_codelist text,
    country_codelistvalue text,
    legalstatus text,
    legalstatus_nilreason text,
    legalstatus_nil boolean,
    technicalstatus text,
    technicalstatus_nilreason text,
    technicalstatus_nil boolean,
    beginlifespanversion timestamp,
    CONSTRAINT adminboundary_pkey PRIMARY KEY (localid)
);
SELECT ADDGEOMETRYCOLUMN('au', 'adminboundary','geometry','4258','GEOMETRY', 2);
ALTER TABLE au.adminboundary OWNER TO inspire;

CREATE INDEX adminboundary_geometry_idx ON au.adminboundary USING GIST (geometry);

CREATE TABLE au.adminboundary_nationallevel (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.adminboundary ON DELETE CASCADE,
    nilreason text,
    href text
);
ALTER TABLE au.adminboundary_nationallevel OWNER TO inspire;

CREATE TABLE au.adminboundary_adminunit (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.adminboundary ON DELETE CASCADE,
    nil boolean,
    nilreason text,
    href text
);
ALTER TABLE au.adminboundary_adminunit OWNER TO inspire;


-- == Condominium ================================  

CREATE TABLE au.condominium (
    localid text,
    geometry_nilreason text,
    beginlifespanversion timestamp,
    CONSTRAINT condominium_pkey PRIMARY KEY (localid)
);
SELECT ADDGEOMETRYCOLUMN('au', 'condominium','geometry','4258','GEOMETRY', 2);
CREATE INDEX condominium_geometry_idx ON au.condominium USING GIST (geometry);
ALTER TABLE au.condominium OWNER TO inspire;

CREATE TABLE au.condominium_adminunit (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.condominium ON DELETE CASCADE,
    nil boolean,
    nilreason text,
    href text
);
ALTER TABLE au.condominium_adminunit OWNER TO inspire;

CREATE TABLE au.condominium_gn (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.condominium ON DELETE CASCADE,
    nilreason text,
    nil boolean,
    language text,
    language_nilreason text,
    language_nil boolean,
    nativeness_href text,
    namestatus_href text,
    sourceofname text
);
ALTER TABLE au.condominium_gn OWNER TO inspire;

CREATE TABLE au.condominium_gn_spelling (
    id serial PRIMARY KEY,
    parentfk integer NOT NULL REFERENCES au.condominium_gn ON DELETE CASCADE,
    text text,
    script text
);
ALTER TABLE au.condominium_gn_spelling OWNER TO inspire;


-- == AdminUnit ================================  

CREATE TABLE au.adminunit (
    localid text,
    geometry_nilreason text,
    nationalcode text,
    inspireid_localid text,
    nationallevel_nilreason text,
    nationallevel_href text,
    country_nilreason text,
    country text,
    country_codelistvalue text,
    beginlifespanversion timestamp,
    upperlevelunit_nilreason text,
    upperlevelunit_href text,
    shncode_identifier text,
    shncode_scheme text,
    CONSTRAINT adminunit_pkey PRIMARY KEY (localid)
);
SELECT ADDGEOMETRYCOLUMN('au', 'adminunit','geometry','4258','GEOMETRY', 2);
CREATE INDEX adminunit_geometry_idx ON au.adminunit USING GIST (geometry);
ALTER TABLE au.adminunit OWNER TO inspire;

CREATE TABLE au.adminunit_nationallevelname (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.adminunit ON DELETE CASCADE,
    nilreason text,
    nil boolean,
    localisedcharacterstring text,
    localisedcharacterstring_id text,
    localisedcharacterstring_locale text
);
ALTER TABLE au.adminunit_nationallevelname OWNER TO inspire;

CREATE TABLE au.adminunit_gn (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.adminunit ON DELETE CASCADE,
    language text,
    language_nilreason text,
    language_nil boolean,
    nativeness_href text,
    namestatus_href text,
    sourceofname text
);
ALTER TABLE au.adminunit_gn OWNER TO inspire;

CREATE TABLE au.adminunit_gn_spelling (
    id serial PRIMARY KEY,
    parentfk integer NOT NULL REFERENCES au.adminunit_gn ON DELETE CASCADE,
    text text,
    script text
);
ALTER TABLE au.adminunit_gn_spelling OWNER TO inspire;

CREATE TABLE au.adminunit_residence (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.adminunit ON DELETE CASCADE,
    nil boolean,
    nilreason text,
    geometry_nilreason text
);
SELECT ADDGEOMETRYCOLUMN('au', 'adminunit_residence','geometry','4258','GEOMETRY', 2);
CREATE INDEX adminunit_residence_geometry_idx ON au.adminunit_residence USING GIST (geometry);
ALTER TABLE au.adminunit_residence OWNER TO inspire;

CREATE TABLE au.adminunit_residence_gn (
    id serial PRIMARY KEY,
    parentfk int NOT NULL REFERENCES au.adminunit_residence ON DELETE CASCADE,
    nilreason text,
    nil boolean,
    language text,
    language_nilreason text,
    language_nil boolean,
    nativeness_href text,
    namestatus_href text,
    sourceofname text
);
ALTER TABLE au.adminunit_residence_gn OWNER TO inspire;

CREATE TABLE au.adminunit_residence_gn_spelling (
    id serial PRIMARY KEY,
    parentfk integer NOT NULL REFERENCES au.adminunit_residence_gn ON DELETE CASCADE,
    text text,
    script text
);
ALTER TABLE au.adminunit_residence_gn_spelling OWNER TO inspire;

CREATE TABLE au.adminunit_condominium (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.adminunit ON DELETE CASCADE,
    nilreason text,
    href text
);
ALTER TABLE au.adminunit_condominium OWNER TO inspire;

CREATE TABLE au.adminunit_lowerlevelunit (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.adminunit ON DELETE CASCADE,
    nilreason text,
    adminunitid text REFERENCES au.adminunit ON DELETE CASCADE,
    href text
);
ALTER TABLE au.adminunit_lowerlevelunit OWNER TO inspire;

CREATE TABLE au.adminunit_administeredby (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.adminunit ON DELETE CASCADE,
    nilreason text,
    href text
);
ALTER TABLE au.adminunit_administeredby OWNER TO inspire;

CREATE TABLE au.adminunit_coadminister (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.adminunit ON DELETE CASCADE,
    nilreason text,
    href text
);
ALTER TABLE au.adminunit_coadminister OWNER TO inspire;

CREATE TABLE au.adminunit_boundary (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES au.adminunit ON DELETE CASCADE,
    nilreason text,
    href text
);
ALTER TABLE au.adminunit_boundary OWNER TO inspire;

-- == AdminUnitArea ================================  

CREATE TABLE au.adminunitarea (
    localid text,
    inspireid_localid text,
    landcovertype_nilreason text,
    landcovertype_href text,
    beginlifespanversion timestamp,
    CONSTRAINT adminunitarea_pkey PRIMARY KEY (localid)
);
SELECT ADDGEOMETRYCOLUMN('au', 'adminunitarea','geometry','4258','GEOMETRY', 2);
CREATE INDEX adminunitarea_geometry_idx ON au.adminunitarea USING GIST (geometry);
ALTER TABLE au.adminunitarea OWNER TO inspire;

-- == n:m AdminUnit AdminUnitArea ==================

CREATE TABLE au.adminunit_adminunitarea (
    id serial PRIMARY KEY,
    fk_adminunit text, -- NOT NULL REFERENCES au.adminunit ON DELETE CASCADE,
    href_adminunit text, -- without NOT NULL constraint to enable GML import without references
    fk_adminunitarea text, -- NOT NULL REFERENCES au.adminunitarea ON DELETE CASCADE,
    href_adminunitarea text, -- without NOT NULL constraint to enable GML import without references
    nilreason text,
    href text
);
ALTER TABLE au.adminunit_adminunitarea OWNER TO inspire;


-- == Indizes =====================================

CREATE INDEX adminboundary_nationallevel_parent_idx ON au.adminboundary_nationallevel (parentfk ASC NULLS LAST);
CREATE INDEX adminboundary_adminunit_parent_idx ON au.adminboundary_adminunit (parentfk ASC NULLS LAST);

CREATE INDEX condominium_adminunit_parent_idx ON au.condominium_adminunit (parentfk ASC NULLS LAST);
CREATE INDEX condominium_gn_parent_idx ON au.condominium_gn (parentfk ASC NULLS LAST);

CREATE INDEX adminunit_nationallevelname_parent_idx ON au.adminunit_nationallevelname (parentfk ASC NULLS LAST);
CREATE INDEX adminunit_residence_gn_parent_idx ON au.adminunit_residence_gn (parentfk ASC NULLS LAST);
CREATE INDEX adminunit_coadminister_parent_idx ON au.adminunit_coadminister (parentfk ASC NULLS LAST);

CREATE INDEX adminunit_boundary_parent_idx ON au.adminunit_boundary (parentfk ASC NULLS LAST);
