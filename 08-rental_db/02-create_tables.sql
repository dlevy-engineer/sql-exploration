DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS customer_list;
DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS film_actor;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS payment;
DROP TABLE IF EXISTS rental;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS store;

CREATE TABLE actor (
  actor_id INT NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL
);

CREATE TABLE address (
  address_id INT NOT NULL,
  address VARCHAR(50) NOT NULL,
  address2 VARCHAR(50),
  district VARCHAR(20) NOT NULL,
  city_id SMALLINT NOT NULL,
  postal_code VARCHAR(10),
  phone VARCHAR(20) NOT NULL,
  last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL
);

CREATE TABLE city (
  city_id INT NOT NULL,
  city VARCHAR(50) NOT NULL,
  country_id SMALLINT NOT NULL,
  last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL
);

CREATE TABLE country (
    country_id INT NOT NULL,
    country VARCHAR(50) NOT NULL,
    last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL
);

CREATE TABLE customer (
  customer_id INT NOT NULL,
  store_id SMALLINT NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  email VARCHAR(50),
  address_id SMALLINT NOT NULL,
  activebool BOOLEAN DEFAULT true NOT NULL,
  create_date DATE DEFAULT ('NOW'::TEXT)::DATE NOT NULL,
  last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
  active INT
);

CREATE TABLE customer_list (
  id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  zip_code VARCHAR(10),
  phone VARCHAR(20) NOT NULL,
  city VARCHAR(50) NOT NULL,
  country VARCHAR(50) NOT NULL,
  notes VARCHAR(50) NOT NULL,
  sid INT NOT NULL
);

CREATE TABLE film (
  film_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  release_year INT,
  language_id SMALLINT NOT NULL,
  original_language_id SMALLINT,
  rental_duration SMALLINT DEFAULT 3 NOT NULL,
  rental_rate NUMERIC(4,2) DEFAULT 4.99 NOT NULL,
  length SMALLINT,
  replacement_cost NUMERIC(5,2) DEFAULT 19.99 NOT NULL,
  rating TEXT,
  last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
  special_features TEXT[],
  fulltext TSVECTOR NOT NULL
);

CREATE TABLE film_actor (
  actor_id SMALLINT NOT NULL,
  film_id SMALLINT NOT NULL,
  last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL
);

CREATE TABLE inventory (
  inventory_id INT NOT NULL,
  film_id SMALLINT NOT NULL,
  store_id SMALLINT NOT NULL,
  last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL
);

CREATE TABLE payment (
  payment_id INT NOT NULL,
  customer_id SMALLINT NOT NULL,
  staff_id SMALLINT NOT NULL,
  rental_id INT NOT NULL,
  amount NUMERIC(5,2) NOT NULL,
  payment_date TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

CREATE TABLE rental (
  rental_id INT NOT NULL,
  rental_date TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  inventory_id INT NOT NULL,
  customer_id SMALLINT NOT NULL,
  return_date TIMESTAMP WITHOUT TIME ZONE,
  staff_id SMALLINT NOT NULL,
  last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL
);

CREATE TABLE staff (
  staff_id INT NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  address_id SMALLINT NOT NULL,
  email VARCHAR(50),
  store_id SMALLINT NOT NULL,
  active BOOLEAN DEFAULT true NOT NULL,
  username VARCHAR(16) NOT NULL,
  password VARCHAR(40),
  last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
  picture BYTEA
);

CREATE TABLE store (
    store_id INT NOT NULL,
    manager_staff_id SMALLINT NOT NULL,
    address_id SMALLINT NOT NULL,
    last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL
);