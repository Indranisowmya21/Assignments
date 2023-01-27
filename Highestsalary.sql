-- CREATE
CREATE TABLE EMPLOYEE (
  emp_name varchar(20) PRIMARY KEY,
  deptNo integer NOT NULL,
  salary integer NOT NULL
);
-- insert
INSERT INTO EMPLOYEE VALUES ('A',10,1000);
INSERT INTO EMPLOYEE VALUES ('B',10,2000);
INSERT INTO EMPLOYEE VALUES ('C',10,3000);
INSERT INTO EMPLOYEE VALUES ('D',20,7000);
INSERT INTO EMPLOYEE VALUES ('E',20,9000);
INSERT INTO EMPLOYEE VALUES ('F',20,8000);
INSERT INTO EMPLOYEE VALUES ('G',30,17000);
INSERT INTO EMPLOYEE VALUES ('H',30,15000);
INSERT INTO EMPLOYEE VALUES ('I',30,30000);
-- fetch 
SELECT * FROM EMPLOYEE;
Output: emp_namedeptNo    salary
A    10    1000
B    10    2000
C    10    3000
D    20    7000
E    20    9000
F    20    8000
G    30    17000
H    30    15000
I    30    30000 -- Highest salary SELECT e.*,
max(salary) over(partition by deptNo) as max_salary
FROM EMPLOYEE e; Output
emp_namedeptNo    salary    max_salary
A    10    1000    3000
B    10    2000    3000
C    10    3000    3000
D    20    7000    9000
E    20    9000    9000
F    20    8000    9000
G    30    17000    30000
H    30    15000    30000
I    30    30000    30000 -- Second Highest salary SELECT * from (
SELECT e.*,
rank() over(partition by deptNo order by salary desc) as rnk
FROM EMPLOYEE e) x
where x.rnk = 2; Output
emp_namedeptNo    salary    rnk
B    10    2000    2
F    20    8000    2
G    30    17000    2