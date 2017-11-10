-- Schema: ps

-- DROP SCHEMA ps;

CREATE SCHEMA ps AUTHORIZATION inspire;


COMMENT ON SCHEMA ps IS 'Schemata für ProtectedSites';

-- == INSPIRE ProtectedSite ================================  
CREATE TABLE ps.protectedsite (
    localid text,
    legalfoundationdate timestamp,
    legalfoundationdate_nilreason text,
    legalfoundationdate_nil boolean,
    CONSTRAINT protectedsite_pkey PRIMARY KEY (localid)
);
ALTER TABLE ps.protectedsite OWNER TO inspire;

SELECT ADDGEOMETRYCOLUMN('ps', 'protectedsite','geometry','4258','GEOMETRY', 2);
CREATE INDEX protectedsite_geometry_idx ON ps.protectedsite USING GIST (geometry);

CREATE TABLE ps.protectedsite_sitedesignation (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES ps.protectedsite ON DELETE CASCADE,
    nilreason text,
    nil boolean,
    designationscheme_nilreason text,
    designationscheme_href text,
    designation_nilreason text,
    designation_href text,
    percentageunderdesignation numeric
);
ALTER TABLE ps.protectedsite_sitedesignation OWNER TO inspire;

CREATE TABLE ps.protectedsite_gn (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES ps.protectedsite ON DELETE CASCADE,
    nilreason text,
    nil boolean,
    language text,
    nativeness_href text,
    namestatus_href text,
    sourceofname text
);
ALTER TABLE ps.protectedsite_gn OWNER TO inspire;

CREATE TABLE ps.protectedsite_gn_spelling (
    id serial PRIMARY KEY,
    parentfk integer NOT NULL REFERENCES ps.protectedsite_gn ON DELETE CASCADE,
    text text,
    script text
);
ALTER TABLE ps.protectedsite_gn_spelling OWNER TO inspire;

CREATE TABLE ps.protectedsite_classification (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES ps.protectedsite ON DELETE CASCADE,
    value text,
    nilreason text,
    nil boolean
);
ALTER TABLE ps.protectedsite_classification OWNER TO inspire;

-- Indizes
CREATE INDEX protectedsite_sitedesignation_parent_idx ON ps.protectedsite_sitedesignation (parentfk ASC NULLS LAST);
CREATE INDEX protectedsite_gn_parent_idx ON ps.protectedsite_gn (parentfk ASC NULLS LAST);
CREATE INDEX protectedsite_gn_spelling_parent_idx ON ps.protectedsite_gn_spelling (parentfk ASC NULLS LAST);
CREATE INDEX protectedsite_classification_parent_idx ON ps.protectedsite_classification (parentfk ASC NULLS LAST);
