--- group by----

SELECT gender , avg(salary) as avg_salary
 FROM parks_and_recreation.employee_demographics as dem 
 join employee_salary as sal
     on dem.employee_id = sal.employee_id
group by gender;

---- window function---
 SELECT gender , avg(salary) over()
 FROM parks_and_recreation.employee_demographics as dem 
 join employee_salary as sal
     on dem.employee_id = sal.employee_id;
     
     
     SELECT gender, dem.first_name ,dem.last_name, avg(salary) over(partition by gender)
 FROM parks_and_recreation.employee_demographics as dem 
 join employee_salary as sal
     on dem.employee_id = sal.employee_id;

SELECT gender, dem.first_name ,dem.last_name,salary, 
sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
 FROM parks_and_recreation.employee_demographics as dem 
 join employee_salary as sal
     on dem.employee_id = sal.employee_id;
     
     
SELECT dem.employee_id, dem.first_name ,dem.last_name, gender,salary, 
row_number() over(partition by gender order by salary desc) as row_num,
rank() over( partition by gender order by salary desc) as rank_num,
dense_rank() over( partition by gender order by salary desc) as dense_rank_num
FROM parks_and_recreation.employee_demographics as dem 
 join employee_salary as sal
     on dem.employee_id = sal.employee_id;

