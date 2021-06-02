create database Banking;
use Banking;
create table Branch(branchname varchar(30),branchcity varchar(30),assests real, primary key(branchname)); 
desc Branch;
create table BankAccount(accno int,branchname varchar(30), balance real ,primary key (accno),foreign key (branchname) references Branch(branchname));
desc BankAccount;
create table BankCustomer(customername varchar(30),customerstreet varchar(30),customercity varchar(30),primary key(customername)); 
desc BankCustomer;
create table Depositor(customername varchar(30),accno int,primary key(customername,accno),foreign key(customername) references BankCustomer(customername), foreign key(accno) references BankAccount(accno)); 
desc Depositor;
create table Loan(loannumber int,branchname varchar(30),amount real,primary key (loannumber), foreign key (branchname) references Branch(branchname)); 
desc Loan;
insert into Branch values('SBI_Chamrajpet','Bangalore',50000);
insert into Branch values('SBI_ResidencyRoad','Bangalore',10000);
insert into Branch values('SBI_ShivajiRoad','Bombay',20000);
insert into Branch values('SBI_ParlimentRoad','Delhi',10000);
insert into Branch values('SBI_Jantarmantar','Delhi',20000);
commit;
select * from Branch;
insert into BankAccount values(1,'SBI_Chamrajpet',2000);
insert into BankAccount values(2,'SBI_ResidencyRoad',5000);
insert into BankAccount values(3,'SBI_ShivajiRoad',6000);
insert into BankAccount values(4,'SBI_ParlimentRoad',9000);
insert into BankAccount values(5,'SBI_Jantarmantar',8000);
insert into BankAccount values(6,'SBI_ShivajiRoad',4000);
insert into BankAccount values(8,'SBI_ResidencyRoad',4000);
insert into BankAccount values(9,'SBI_ParlimentRoad',3000);
insert into BankAccount values(10,'SBI_ResidencyRoad',5000);
insert into BankAccount values(11,'SBI_Jantarmantar',2000);
commit;
select * from BankAccount;
insert into BankCustomer values('Avinash','Bull_Temple_Road','Bangalore');
insert into BankCustomer values('Dinesh','Bannergatta_Road','Bangalore');
insert into BankCustomer values('Mohan','NationalColege_Road','Bangalore');
insert into BankCustomer values('Nikil','Akbar_Road','Delhi');
insert into BankCustomer values('Ravi','Prithviraj_Road','Delhi');
commit;
select * from BankCustomer;
insert into Depositor values('Avinash',1);
insert into Depositor values('Dinesh',2);
insert into Depositor values('Nikil',4);
insert into Depositor values('Ravi',5);
insert into Depositor values('Avinash',8);
insert into Depositor values('Nikil',9);
insert into Depositor values('Dinesh',10);
insert into Depositor values('Nikil',11);
commit;
select * from Depositor;
insert into Loan values(1,'SBI_Chamrajpet',1000); 
insert into Loan values(2,'SBI_ResidencyRoad',2000); 
insert into Loan values(3,'SBI_ShivajiRoad',3000); 
insert into Loan values(4,'SBI_ParlimentRoad',4000); 
insert into Loan values(5,'SBI_Jantarmantar',5000);
commit;
select * from Loan;
