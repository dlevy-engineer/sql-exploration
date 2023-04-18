-- Database: miscellaneous_db

-- DROP DATABASE IF EXISTS miscellaneous_db;

CREATE DATABASE miscellaneous_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE miscellaneous_db
    IS 'Created for SQL exploration exercises as part of the UC Berkeley data science bootcamp.';