CREATE OR REPLACE PROCEDURE PROC1 IS NUM_EMPLE NUMBER; 
BEGIN 
	SELECT COUNT(*) INTO NUM_EMPLE FROM EMPLOYEES;
	DBMS_OUTPUT.PUT_LINE(NUM_EMPLE);
END; 
/