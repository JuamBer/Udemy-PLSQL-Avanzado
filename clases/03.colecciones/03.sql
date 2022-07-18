SET SERVEROUTPUT ON
DECLARE
  TYPE EMPLEADOS_MAP IS TABLE OF EMPLEADOS%ROWTYPE INDEX BY PLS_INTEGER;
  CURSOR CUR_EMP IS SELECT * FROM EMPLEADOS;
  Z PLS_INTEGER:=1;
  
  EMPLES EMPLEADOS_MAP;
  
BEGIN
  FOR EMP1 IN CUR_EMP LOOP
    EMPLES(Z):=EMP1;
    Z:=Z+1;
  END LOOP;
  FOR I IN 1..Z-1 LOOP
    DBMS_OUTPUT.PUT_LINE(EMPLES(I).NOMBRE||' '||EMPLES(I).SALARIO);
  END LOOP;  
END;
/