CREATE TABLE departments (
  dept_no VARCHAR(5) NOT NULL,
  dept_name VARCHAR(25) NOT NULL,
  Primary key (dept_no)
);

DROP TABLE departments

SELECT * FROM departments

CREATE TABLE department_employees (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

SELECT * FROM department_employees

Drop table department_employees

CREATE TABLE department_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INTEGER NOT NULL,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

SELECT * FROM department_manager

drop table department_manager

CREATE TABLE employees (
	emp_no INTEGER,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_data DATE,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2),
	hire_date DATE,
	foreign key (emp_title_id) references titles(title_id),
	PRIMARY KEY (emp_no)	
);

SELECT * FROM employees

drop table employees

CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER,
	foreign key (emp_no) references employees(emp_no)
);

SELECT * FROM salaries

drop table salaries

CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * FROM titles

drop table titles
