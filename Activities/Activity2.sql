-- in class activity 
show tables;

-- description of students, classes, and classes_students tables schema
describe table students;
describe table classes;
describe table classes_students;

-- class activity SELECT
select student_id, first_name, last_name, gpa, enrollment_date
from students;

-- aliases
select student_id as id, 
    first_name as fname,
    last_name as lname
from students
-- order by [number] means order by that number column. Will change when query changes
order by 3; 

select student_id as id, 
    first_name as fname,
    last_name as lname
from students as s;

select s.student_id as id, 
    s.first_name as fname,
    s.last_name as lname
from students as s;

select student_id as id, 
    first_name as fname,
    last_name as lname
from z_db_instructor1.academic.students;

-- where 
select * 
from students
-- where clauses usually best for numerical data. But require knowledge on the type of data as well. 
where gpa > 3.5 and city = 'Fort Collins';

-- order by
select *
from students
order by personal_projects nulls first;

-- limits
select * 
from students 
limit 4;

-- sample
select * 
from students
-- number in sample is a percentage of the table
sample (50);