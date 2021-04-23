-- employees ���̺��� emplyee_id �� ����ϰ�
-- first_name �� last_name �� �ٿ��� ����ϵ�, ��� ��ĭ�� ����ּ���.
-- �׸��� �� ���� ������ email �� ����ϵ� @company.com ������ �ٿ��� ����ϼ���

SELECT
    employee_id,
    first_name || ' ' || last_name,
    email || '@company.com' 
FROM employees ; 

--  employees ���̺��� employee_id + 500 , salary * 30 �� ����ϼ���
SELECT
    employee_id + 500 ,
    salary * 30
FROM employees ; 

-- employees ���̺���, id �� 100 �̻��� ���� ������ ����϶�.
SELECT *
FROM employees
WHERE employee_id >= 100 ; 

-- employees ���̺���, salary �� 15000 ~ 25000 �� ������ ȣ���϶�
SELECT * 
FROM employees
WHERE salary BETWEEN 15000 AND 25000 ; 

-- employees ���̺���, FIRST NAME �� S �� �����ϴ� ���� ȣ��
SELECT *
FROM employees
WHERE first_name LIKE 'S%' ; 

-- employees ���̺��� job_id ����, AD�� �����ϸ鼭, �ڿ� ������� ���ڿ��� 3�ڸ��� ������ ���
SELECT *
FROM employees 
WHERE job_id LIKE 'AD___' ; 

-- employees ���̺��� manager_id �� null �� ���� ������ ����϶�
SELECT * 
FROM employees
WHERE manager_id IS NULL ; 

-- employees ���̺���, salary �� 4000�� �ʰ��ϸ� job_id �� IT_PROG �� ���� ��ȸ
SELECT * 
FROM employees 
WHERE salary > 4000 
AND job_id = 'IT_PROG' ; 

-- employees ���̺��� salary �� 4000�� �ʰ��ϸ� job_id �� IT_PROG �Ǵ� FI_ACCOUNT
SELECT *
FROM employees
WHERE salary > 100
AND (job_id = 'IT_PROG' OR job_id = 'FI_ACCOUNT') ; 

-- employees ���̺��� manage_id �� null ���� �ƴ� ������ ��ȸ�ϱ�
SELECT *
FROM employees
WHERE manager_id IS NOT NULL ;




