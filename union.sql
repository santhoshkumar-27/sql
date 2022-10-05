-- find all the list of employee and branch name;

select first_name as company_name from employee 
union
select branch_name from branch;

-- find all the list of all clients & branch supplier name;
select supplier_name as name from branch_supplier union select client_name from Client;

select supplier_name, branch_id from branch_supplier union select client_name, branch_id from Client;

select sum(salary) as total_amount from employee union select sum(total_sales) from work_with;

-- union can have same row and same data type, combine select two table;

-- joins gather the information from around the multiple tables
-- join is used to combine rows from the two or more tables;

insert into branch (branch_name, mgr_id, mgr_start_date) values ('Buffelo', null, null);
select * from branch;

-- employee is table1 and branch is table2 on specfic column
-- only we have join used only we have result of who have manager post
select e.emp_id, e.first_name, b.branch_name from employee as e join branch as b on e.emp_id = b.mgr_id; -- or inner join

-- it will give the information about table 1 with all values
select e.emp_id, e.first_name, b.branch_name from employee as e left join branch as b on e.emp_id = b.mgr_id;

-- it will give the information about table 2 no matter the condition will satisfiy with all values
select e.emp_id, e.first_name, b.branch_name from employee as e right join branch as b on e.emp_id = b.mgr_id;

-- in full outer join it will give response of both table no matter were condition is met or not;
