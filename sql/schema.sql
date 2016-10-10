CREATE DATABASE company;

\c company;

CREATE TABLE department(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  localization VARCHAR(100) NOT NULL
);

CREATE TABLE employee(
  id SERIAL PRIMARY KEY,
  code_c VARCHAR(20) NOT NULL,
  name VARCHAR(100) NOT NULL,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100),
  age INTEGER NOT NULL,
  occupation VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
  date_activated DATE NOT NULL,
  salary INTEGER NOT NULL,
  commission INTEGER NOT NULL,
  id_department INTEGER NOT NULL,
  FOREIGN KEY (id_department) REFERENCES department(id)
);
