create table triggers_test (
	message varchar(50)
);

drop table triggers_test;

-- mysql -u root -p

-- use demoLearning

-- ; semicolan is the delimiter;

DELIMITER $$
create trigger my_trigger before insert on employee
    for each row begin
    insert into triggers_test values('added new employee');
    end $$
DELIMITER ;

DELIMITER $$
create trigger my_trigger0 before insert on employee
    for each row begin
    insert into triggers_test values(new.first_name + ' added as new employee');
    end $$
DELIMITER ;

delimiter $$
create 
	trigger my_trigger1 before insert on employee
    for each row begin
		if new.sex = 'M' then
			insert into triggers_test values ('added a new male employee');
		elseif new.sex = 'F' then
			insert into trigger_test values ('added a new female employee');
		else 
			insert into trigger_test values ('added a new other employee');
		end if;
	end $$
delimiter ;

-- trigger can be used in insert, update, delete;
-- trigger can be used in before, after

insert into employee (first_name, last_name, birth_date, sex, salary, super_id, branch_id)
 values ('kumar', 'versio', '1978-10-01', 'M', 71000, 1, 4);
 
 insert into employee (first_name, last_name, birth_date, sex, salary, super_id, branch_id)
 values ('Andywss', 'Bernard', '1973-07-22', 'M', 65000, 6, 4);

select * from triggers_test;

DROP TRIGGER my_trigger;
DROP TRIGGER my_trigger0;