CREATE OR REPLACE PROCEDURE PROC1 IS V NUMBER : =0; 
BEGIN 
	DBMS_OUTPUT.PUT_LINE(V);
	SELECT COUNT(*) INTO V FROM EMPLOYEES;
	DBMS_OUTPUT.PUT_LINE(V);
END; 

/

ALTER PROCEDURE PROC1 COMPILE DEBUG;

SELECT * FROM USER_PLSQL_OBJECT_SETTINGS WHERE NAME='PROC1';

ALTER PROCEDURE PROC1 COMPILE;