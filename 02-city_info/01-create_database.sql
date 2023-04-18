-- Database: city_info

-- DROP DATABASE IF EXISTS city_info;

CREATE DATABASE city_info
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE city_info
    IS 'Created for SQL exploration exercises as part of the UC Berkeley Data Science bootcamp.';