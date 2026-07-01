---- string functions ----
select length('skyfall');
 
 SELECT first_name , length(first_name)
 FROM parks_and_recreation.employee_demographics
 order by 2 ;
 
 
  SELECT first_name , upper(first_name)
 FROM parks_and_recreation.employee_demographics
 order by 2 ;
 
 select age , reverse(age)
 from employee_demographics
 order by reverse(age) desc;
 