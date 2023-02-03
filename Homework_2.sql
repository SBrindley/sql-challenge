--Data Analysis File

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT
	e.emp_no as "Employee #",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	e.sex as Sex,
	s.salary as Salary
from employees e
LEFT JOIN salaries s on


e.emp_no = s.emp_no;