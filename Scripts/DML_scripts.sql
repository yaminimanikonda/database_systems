use ds_main;

-- --------------------- INSERT STATEMENT-------------------
INSERT INTO country VALUES ( 'KR'  , 'Korea'  , 3   );  

INSERT INTO employee VALUES 
( 207,'Yamini','Manikonda','YMAIKONDA','630.123.8181','2021-06-07',10000,'IT_PROG',60);
-- -------------------------------------------------------------

-- --------------------- UPDATE STATEMENT-------------------
UPDATE performance_review set comments="Good communication" where id=8;

UPDATE job_history set end_date= '2010-04-24' where id=7;
-- ---------------------------------------------------------

-- ------------------------ DELETE STATEMENT-------------------
DELETE from job_history where id=9;
-- ----------------------------------------------------

-- ------------------- SIMPLE SELECT STATEMENT-------------------------------
select * from department;
-- -------------------------------------------------

-- ----------JOIN STATEMENTS----------------------------
select employee.first_name, employee.last_name,department.id, department.department_name 
from employee inner join department on department.id =employee.department_id and department.id=50;


select location.street_address, location.city,location.country_id, country.id,country.country_name 
from location inner join country on country.id =location.country_id and country.id in('UK','US');
-- ---------------------------------------------------------------

-- ---------------SUMMARY STATEMENTS-----------------------------
select location.city, count(*) as department_count  from department 
inner join location on location.id = department.location_id group by location.id;

select max(end_date) from job_history ;
-- ------------------------------------------------------------------

-- --------------MULTI TABLE QUERY --------------------------
select location.city, count(*) as department_count  from department 
inner join location on department.location_id = location.id group by location.id
having department_count < 10 order by department_count desc;

select CONCAT(first_name, ' ' ,last_name) AS full_name, start_date, end_date,employee_id  
from employee inner join job_history on employee.id = job_history.employee_id;

-- ----------------------------------------------------------------

-- QUERY OF MY CHOICE --------------------------
select first_name, last_name, salary from employee where salary > 3000;

select * from location where state_province is NULL;
-- ------------------------------------------------