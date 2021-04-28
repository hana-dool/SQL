-- employees ���̺��� department_id �� 100�� ������ ���ؼ�
-- ���� ��¥ / hire data ������ ���� ���� ����϶�. 
SELECT MONTHS_BETWEEN(SYSDATE,hire_date)
FROM employees
WHERE department_id = 100 ; 

-- employees ���̺��� employees_id �� 100�� 106 ������ ������ 
-- hire_date �� 3������ ���Ѱ��� ���
SELECT ADD_MONTHS(hire_date,3)
FROM employees
WHERE (100 <= employee_id) AND (employee_id <= 106) ; 

-- employees ���̺� ���� employee_id �� 100~106 �� ������ 
-- hire_date���� ���� ����� �ݿ����� ��¥�� �������� 
SELECT NEXT_DAY(hire_date,'�ݿ���')
FROM employees
WHERE employee_id >= 100 AND employee_id <= 106 ; 

-- employess ���̺��� employee)id �� 100~106 �� ������
-- hire_date �� �������� �ش���� ������ ��¥ ���
SELECT LAST_DAY(hire_date) 
FROM employees
WHERE 100 <= employee_id AND employee_id <= 106 ; 

-- employees ���̺���, employee_id �� 100~106 ������ ������ hire_date �� ����
-- �� ���� �ݿø� /�� ���� ������ ����϶�
SELECT TRUNC(hire_date,'YEAR' ),
       ROUND(hire_date,'MONTH'),
       hire_date
FROM employees
WHERE 100 <= employee_id and employee_id <= 106 ; 

SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD HH:MI:SS'),
       SYSDATE
FROM DUAL ; 

SELECT TO_CHAR(SYSDATE,'"��¥" YYYY/MM/DD "�ð�" HH:MI:SS'),
       SYSDATE
FROM DUAL ; 
