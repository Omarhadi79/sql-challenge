--Start SQL queries
--1 List the employee number, last name, first name, sex, and salary of each employee

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.Sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no

--2List the first name, last name, and hire date for the employees who were hired in 1986

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

--3 List the manager of each department along with their department number, department name, 
--employee number, last name, and first name

SELECT dm.emp_no, dm.dept_no, d.dept_name, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d USING (dept_no)
JOIN employees e ON dm.emp_no::integer = e.emp_no;

--4List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name

SELECT de.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
FROM dept_emp de
JOIN employees e USING (emp_no)
JOIN departments d USING (dept_no);

--5List first name, last name, 
--and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

--6List each employee in the Sales department, including their employee number, 
--last name, and first name.

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de USING (emp_no)
JOIN departments d USING (dept_no)
WHERE d.dept_name = 'Sales';

--7List each employee in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de USING (emp_no)
JOIN departments d USING (dept_no)
WHERE d.dept_name IN ('Sales', 'Development');

--8List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
