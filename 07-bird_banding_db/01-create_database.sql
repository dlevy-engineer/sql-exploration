-- Database: bird_banding_DB

-- DROP DATABASE IF EXISTS "bird_banding_DB";

CREATE DATABASE "bird_banding_DB"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE "bird_banding_DB"
    IS 'Created for SQL join exercises as part of the UC Berkeley data science bootcamp.';