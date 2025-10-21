-- Schema
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS students;


CREATE TABLE addresses (
id             serial PRIMARY KEY,
line_1         varchar(255) NOT NULL,
city           varchar(255),
state          varchar(255),
zipcode        INT
);

CREATE TABLE students (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer references addresses(id)
);

CREATE TABLE classes (
  id            serial PRIMARY KEY,
  name          varchar(255),
  credits       INT
);

CREATE TABLE enrollments (
  id          serial PRIMARY KEY,
  student_id   integer references students(id),
  class_id      integer references classes(id),
  grade         varchar(1)
);

