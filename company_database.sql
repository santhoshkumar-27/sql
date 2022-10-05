create table employee (
emp_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50),
birth_date date,
sex varchar(1),
salary int,
super_id int,
branch_id int
);
drop table employee, branch;

create table branch (
branch_id int primary key auto_increment,
branch_name varchar(40),
mgr_id int,
mgr_start_date Date,
foreign key(mgr_id) references employee(emp_id) on delete set null);

alter table employee add foreign key(super_id) references employee(emp_id) on delete set null;
alter table employee add foreign key(branch_id) references branch(branch_id) on delete set null;

create table Client (
client_id int primary key auto_increment,
client_name varchar(50),
branch_id int,
foreign key(branch_id) references branch(branch_id) on delete set null);

create table work_with (
emp_id int,
client_id int,
total_sales int,
primary key(emp_id, client_id),
foreign key(emp_id) references employee(emp_id) on delete cascade,
foreign key(client_id) references Client(client_id) on delete cascade
);

create table branch_supplier (
branch_id int,
supplier_name varchar(50),
supply_type varchar(50),
primary key(branch_id, supplier_name),
foreign key(branch_id) references branch(branch_id) on delete cascade
);

insert into employee (first_name, last_name, birth_date, sex, salary, super_id, branch_id) values ('santhosh', 'kumar', '1998-12-27', 'M', 18000, null, null);

insert into branch (branch_name, mgr_id, mgr_start_date) values ('coporate', 1, '2022-12-23');

update employee set branch_id = 1 where emp_id = 1;

insert into employee (first_name, last_name, birth_date, sex, salary, super_id, branch_id) values ('kumar', 'sandy', '1999-12-27', 'M', 19000, 1, 1);

update employee set branch_id = 1 where emp_id = 2;

insert into employee (first_name, last_name, birth_date, sex, salary, super_id, branch_id)
 values ('Michael', 'Scott', '1964-03-15', 'M', 75000, 1, null);
insert into employee (first_name, last_name, birth_date, sex, salary, super_id, branch_id)
 values ('Angela', 'Martin', '1971-06-25', 'F', 63000, 3, 2);
 insert into employee (first_name, last_name, birth_date, sex, salary, super_id, branch_id)
 values ('Kelly', 'Kapoor', '1971-06-25', 'F', 63000, 3, 2);
 insert into employee (first_name, last_name, birth_date, sex, salary, super_id, branch_id)
 values ('Stanley', 'Hudson', '1958-02-19', 'M', 69000, 3, 2);
 insert into employee (first_name, last_name, birth_date, sex, salary, super_id, branch_id)
 values ('Josh', 'Porter', '1969-09-05', 'M', 78000, 1, 4);
insert into employee (first_name, last_name, birth_date, sex, salary, super_id, branch_id)
 values ('Andy', 'Bernard', '1973-07-22', 'M', 65000, 6, 4);
insert into employee (first_name, last_name, birth_date, sex, salary, super_id, branch_id)
 values ('Jim', 'Halpert', '1978-10-01', 'M', 71000, 6, 4);

 
 
insert into branch (branch_name, mgr_id, mgr_start_date) values ('Scranton', null, '1992-04-06');
update branch set mgr_id = 6 where branch_id = 4;

insert into branch (branch_name, mgr_id, mgr_start_date) values ('Scranton', 3, '1992-04-06');
-- update employee set branch_id = 2 where emp_id = 3;


-- branch supplier
insert into branch_supplier (branch_id, supplier_name, supply_type) values (4,'Hammer Mill', 'Paper');
insert into branch_supplier (branch_id, supplier_name, supply_type) values (4,'Uni-ball', 'Writing Utensils');
insert into branch_supplier (branch_id, supplier_name, supply_type) values (2,'J.T. Forms & Labels', 'Custom Forms');
insert into branch_supplier (branch_id, supplier_name, supply_type) values (4,'Patriot Paper', 'Paper');
insert into branch_supplier (branch_id, supplier_name, supply_type) values (2,'Uni-ball', 'Writing Utensils');
insert into branch_supplier (branch_id, supplier_name, supply_type) values (2,'Hammer Mill', 'Paper');
insert into branch_supplier (branch_id, supplier_name, supply_type) values (4,'Stamford Lables', 'Custom Forms');

-- client 
insert into Client (client_name, branch_id) values ('Dunmore Highschool', 2);
insert into Client (client_name, branch_id) values ('Lackawana Country', 2);
insert into Client (client_name, branch_id) values ('FedEx', 4);
insert into Client (client_name, branch_id) values ('John Daly Law, LLC', 4);
insert into Client (client_name, branch_id) values ('Scranton Whitepages', 2);
insert into Client (client_name, branch_id) values ('Times Newspaper', 4);
insert into Client (client_name, branch_id) values ('FedEx', 2);

-- work with
insert into work_with (emp_id, client_id, total_sales) values (2, 13, 55000);
insert into work_with (emp_id, client_id, total_sales) values (1, 14, 65000);
insert into work_with (emp_id, client_id, total_sales) values (3, 14, 75000);
insert into work_with (emp_id, client_id, total_sales) values (4, 16, 88000);
insert into work_with (emp_id, client_id, total_sales) values (5, 17, 45000);
insert into work_with (emp_id, client_id, total_sales) values (6, 18, 12000);
insert into work_with (emp_id, client_id, total_sales) values (7, 19, 89000);
insert into work_with (emp_id, client_id, total_sales) values (8, 20, 78000);
insert into work_with (emp_id, client_id, total_sales) values (2, 13, 23000);


