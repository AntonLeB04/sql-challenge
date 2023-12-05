--List the employee number, last name, first name, sex, and salary of each employee 
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
from employees
left join salaries on employees.emp_no = salaries.emp_no

--2 List the first name, last name, and hire date for the employees who were hired in 1986
SELECT 
employees.last_name,
employees.first_name,
employees.hire_date
from employees
WHERE DATE_PART('year',hire_date) = 1986

--3 List the manager of each department along with their department number, department name, employee number, last name, and first name 

SELECT department_manager.dept_no,
department_manager.emp_no,
departments.dept_name,
employees.last_name,
employees.first_name
from department_manager
left join departments on department_manager.dept_no = departments.dept_no
left join employees on department_manager.emp_no = employees.emp_no;

--4 List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name,
department_employees.dept_no
from employees
left join department_employees on employees.emp_no = department_employees.emp_no
left join departments on departments.dept_no = department_employees.dept_no;

--5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT 
employees.last_name,
employees.first_name,
employees.sex
from employees
where first_name = 'Hercules' AND last_name like 'B%';

--6 List each employee in the Sales department, including their employee number, last name, and first name
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
department_employees.dept_no
from employees
left join department_employees on employees.emp_no = department_employees.emp_no
inner join departments on departments.dept_no = department_employees.dept_no
where departments.dept_name = 'Sales';

--7 List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 

SELECT employees.emp_no,
employees.last_name,
employees.first_name,
department_employees.dept_no
from employees
left join department_employees on employees.emp_no = department_employees.emp_no
inner join departments on departments.dept_no = department_employees.dept_no
where departments.dept_name in ('Sales', 'Development');

--8 List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT last_name, COUNT (*) AS frequency
from employees
group by last_name 
order by frequency DESC;

