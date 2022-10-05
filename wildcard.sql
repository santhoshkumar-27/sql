-- '%' = any # characters, '_' = one character;
select * from Client;

-- anycharacter before % sign but it will match llc
select * from Client where client_name like '%llc';

-- anycharacter after % sign bit it will match fed;
select * from Client where client_name like 'fed%';
select * from Client where client_name like '%school%';
-- find branch supplier
select * from branch_supplier;

-- it will look for the supplier with label in any of sentence somewhere
select * from branch_supplier where supplier_name like '%label%';
select * from branch_supplier where supply_type like 'pap%';

-- find out the employee who born in the octobar;
select * from employee where birth_date like '%-10-%';
select * from employee where birth_date like '____-10%';