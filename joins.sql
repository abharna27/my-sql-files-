--- joins ---

SELECT * 
FROM employee_demographics as dem 
inner join employee_salary as sal 
 on dem.employee_id= sal.employee_id;


SELECT * 
FROM employee_demographics as dem 
left outer join employee_salary as sal 
 on dem.employee_id= sal.employee_id;
 
 SELECT * 
FROM employee_demographics as dem 
 right outer join employee_salary as sal 
 on dem.employee_id= sal.employee_id;
 
 --- joining multiple tables --
 SELECT * 
FROM employee_demographics as dem 
inner join employee_salary as sal 
 on dem.employee_id= sal.employee_id
inner join parks_departments pd 
 on sal.employee_id=pd. department_id;
 
   SELECT * 
   from parks_departments;
 