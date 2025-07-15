SELECT employee_id,name,salary,salary*2+10 as rahat FROM employee where job='Waiter';
SELECT name,salary,salary+ salary- 1000 * 50 / 100 
FROM employee 
where job ='Cook';
select * from employee where manager_id is null;
//null is not avabibale kisu nai not 0
