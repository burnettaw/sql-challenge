# sql-challenge
For my SQL projects


Data Modeling
Inspect the CSVs and sketch out an ERD of the tables using  http://www.quickdatabasediagrams.com.

Data Engineering
create a table schema for each of the six CSV files identifying data types, primary keys, foreign keys, and other constraints.

Import each CSV file into the corresponding SQL table. 


Data Analysis
List the following details of each employee: employee number, last name, first name, sex, and salary.
List first name, last name, and hire date for employees who were hired in 1986.
List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
List the department of each employee with the following information: employee number, last name, first name, and department name.
List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
List all employees in the Sales department, including their employee number, last name, first name, and department name.
List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Bonus (Optional)
generate a visualization of the data:
Import the SQL database into Pandas. 
use the code modifications for your username, password, host, port, and database name:
from sqlalchemy import create_engine
engine = create_engine('postgresql://localhost:5432/<your_db_name>')
connection = engine.connect()
Consult SQLAlchemy documentation for more information.
See https://www.youtube.com/watch?v=2uaTPmNvH0I and https://help.github.com/en/github/using-git/ignoring-files for more information.
1.Create a histogram to visualize the most common salary ranges for employees.
2.Create a bar chart of average salary by title.

Epilogue
???"Search your ID number." You look down at your badge to see that your employee ID number is 499942.

Submission
1.Create an image file of your ERD.
2.Create a .sql file of your table schemata.
3.Create a .sql file of your queries.


(Optional) Create a Jupyter Notebook of the bonus analysis.


Create and upload a repository with the above files to GitHub and post a link on BootCamp Spot.


Ensure your repository has regular commits (i.e. 20+ commits) and a thorough README.md file
