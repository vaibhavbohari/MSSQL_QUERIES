/*UC1 to create a Address Book ServiceDB*/
create database AddressBookServiceDB

use AddressBookServiceDB

/* UC2 create a AddressBook table in the Address Book ServiceDB*/
create table ContactsTable(
Id int identity(1,1) NOT NULL PRIMARY KEY,
FirstName varchar(16) ,
LastName varchar(16),
Address varchar(24),
City varchar(16),
State varchar(16),
ZipCode varchar(6),
PhoneNumber varchar(16),
EmailId varchar(24)
);

/* UC3  Insert New Contacts in AddressBook DB */
Insert into ContactsTable(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,EmailId) values 
('Rishabh','Goda','Gandhi Road','Akola','MP','285224','7906552013','rish2@gmail.com'),
('Amit','Metker','Buliding abc','Agar','NewDelhi','110001','9745341514','amitm@gmail.com'),
('Gopal','Kale','above showroom','Murtizapur','Goa','411042','7894561230','Gopalo@gmail.com'),
('Smita','Dongre','Near temple','Akot','Maharashtra','600005','7744112233','reetad@gmail.com'),
('Priya','Giri','Opp mall','Nagpur','Maharashtra','444006','7775553331','Priya@gmail.com');

/* UC4 Edit existing contact person using their name */
UPDATE ContactsTable set State='Maharashtra' where FirstName='Rishabh' or FirstName='Amit'

/* UC5 Delete contact by name */
Delete from ContactsTable where FirstName='Smita'

/* UC6 Retrieve Person belonging to a City or State */
SELECT * from ContactsTable where State='MP' or State='Maharashtra';

/* UC7 Count of address book by City and State */

select count(City) from ContactsTable ;
select count(state) from ContactsTable ;

/*UC8-Ability to retrieve entries sorted alphabetically by Person’s name for A given city */
select City from ContactsTable  order by FirstName

/* UC9 Ability to identify each Address Book with name and Type. */

ALTER table ContactsTable ADD PersonType VARCHAR(16);
Select * from ContactsTable 


SELECT * FROM ContactsTable
update ContactsTable  set PersonType ='myself' where FirstName='Rishabh'; 
update ContactsTable  set PersonType ='friend' where FirstName='Priya';
update ContactsTable  set PersonType ='brother' where FirstName='Gopal';


/*UC10-COUNT BY TYPE*/
select count(PersonType) from ContactsTable ;


/*UC11-Ability To Add Person To Both Family And Friend*/

Insert into ContactsTable(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,EmailId,PersonType) values 
('Ram','Kote','Gandhi Road','panji','Goa','285224','7906552013','Ram2@gmail.com',' Family'),
('Gauri','Ghode','Buliding  xyz','Asansol','Bangal','110001','9785341514','Gauri@gmail.com','Family')





