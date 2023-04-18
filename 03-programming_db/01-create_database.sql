-- Database: programming_db

-- DROP DATABASE IF EXISTS programming_db;

CREATE DATABASE programming_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE programming_db
    IS 'A database to be used for exploratory purposes in the context of the UC Berkeley data science bootcamp.';