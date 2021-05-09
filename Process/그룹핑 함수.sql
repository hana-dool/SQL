SELECT COUNT(salary)
FROM employees  ; 

-- employees ���̺��� salary�� �հ�� ����� ���غ���.
SELECT AVG(salary) ���,
       SUM(salary) �հ�
FROM employees ;

-- Null ���� �����ؼ� ����� ���
SELECT AVG(NVL(salary,0))
FROM employees ;

-- employees ���̺��� salary �� �ִ밪 / �ּҰ��� ���
SELECT MIN(salary)
FROM employees ; 

-- employees ���̺���, employee_id �� 10 �̻��� ������ ���� job_id ���� �׷�ȭ �Ͽ��� 
-- job_id �� �� �޿���, job_id �� ��� �޿��� ���ϰ�
-- job_id �� �� �޿��� �������� �������� ����
SELECT job_id ���� , SUM(salary) ������ , AVG(salary) �������
FROM employees
WHERE employee_id >= 10 
GROUP BY job_id
ORDER BY ������ desc;

-- employees ���̺���, job_id �� ���� grouping �Ŀ� manager_id �� grouping 
-- �� ���Ŀ� ������ ��� ��� 
SELECT job_id,
        manager_id,
        AVG(salary)
FROM employees
GROUP BY job_id, manager_id ;


-- employees ���̺���, employee_id �� 10 �̻��� ������ ���ؼ�, job_id ���� �׷�ȭ �Ͽ� �� �޿� ���
-- �� ���� �� �޿��� 30000 ���� ū ���� �������. 
-- ����� ��������
SELECT  job_id �����ڵ�,
        SUM(salary) ������
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
HAVING SUM(salary) >= 30000
ORDER BY ������ DESC; 

