-- find all employees
select * from employee;

-- find all clients;
select * from Client;

-- find employee with salary
select * from employee order by salary;
select * from employee order by salary desc;

-- find employee with sex and then name
select * from employee order by sex desc, first_name;

-- find first 5 employee;
select * from employee limit 5;

-- find the first and last name;
select first_name fname, last_name lname from employee;

-- find the forename and surname from employee;
select first_name as forename, last_name as surname from employee;
select first_name forename, last_name surname from employee;

-- find out the all the genders
select sex from employee group by sex;
select distinct sex from employee;

-- select distince branch id
select distinct branch_id from employee;

-- select functions in sql 
select count(emp_id) from employee;
select count(super_id) from employee;

select count(emp_id) from employee where sex = 'M' and birth_date > '1980-01-01';
select count(emp_id) from employee where sex = 'F' and birth_date > '1980-01-01';

-- average of salaries of employee
select avg(salary) from employee;
-- average of salaries of employee with condition
select avg(salary) from employee where sex = 'm';

-- sum of salaries of employee
select sum(salary) from employee;

-- list out the how many males and females in our company by aggergated with group by
select count(sex), sex from employee group by sex;
select count(sex), sex from employee group by sex;

-- find the total sales of each employee
select sum(total_sales), emp_id from work_with group by emp_id;
select  emp_id from work_with group by emp_id;

-- find the total sales of each client

select sum(total_sales) totalSpend, client_id from work_with group by client_id;
select  client_id from work_with group by client_id;