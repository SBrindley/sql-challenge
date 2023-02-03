--Question 1 
--List the employee number, last name, first name, 
--sex, and salary of each employee.

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary 
from employees e
LEFT JOIN salaries s on
e.emp_no = s.emp_no;

-- Exported to CSV check

-- Question 2
-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.hire_date 
from employees e
where e.hire_date between '1986-01-01' and '1986-12-31';

-- Question 3
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT
	d.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
from dept_manager dm
Left join departments d on
	d.dept_no = dm.dept_no
LEFT JOIN employees e on 
	e.emp_no = dm.emp_no;
	
-- Question 4
-- List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name.

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from dept_emp de
Left join departments d on
	d.dept_no = de.dept_no
LEFT JOIN employees e on 
	e.emp_no = de.emp_no;
	
-- Question 5 
-- List first name, last name, and sex of each employee whose 
-- first name is Hercules and whose last name begins with the letter B

SELECT 
	e.first_name, 
	e.last_name, 
	e.sex
FROM employees e
WHERE e.first_name = 'Hercules' and e.last_name LIKE 'B%';

-- Question 6
-- List each employee in the Sales department, 
-- including their employee number, last name, and first name.

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
LEFT JOIN dept_emp de on
	de.emp_no = e.emp_no
Left join departments d on
	d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
;

-- Question 7
-- List each employee in the 
-- Sales and Development departments, including their employee number, 
-- last name, first name, and department name.

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
LEFT JOIN dept_emp de on
	de.emp_no = e.emp_no
Left join departments d on
	d.dept_no = de.dept_no
WHERE d.dept_name in ('Sales','Development');

-- Question 8
-- List the frequency counts, in descending order, 
-- of all the employee last names (that is, how many employees 
-- share each last name).

SELECT e.last_name, 
COUNT(last_name) As total
from employees e
GROUP BY last_name
ORDER BY Total DESC;