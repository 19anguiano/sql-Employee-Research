SELECT last_name FROM employees WHERE last_name = 'Baba';

-- Data Analysis #8 List the frequency counts, in descending order, of all the employee 
-- last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*)DESC;


-- Data Analysis #7 List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN departments as d ON d.dept_no = de.dept_no
JOIN employees as e ON e.emp_no = de.emp_no
WHERE de.dept_no = 'd007' OR de.dept_no = 'd005';




-- Data Analysis #6 List each employee in the Sales department, including their 
-- employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name, de.dept_no
FROM employees as e
JOIN dept_emp as de ON e.emp_no = de.emp_no
WHERE de.dept_no = 'd007'


-- Data Analysis #5 List first name, last name, and sex of each employee whose 
-- first name is Hercules and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';


-- Data Analysis #4 List the department number for each employee along with 
-- that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN departments as d ON d.dept_no = de.dept_no
JOIN employees as e ON e.emp_no = de.emp_no;


-- Data Analysis #3 List the manager of each department along with their 
-- department number, department name, employee number, last name, and first name.
SELECT dm.emp_no, dm.dept_no, d.dept_name, e.last_name, e.first_name 
FROM dept_manager as dm
INNER JOIN employees as e ON e.emp_no = dm.emp_no
INNER JOIN departments as d ON d.dept_no = dm.dept_no;


-- Data Analysis #2 List the first name, last name, and hire date for the 
-- employees who were hired in 1986.
SELECT e.last_name, e.first_name, e.hire_date
FROM employees as e
WHERE e.hire_date LIKE '%1986'

-- Data Analysis #1 List the employee number, last name, first name, 
-- sex, and salary of each employee.
SELECT s.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
ON s.emp_no = e.emp_no;