# sql-challenge
SQL Project

This repository contains the Postgres SQL and Jupyter Notebook files used to analyze the employee data from Pewlett Hackard from the 1980s and 1990s.

In order to acess the data in the CSV files, it was necessary to create schema outliing the tables and data types. An Entity Relationship Diagram of the tables is included to give a visual represneation. The schema was implentented into SQL and used to import the associated CSV files.

After the tables were loaded with the data, the following queries were run to analyze and produce the following informaion:

1. A list of each employee including: employee number, last name, first name, sex, and salary.

2. A list of emplyees first name, last name, and hire date for employees who were hired in 1986.

3. A list the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. A list of the department of each employee with the following information: employee number, last name, first name, and department name.

5. A list of employees first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. A list all employees in the Sales department, including their employee number, last name, first name, and department name.

7. A list of all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. A list of the frequency count of employee last names, listed in descending order.

The repository also includes a Jupyter Notebook that uses Python's Pandas library to import the SQL data and create the following charts:

1. A histogram to visualize the most common salary ranges for employees.

2. A bar chart of average salary by title.
