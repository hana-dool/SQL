-- employees ���̺��� salary �� 30���� ���� ���� �Ҽ��� �Ѥ��ڸ����� �ݿø��Ѱ�
SELECT ROUND(salary/30,1)
FROM employees ; 

-- employees ���̺��� salary �� 30���� ���� ���� �Ҽ����� 2���� ǥ��(�� 3�ڸ����� ����)
SELECT TRUNC(salary/30,2)
FROM employees ; 

SELECT * 
FROM employees ; 

--  SYNDATA �� ��ǻ�ͻ��� ���� �ð��� ����Ѵ�.
SELECT SYSDATE ����
FROM DUAL ; 

-- employees ���̺��� department_id �� 100�� ������ ���ؼ�, ���ó�¥�� hire_date ���� �������� ���
SELECT MONTHS_BETWEEN(SYSDATE, hire_date)
FROM employees
WHERE department_id = 100 ;

-- employess ���̺��� employee_id �� 100�� 106 ������ ������ ���ؼ�
-- hire date �� 3������ ���Ѱ�, 3���� �A�� ����ϱ�
SELECT ADD_MONTHS(hire_date,3) ���ϱ��Ѱ�,
       ADD_MONTHS(hire_date,-3) �����Ѱ� 
FROM employees
WHERE (employee_id >= 100) AND (employee_id <= 106)
