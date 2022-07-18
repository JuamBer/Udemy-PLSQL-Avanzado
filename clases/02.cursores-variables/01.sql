SET SERVEROUT ON;
DECLARE 
    TYPE CURSOR_VARIABLE IS REF CURSOR;
    V1 CURSOR_VARIABLE;
    X1 CURSOR_VARIABLE;
    
    empleados_array EMPLEADOS%ROWTYPE;
    notas_array NOTAS%ROWTYPE;
BEGIN
    OPEN V1 FOR SELECT * FROM EMPLEADOS;
    FETCH V1 INTO empleados_array;
    
    DBMS_OUTPUT.PUT_LINE('EMPLEADOS: ');
    WHILE V1%FOUND 
        LOOP
            DBMS_OUTPUT.PUT_LINE(empleados_array.NOMBRE);
        FETCH V1 INTO empleados_array;
    END LOOP;
    
    CLOSE V1;
    
    OPEN V1 FOR SELECT * FROM NOTAS;
    FETCH V1 INTO notas_array;
    
    DBMS_OUTPUT.PUT_LINE('NOTAS: ');
    WHILE V1%FOUND 
        LOOP
            DBMS_OUTPUT.PUT_LINE(notas_array.NOMBRE);
        FETCH V1 INTO notas_array;
    END LOOP;    
    CLOSE V1;
END;
/