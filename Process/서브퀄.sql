-- employees ���̺��� last_mname �� De Haan �� ������ salary �� ������ ������ ���� �ִ���
-- ���� �� ���������� �̿��� ã�ƶ�.
SELECT *
FROM employees A
WHERE a.salary = ( SELECT salary
                   FROM employees b
                   WHERE b.last_name = 'De Haan'
                    ) ; 

-- employees ���̺��� department_id ���� ���� ���� salary �� ������ ã�ƺ���.
-- ã�Ƴ� salary �� �ش��ϴ� ������ �������� ��Ÿ����.
SELECT a.department_id,a.employee_id, a.salary 
FROM employees A
WHERE a.salary IN (SELECT MIN(salary)
                   FROM employees b
                   GROUP BY b.department_id
                    ) ;

-- employees ���̺��� job_id ���� ���� ���� salary �� ������ ã�ƺ���.
-- ã�Ƴ� job_id �� salary �� �ش��ϴ� ������ �������� ���� �� ���������� �̿��Ͽ� ã�ƺ���.
SELECT job_id, salary , employee_id
FROM employees A 
WHERE (A.job_id , A.salary) IN (
                SELECT job_id, MIN(salary) 
                FROM employees B
                GROUP BY job_id
)  
ORDER BY salary; ; 

-- ������ �������� (job_id �� �A ���¿��� ���) �ϸ� ����?
SELECT job_id, salary , employee_id
FROM employees A 
WHERE A.salary IN (
                SELECT MIN(salary)
                FROM employees B
                GROUP BY job_id
)  
ORDER BY salary; 

-- �����߿��� department_name �� IT �� ������ ������ �ζ��� �� �� �̿��� ���
SELECT *
FROM employees A,(SELECT department_id
                  FROM departments
                  WHERE department_name = 'IT') B
WHERE A.department_id = B.department_id ; 
                  
                  
SELECT * 
FROM departments ;

-- department ���̺� 
-- department_id : 273
-- department_name : 'GG' 
-- manager_id : 200
-- location_id : 1700 �� �����ϱ�
INSERT INTO departments (department_id,department_name,manager_id,location_id)
VALUES (272,'GG',200,1700) ;   
                  
SELECT * 
FROM departments ;

-- department id �� 271 ~ 273 �� ������ ��� ��������.

DELETE FROM departments 
WHERE department_id