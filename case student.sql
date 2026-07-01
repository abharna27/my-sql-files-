-- case statements -----

SELECT first_name ,
 last_name , 
 age,
case 
     when age<= 30 then 'young'
     when age between '31' and '50' then 'adult'
     else 'old'
     end as people_type
FROM parks_and_recreation.employee_demographics;


select first_name ,
 last_name , 
 salary,
 case 
      when salary < 50000 then salary + ( salary * 0.05)
      when salary > 50000 then salary + ( salary * 0.07)
      end as pay_incrase, 
case 
      when dept_id = 6 then salary*0.10
      end as bonus 
from employee_salary;