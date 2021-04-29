-----------------------1
--List the following details of each employee: employee number, 
--last name, first name, sex, and salary.

select e.emp_no, e.last_name, e.first_name,  e.sex, s.salary
from employees as e 
join 
salaries as s
on (e.emp_no = s.emp_no)
order by e.emp_no;
------------------------2----------------------------------
--List first name, last name, and hire date for 
---employees who were hired in 1986. 
select  e.first_name, e.last_name, e.hire_date
from employees as e
where 	extract( year from hire_date) = '1986'

-------------------------3--------------------------------
---List the manager of each department with the following information: 
---department number, department name, 
---the manager's employee number, last name, first name.
-- ERROR:  relation "dept_manager" does not exist
-- LINE 2: FROM dept_Manager as m 

SELECT    d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager as m 
INNER JOIN 
employees AS e
ON e.emp_no = m.emp_no
INNER JOIN 
departments as d
ON d.dept_no = m.dept_no
ORDER BY d.dept_no
----------------------------4----
-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
/* 
ERROR:  relation "dept_emp" does not exist
LINE 4: dept_Emp as de
 */
select e.emp_no, e.last_name, e.first_name,  d.dept_name
from employees as e 
inner join
dep_emp as de
on (e.emp_no = de.emp_no)
join
departments as d
on (de.dept_no = d.dept_no)
order by e.emp_no
----------------------------5---------------
/* 
List first name, last name, and sex for employees whose 
first name is "Hercules" and last names begin with "B."
********************returns nothing
*/
select  e.first_name, e.last_name,  e.sex
from employees as e 
where 
e.first_name = 'Hercules'
and
e.last_name like 'B%'
order by e.emp_no
-------------------------------------6
/*  
List all employees in the Sales department, including their 
employee number, last name, first name, and department name.
ERROR:  relation "dep_emp" does not exist
LINE 4: dep_Emp AS de
*/
SELECT    e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e 

JOIN 
dep_emp AS de
ON e.emp_no = de.emp_no
JOIN 
departments as d
ON d.dept_no = de.dept_no
where d.dept_name = 'Sales'
ORDER BY e.emp_no

-----------------------------------7
/*  
List all employees in the Sales and Development departments, including their 
employee number, last name, first name, and department name
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_name
INTO sales_dev
FROM current_emp as e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;
*/
SELECT    e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e 

JOIN 
dep_emp AS de
ON e.emp_no = de.emp_no
JOIN 
departments as d
ON d.dept_no = de.dept_no
where d.dept_name = 'Sales' 
OR  d.dept_name = 'Development'
ORDER BY e.emp_no

----------------------------------------8
/*  
In descending order, list the frequency count of 
employee last names, i.e., how many employees share each last name.
*/
SELECT  last_name, COUNT(DISTINCT emp_no) AS count_last_name
FROM employees 
Group by last_name
ORDER BY count_last_name DESC

---------------------------
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_name
INTO sales_dev
FROM employees as e
    INNER JOIN dep_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;

select * from sales_dev
-------------------------



