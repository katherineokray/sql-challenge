----------------------------------------------------------------
-- DATA ENGINEERING --
--creating table schemas--
----------------------------------------------------------------
-- 1. departments table 
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);
-- check your table columns
SELECT * FROM departments;
----------------------------------------------------------------
-- 2. titles table 
CREATE TABLE titles (
    title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL,
    PRIMARY KEY (title_id)
);
-- check your table columns
SELECT * FROM titles;
----------------------------------------------------------------
-- 3. employees table 
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(30) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(30) NOT NULL,
    hire_date DATE NOT NULL,
  	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);
-- check your table columns
SELECT * FROM employees;
----------------------------------------------------------------
-- 4. dept_manager table 
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
-- check your table columns
SELECT * FROM dept_manager;
----------------------------------------------------------------
-- 5. dept_emp table 
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
	CONSTRAINT PK_emp_no PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
-- check your table columns
SELECT * FROM dept_emp;
----------------------------------------------------------------
-- 6. salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
-- check your table columns
SELECT * FROM salaries; 
----------------------------------------------------------------