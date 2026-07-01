--- group by -----
SELECT gender, avg(age) , max(age) , count(age)
FROM parks_and_recreation.employee_demographics
group by gender;

select occupation , salary , employee_id
from employee_salary
group by occupation , salary , employee_id ;
# group by perform more than one value


---- order by ----
select *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name desc ;


select *
FROM parks_and_recreation.employee_demographics
ORDER By  age , gender
 ;



 