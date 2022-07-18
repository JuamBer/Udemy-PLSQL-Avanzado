CREATE OR REPLACE PROCEDURE PROC1 IS 
BEGIN 
	NULL;
END; 

/

CREATE OR REPLACE PROCEDURE PROC2 IS 
BEGIN 
	PROC1;
END; 

/

SELECT * FROM USER_OBJECTS WHERE OBJECT_NAME LIKE 'PROC%';

SELECT * FROM USER_DEPENDENCIES WHERE NAME='PROC1';

SELECT * FROM USER_DEPENDENCIES WHERE NAME='PROC2';

ALTER PROCEDURE PROC2 COMPILE;