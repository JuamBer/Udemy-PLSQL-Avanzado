CREATE OR REPLACE TYPE DATO IS VARRAY(80) OF VARCHAR2(100);
/

DESC DATO;
/

SET SERVEROUTPUT ON
DECLARE
  DATOS DATO;
BEGIN 
  DATOS:=DATO('UNO','DOS');
  DBMS_OUTPUT.PUT_LINE(DATOS(1));
END;
/

