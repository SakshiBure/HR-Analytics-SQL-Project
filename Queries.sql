
--1. Employee Full Profile
--👉 Show department, shift, hire date, and Current Salary.
select Department_Name,Shift_Name,HireDate,Salary from Employee_Details

--2. Current Department Employees
--👉 Find employees who are currently assigned to departments (EndDate IS NULL).
SELECT DISTINCT d.Name AS Department_Name
FROM HumanResources.EmployeeDepartmentHistory a
JOIN HumanResources.Department d 
ON a.DepartmentID = d.DepartmentID
WHERE a.EndDate IS NULL;

--3. Department-wise Employee Count
--👉 Count employees in each department.
select Department_Name,count(Department_Name)as Count_of_Employees from Employee_Details group by Department_Name 

--4. Average Salary per Department
--👉 Show avg salary for each department.
select Department_Name,Round(Avg(Salary),2) as Average_Salary from Employee_Details group by Department_Name

--5. Highest Paid Employee per Department
--👉 Find top salary employee in each department.
select Department_Name,Max(Salary) as Max_Salary from Employee_Details group by Department_Name

