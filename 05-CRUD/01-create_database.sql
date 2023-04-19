-- Database: Malaysia

-- DROP DATABASE IF EXISTS "Malaysia";

CREATE DATABASE "Malaysia"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE "Malaysia"
    IS 'Created for CRUD exploration exercises as part of the UC Berkeley data science bootcamp.';