-- triggers---
SELECT *
 FROM parks_and_recreation.employee_demographics;
 
 select *
 from employee_salary;
 
 delimiter $$
 create trigger employee_insert 
    after insert on employee_salary
	for each row
begin 
      insert into employee_demographics( employee_id , first_name , last_name  )
      values(new.employee_id , new.first_name, new.last_name);
end $$
delimiter ;

insert into employee_salary(employee_id , first_name , last_name , occupation , salary,dept_id)
values(13, 'abharna',' mishra' , 'student' , 20000, null);
