SELECT e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_name
INTO sales_dev
FROM employees as e
    INNER JOIN dep_Emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;