

create procedure large_salaries()
SELECT *
FROM employee_salary
where salary >= 50000;
call large_salaries();

-- two queries in one store procedure---
delimiter $$
create procedure large_salaries3()
begin
	   SELECT *
       FROM employee_salary
       where salary <= 60000;
       SELECT *
       FROM employee_salary
       where salary >= 10000;
end $$
delimiter ;
call large_salaries3();

delimiter $$
create procedure large_salaries4 (employee_id  int)
begin
	   SELECT *
       FROM employee_salary
       where employee_id = employee_id;
      
end $$
delimiter ;
call large_salaries4(1);