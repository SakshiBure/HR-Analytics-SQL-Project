create view Employee_Details as
select a.BusinessEntityID,b.JobTitle as JobTitle,b.Gender,b.HireDate as HireDate,
b.BirthDate as BirthDate,b.MaritalStatus as MaritalStatus,
b.Salary as Salary,b.SickLeaveHours,b.VacationHours,
d.Name as Department_name,d.GroupName,c.Rate,c.PayFrequency,e.Name as Shift_name
from HumanResources.EmployeeDepartmentHistory a join HumanResources.Employee b 
on a.BusinessEntityID=b.BusinessEntityID join HumanResources.EmployeePayHistory c
on a.BusinessEntityID=c.BusinessEntityID join HumanResources.Department d 
on a.DepartmentID=d.DepartmentID join HumanResources.Shift e 
on a.ShiftID=e.ShiftID;
select * from Employee_Details

