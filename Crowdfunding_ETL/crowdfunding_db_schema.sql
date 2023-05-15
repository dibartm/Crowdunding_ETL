DROP DATABASE IF EXISTScrowdfunding_db ;
CREATE DATABASE crowdfunding_db;
DROP TABLE contacts;
CREATE TABLE contacts (
    contact_id integer PRIMARY KEY,
    first_name text,
    last_name text,
    email text
);
DROP TABLE crowdfunding;
CREATE TABLE crowdfunding (
    cf_id integer PRIMARY KEY,
    contact_id integer,
    company_name text,
    description text,
    goal integer,
    pledged integer,
    outcome text,
    backers_count integer,
    country text,
    currency text,
    launched_date date,
    end_date date,
    category text,
    subcategory text,
    CONSTRAINT contact_id_fkey
    FOREIGN KEY (contact_id)
    REFERENCES contacts(contact_id)   
);
