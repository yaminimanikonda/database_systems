-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-02-12 20:38:18.758

create database ds_main;
use ds_main;
show tables;
describe employee;
-- drop database ds_main; 

-- tables
-- Table: country
CREATE TABLE country (
    id char(2)  NOT NULL,
    country_name varchar(40)  NOT NULL,
    region_id int  NOT NULL,
    CONSTRAINT countries_pk PRIMARY KEY (id)
);

-- Table: department
CREATE TABLE department (
    id int  NOT NULL,
    department_name varchar(30)  NOT NULL,
    manager_id int  NULL,
    location_id int  NOT NULL,
    CONSTRAINT departments_pk PRIMARY KEY (id)
);

-- Table: employee
CREATE TABLE employee (
    id int  NOT NULL,
    first_name varchar(20)  NOT NULL,
    last_name varchar(25)  NOT NULL,
    email varchar(25)  NOT NULL,
    phone_number varchar(20)  NOT NULL,
    hire_date date  NOT NULL,
    salary Decimal(8,2)  NOT NULL,
    job_id varchar(10)  NOT NULL,
    department_id int  NOT NULL,
    CONSTRAINT employees_pk PRIMARY KEY (id)
);

-- Table: job
CREATE TABLE job (
    id varchar(10)  NOT NULL,
    job_title varchar(35)  NOT NULL,
    min_salary int  NOT NULL,
    max_salary int  NOT NULL,
    CONSTRAINT jobs_pk PRIMARY KEY (id)
);

-- Table: job_history
CREATE TABLE job_history (
    id int  NOT NULL,
    start_date date  NOT NULL,
    end_date date  NOT NULL,
    employee_id int  NOT NULL,
    CONSTRAINT job_history_pk PRIMARY KEY (id)
);

-- Table: location
CREATE TABLE location (
    id int  NOT NULL,
    street_address varchar(40)  NOT NULL,
    postal_code varchar(12)  NULL,
    city varchar(30)  NOT NULL,
    state_province varchar(25)  NULL,
    country_id char(2)  NOT NULL,
    CONSTRAINT locations_pk PRIMARY KEY (id)
);

-- Table: performance_review
CREATE TABLE performance_review (
    id int  NOT NULL,
    review_date date  NOT NULL,
    performance_rating decimal(8,1)  NOT NULL,
    comments varchar(50)  NOT NULL,
    employee_id int  NOT NULL,
    CONSTRAINT performance_review_pk PRIMARY KEY (id)
);

-- Table: region
CREATE TABLE region (
    id int  NOT NULL,
    region_name varchar(25)  NOT NULL,
    CONSTRAINT regions_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: country_region (table: country)
ALTER TABLE country ADD CONSTRAINT country_region FOREIGN KEY country_region (region_id)
    REFERENCES region (id);

-- Reference: department_location (table: department)
ALTER TABLE department ADD CONSTRAINT department_location FOREIGN KEY department_location (location_id)
    REFERENCES location (id);

-- Reference: employee_department (table: employee)
ALTER TABLE employee ADD CONSTRAINT employee_department FOREIGN KEY employee_department (department_id)
    REFERENCES department (id);

-- Reference: employee_job (table: employee)
ALTER TABLE employee ADD CONSTRAINT employee_job FOREIGN KEY employee_job (job_id)
    REFERENCES job (id);

-- Reference: job_history_employee (table: job_history)
ALTER TABLE job_history ADD CONSTRAINT job_history_employee FOREIGN KEY job_history_employee (employee_id)
    REFERENCES employee (id);

-- Reference: location_country (table: location)
ALTER TABLE location ADD CONSTRAINT location_country FOREIGN KEY location_country (country_id)
    REFERENCES country (id);

-- Reference: performance_review_employee (table: performance_review)
ALTER TABLE performance_review ADD CONSTRAINT performance_review_employee FOREIGN KEY performance_review_employee (employee_id)
    REFERENCES employee (id);

-- End of file.

