-- temporary tables---
create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(50));
SELECT * FROM temp_table;

insert into temp_table
values ( ' abharna' , 'mishra', 'stranger things');
select * from temp_table; 
