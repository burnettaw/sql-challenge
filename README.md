# sql-challenge
For my SQL projects


Data Modeling
1.Inspect the CSVs and sketch out an ERD of the tables using  http://www.quickdatabasediagrams.com.

Data Engineering
1.create a table schema for each of the six CSV files identifying data types, primary keys, foreign keys, and other constraints.
2.Import each CSV file into the corresponding SQL table. 


Data Analysis
1.List the following details of each employee: employee number, last name, first name, sex, and salary.
2.List first name, last name, and hire date for employees who were hired in 1986.
3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4.List the department of each employee with the following information: employee number, last name, first name, and department name.
5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Bonus (Optional)
1.generate a visualization of the data:
2.Import the SQL database into Pandas. 
3.use the code modifications for your username, password, host, port, and database name:
from sqlalchemy import create_engine
engine = create_engine('postgresql://localhost:5432/<your_db_name>')
connection = engine.connect()
4.Consult SQLAlchemy documentation for more information.
See https://www.youtube.com/watch?v=2uaTPmNvH0I and https://help.github.com/en/github/using-git/ignoring-files for more information.
5.1.Create a histogram to visualize the most common salary ranges for employees.
5.2.Create a bar chart of average salary by title.

Epilogue
???"Search your ID number." You look down at your badge to see that your employee ID number is 499942.

Submission
1.Create an image file of your ERD.
2.Create a .sql file of your table schemata.
3.Create a .sql file of your queries.


(Optional) Create a Jupyter Notebook of the bonus analysis.


Create and upload a repository with the above files to GitHub and post a link on BootCamp Spot.


Ensure your repository has regular commits (i.e. 20+ commits) and a thorough README.md file
