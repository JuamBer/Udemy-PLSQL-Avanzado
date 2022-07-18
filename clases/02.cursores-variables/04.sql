SET SERVEROUTPUT ON;

DECLARE
-- CURSOR C1 IS SELECT * FROM EMPLOYEE;
    TYPE CURSOR_VARIABLE IS REF CURSOR RETURN EMPLEADOS%ROWTYPE;
    V1 CURSOR_VARIABLE;
    V2 CURSOR_VARIABLE;
   
    empleados_array EMPLEADOS%ROWTYPE;
    
BEGIN
    --ABRIMOS EL CURSOR CON LA PRIMERA VARIABLE
    OPEN V1 FOR SELECT * FROM EMPLEADOS ORDER BY NOMBRE;
    FETCH V1 INTO empleados_array;
    DBMS_OUTPUT.PUT_LINE(empleados_array.NOMBRE||' '||empleados_array.SALARIO);
    
    --ASIGNAMOS V1 A V2
    V2:=V1;
    FETCH V2 INTO empleados_array;
    DBMS_OUTPUT.PUT_LINE(empleados_array.NOMBRE||' '||empleados_array.SALARIO);
    
    FETCH V1 INTO empleados_array;
    DBMS_OUTPUT.PUT_LINE(empleados_array.NOMBRE||' '||empleados_array.SALARIO);
    
    FETCH V2 INTO empleados_array;
    DBMS_OUTPUT.PUT_LINE(empleados_array.NOMBRE||' '||empleados_array.SALARIO);
   
    CLOSE V1;
END;