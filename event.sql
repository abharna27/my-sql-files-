SELECT * 
FROM parks_and_recreation.employee_demographics;
delimiter $$
create event delete_retiress
on schedule every 30 second
do
begin
       select*
       from employee_demographics
       where age>=60;
end $$
delimiter ;