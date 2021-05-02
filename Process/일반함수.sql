-- NULL �� ���ԵǾ�������, ���ϸ� ��� �ɱ�? 
SELECT salary * commission_pct , salary , commission_pct
FROM employees ;

-- employees ���̺���, salary �� commision_pct �� ���ϵ�
-- commision_pct �� null �� ������ 1 �� ġȯ�Ͽ� commision_pct �� ���� ����� ���

SELECT salary * NVL(commission_pct,1) 
FROM employees ;

-- employees ���̺��� first_name , last_name , department_id, salary �� ����ϵ�
-- department_id �� 60 �� ��쿡�� 10% �λ��� ��� ������ ��쿡�� �̿ϼ��� ���
SELECT first_name, 
       last_name,
       department_id,
       salary ��_����,
       DECODE(department_id, 60, '10%�λ�' ,'�ƴ� ����?') ������_����
FROM employees ;

-- employees ���̺��� job_id �� IT_PROG ��� employee_id, first_name, last_name, salary ����ϵ�
-- salary �� 9000 �̻��̸� '�����޿�' , 6000~8999 ���̸� '�����޿�' �� �ܴ� '�����޿�' ��� ���
SELECT employee_id, first_name , last_name , salary,
        CASE 
            WHEN salary >= 9000 THEN '�����޿�'
            WHEN salary between 6000 and 8999 then '�����޿�'
            ELSE '�����޿�'
        END AS �޿����
FROM employees 
WHERE job_id = 'IT_PROG' ;

-- RANK, DENSE_RANK , ROW_NUMBER �Լ��� ���� �̿��Ͽ�, employees ���̺��� Salary ���� ���� ������� ������ �Ű� ���
SELECT salary,
       RANK() OVER (ORDER BY salary) RANK,
       DENSE_RANK() OVER (ORDER BY salary) DENSE_RANK ,
       ROW_NUMBER() OVER (ORDER BY salary) ROW_NUMBER
FROM employees ;

--RANK �� �̿���, employees ���� �� ���� department_id �ȿ���, salary ���� ���� ������� ������ �Ű� ���
SELECT A.emplo


