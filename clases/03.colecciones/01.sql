SET SERVEROUTPUT ON;

DECLARE 
    TYPE empleados_map IS TABLE OF EMPLEADOS.NOMBRE%TYPE INDEX BY PLS_INTEGER;
    TYPE empleados_map_v IS TABLE OF EMPLEADOS.NOMBRE%TYPE INDEX BY VARCHAR(2);
    emp empleados_map;
    emp_v empleados_map_v;
    
    TYPE notas_map IS TABLE OF NOTAS%ROWTYPE INDEX BY PLS_INTEGER;
    nts notas_map;
BEGIN 
    emp(1):='HOLA';
    emp(2):='ADIOS';
    emp(50):='OTRO VALOR';

    DBMS_OUTPUT.PUT_LINE(emp(1));
    DBMS_OUTPUT.PUT_LINE(emp(2));
    DBMS_OUTPUT.PUT_LINE(emp(50));
    
    emp_v('AA') := 'Juan';
    DBMS_OUTPUT.PUT_LINE(emp_v('AA'));

END;
/