/*UC-1-CREATE DATA BASE*/

Create database Emp_Payroll_Service

use Emp_Payroll_Service 

/* UC2 create a employee payroll table in the payroll service database*/
create table employee_payroll(
Id int identity(1,1) primary key,
Name varchar(20),
Salary int,
StartDate varchar(20)
)
/* UC3 create employee payroll data */
insert into employee_payroll(Name, Salary, StartDate) values ('Rishabh','40000','26/08/2021'),
('Rahul','50000','16/07/2021'),
 ('Satish','60000','27/04/2021'),
('Riya','35000','26/05/2019'),
 ('Priya','25000','24/08/2018'),
 ('Gopal','35000','15/09/2020'),
 ('Rohit','25000','27/06/2021')

 /* UC4 retrieve all the employee payroll data */
select * from employee_payroll

/*UC5 retrieve salary data on a condition */
SELECT Salary,Name FROM employee_payroll WHERE Name = 'Rishabh'

Select Salary,Name from employee_payroll where StartDate between ('01/01/2018') and ('26/08/2021')

/* UC6 add Gender to Employee Payroll Table and Update the Rows */
ALTER TABLE employee_payroll ADD Gender varchar(6);
UPDATE employee_payroll set Gender = 'M' where  Name='Rishabh' or Name = 'Rahul' or Name='Satish' or Name='Gopal' or Name='Rohit'
UPDATE employee_payroll set Gender = 'F' where  Name='Riya' or Name = 'Priya'

/*UC-7-SUM(),MAX(),MIN(),AVG(),COUNT()*/
Select SUM(Salary) FROM employee_payroll WHERE Gender ='M'
Select MAX(Salary) FROM employee_payroll WHERE Gender ='M'
Select AVG(Salary) FROM employee_payroll  WHERE Gender ='M'
Select COUNT(Salary) FROM employee_payroll  WHERE gender ='M'

Select SUM(Salary) FROM employee_payroll WHERE Gender ='F'
Select MAX(Salary) FROM employee_payroll WHERE Gender ='F'
Select AVG(Salary) FROM employee_payroll  WHERE Gender ='F'
Select COUNT(Salary) FROM employee_payroll  WHERE gender ='F'


/* UC8 extend employee_payroll data and save more details */
ALTER TABLE employee_payroll ADD Phone varchar(16), Address varchar(32) DEFAULT 'Empty' WITH VALUES, Department varchar(16) NOT NULL DEFAULT 'Developer';
select * from employee_payroll

/* UC9 extend employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay*/
ALTER TABLE employee_payroll ADD BasicPay Float Not Null default 0, 
Deductions Float Not Null default 0, TaxablePay Float Not Null default 0,
IncomeTax Float Not Null default 0, NetPay Float Not Null default 0;
UPDATE employee_payroll set BasicPay=30000.50 where Name='Rishabh';
UPDATE employee_payroll set BasicPay=40000 where Name='Rahul';
UPDATE employee_payroll set BasicPay=50000 where Name='Satish';
UPDATE employee_payroll set BasicPay=25000 where Name='Riya';
UPDATE employee_payroll set BasicPay=15000.75 where Name='Priya';
UPDATE employee_payroll set BasicPay=25000 where Name='Gopal';
UPDATE employee_payroll set BasicPay=15000 where Name='Rohit';


select * from employee_payroll
/*UC10 Adding Department of Terisa as Sales & Marketing Both*/
ALTER TABLE employee_payroll DROP COLUMN Salary
UPDATE employee_Payroll SET Department = 'Sales' WHERE NAME = 'Priya';
INSERT INTO employee_Payroll 
VALUES
('Priya','24/05/2019','F','9730975685','Akola','Marketing',35200,0,0,0,0);
SELECT * FROM employee_Payroll

 Update employee_payroll set 
 Phone=9999888877 ,Address='Agra', Department='FrontEnd', Deductions=2000, TaxablePay=1000, IncomeTax=2000, NetPay=25000 where name='Rishabh'
 Update employee_payroll set 
 Phone=9988558899 ,Address='Delhi', Department='Accounts', Deductions=3000, TaxablePay=1000, IncomeTax=3000, NetPay=33000 where name='Rahul'
 Update employee_payroll set 
 Phone=8877995544 ,Address='Pune', Department='Backend', Deductions=2000, TaxablePay=1000, IncomeTax=4000, NetPay=43000 where name='Satish'
 Update employee_payroll set 
 Phone=7744112233 ,Address='Chennai', Department='Testing', Deductions=1500, TaxablePay=1000, IncomeTax=1000, NetPay=21500 where name='Riya'
 Update employee_payroll set 
 Phone=7775553330 ,Address='Kolkata', Deductions=1000, TaxablePay=500, IncomeTax=0, NetPay=13500 where id=5
 Update employee_payroll set 
 Phone=9080706050 ,Address='Delhi', Department='Accounts', Deductions=1500, TaxablePay=500, IncomeTax=1000, NetPay=22000 where name='Gopal'
 Update employee_payroll set 
 Phone=8090603020 ,Address='Chennai', Department='Backend', Deductions=1000, TaxablePay=500, IncomeTax=0, NetPay=13500 where name='Rohit'


