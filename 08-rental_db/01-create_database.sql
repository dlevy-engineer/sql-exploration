-- Database: rental_db

-- DROP DATABASE IF EXISTS rental_db;

CREATE DATABASE rental_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE rental_db
    IS 'Created for advanced SQL exploration exercises as part of the UC Berkeley Data Science bootcamp.';