---- aliasing -----

SELECT gender , avg(age)
FROM parks_and_recreation.employee_demographics
group by gender
having avg(age)> 40 ;

