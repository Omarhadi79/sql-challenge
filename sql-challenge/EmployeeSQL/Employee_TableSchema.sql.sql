-- Drop Tables if Existing
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create the table schema for each CSV files

-- Create the table for departments

CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no")
);


-- Create the table for Dept_Emp
CREATE TABLE dept_emp (
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR(30)   NOT NULL
);

-- Create the table for Dept_Manager

CREATE TABLE dept_manager (
  emp_no VARCHAR NOT NULL,
  dept_no VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title VARCHAR(30),
  birth_date DATE,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  Sex CHAR(1),
  hire_date DATE
);


-- Create the table for Salaries

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL
);

-- Create the table for Titles

CREATE TABLE titles (
  emp_no VARCHAR NOT NULL,
  title VARCHAR(100) NOT NULL
);

