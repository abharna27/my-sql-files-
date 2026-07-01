select *
from employee_salary
# where salary >= 5000
where salary < 50000
;

select *
from employee_demographics 
# WHERE gender != 'FEMALE'
where birth_date > '1985-01-01'
;

--- AND OR NOT---- logical operators 

select*
from employee_demographics 
# where birth_date>1985-01-01 
# OR NOT gender = 'male'
;

select*
from employee_demographics 
where ( first_name = 'leslie' AND  age = '44') or age > 55 
# above statement is called isolation statement 
;


--- Like statement --- 
--- % and _ -----

select *
from employee_demographics 
where first_name LIKE '%jer%'
;

select *
from employee_demographics 
where first_name LIKE '%rry%';

select *
from employee_demographics 
where first_name LIKE 'a%'; # % at end means a has to be in begginnig 


select *
from employee_demographics 
where first_name LIKE 'a___%'; #(it means a word start with char a and have three  more char and % means after that anything come)

select *
from employee_demographics 
where birth_date LIKE '19__%';
