-- confirm tables are properly loaded
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
ON s.emp_no=e.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%/1986';

-- List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name FROM departments d
JOIN dept_manager dm ON d.dept_no=dm.dept_no
JOIN employees e ON e.dep_no=dm.emp_no;

-- List the department of each employee with the following information: employee number, last name, 
-- first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name FROM dept_emp de
JOIN employees e ON de.emp_no=e.emp_no
JOIN departments d ON d.dept_no=de.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and 
-- last names begin with "B."
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, 
-- first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees e
JOIN dept_emp de ON de.emp_no=e.emp_no
JOIN departments d ON d.dept_no=de.dept_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees e
JOIN dept_emp de ON de.emp_no=e.emp_no
JOIN departments d ON d.dept_no=de.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

-- In descending order, list the frequency count of employee last names, i.e., how many employees 
-- share each last name.
SELECT last_name, COUNT(last_name) AS frequency FROM employees
GROUP BY last_name
ORDER BY frequency DESC;