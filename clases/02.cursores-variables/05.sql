SET SERVEROUTPUT ON;

--SYS_REFCURSOR

DECLARE
    V1 SYS_REFCURSOR;
    V2 SYS_REFCURSOR;
   
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