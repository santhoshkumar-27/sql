-- find all the employee name who have sold 30000;
select emp_id, sum(total_sales) from work_with where total_sales > 30000 group by emp_id ;

select ep.first_name, ep.last_name 
from employee ep where ep.emp_id
in(
select ww.emp_id from work_with ww where ww.total_sales > 50000);

-- find all client who are handled by  the branch
-- that michael scott manages
-- assume you know michael's ID

select c.client_name from Client c where c.branch_id 
in(
select branch_id from branch where mgr_id in (select e.emp_id from employee e where e.emp_id = 6)
);

-- with equal

select c.client_name from Client c where c.branch_id  = (
select branch_id from branch where mgr_id = (select e.emp_id from employee e where e.emp_id = 6)
);


-- on delete set null and on delete cascade
/*
	if we delete the one of the row in employee table the employee has linked the branch which would be the
    manager of that branch so, if we delete that employee that is foreign key reference so that branch in the branch table 
    which has a manager id of the employee have gone
*/


create table branch (
	branch_id int,
    branch_name varchar(50),
    mgr_id int,
    mgr_start_date date,
    foreign key (mgr_id) references employee(emp_id) on delete set null,
    primary key (branch_id)
);

/*
employee entity get deleted in the table so the mgr_id set to be null
*/

delete from employee where emp_id = 3;

select * from branch;

-- alter table branch alter column branch_name = '' where id = 4;
-- update branch set branch_name = 'scarrrr' where branch_id = 4;


-- on delete cascade

/*
	which means once the branch is delete in the branch table
    but in the foreign key as references in the branch_supplier
    got delete instead set to null because it is primary key
*/

create table branch_supplier (
	branch_id int,
    supplier_name varchar(40),
    supply_type varchar(40),
    primary key (branch_id, supplier_name),
    foreign key (branch_id) references branch(branch_id) on delete cascade
);

delete from branch where branch_id = 2;
select * from branch_supplier;