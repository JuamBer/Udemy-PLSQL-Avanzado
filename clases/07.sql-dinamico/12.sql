CREATE OR REPLACE PROCEDURE BUSCAR_EMPLEADO1(SALARIO NUMBER)
IS
    ID_CURSOR INTEGER;
    NUM_FILAS INTEGER;
    NOMBRE VARCHAR2(100);
    APELLIDO VARCHAR2(100);
BEGIN

    ID_CURSOR:=DBMS_SQL.OPEN_CURSOR;
    DBMS_SQL.PARSE(ID_CURSOR, 'SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEES WHERE SALARY > :SALARIO', DBMS_SQL.NATIVE);
    DBMS_SQL.DEFINE_COLUMN(ID_CURSOR, 1, NOMBRE, 20);
    DBMS_SQL.DEFINE_COLUMN(ID_CURSOR, 2, APELLIDO, 20);
    
    DBMS_SQL.BIND_VARIABLE(ID_CURSOR,':SALARIO',SALARIO);
    
    NUM_FILAS:=DBMS_SQL.EXECUTE(ID_CURSOR);
    
    LOOP
        IF DBMS_SQL.FETCH_ROWS(ID_CURSOR) = 0 THEN
            EXIT;
        END IF;
    
        DBMS_SQL.COLUMN_VALUE(ID_CURSOR, 1, NOMBRE);
        DBMS_SQL.COLUMN_VALUE(ID_CURSOR, 2, APELLIDO);
        DBMS_OUTPUT.PUT_LINE('NOMBRE:'||NOMBRE||' Y EL APELLIDO ES '||APELLIDO);
    END LOOP;
        
    DBMS_SQL.CLOSE_CURSOR(ID_CURSOR);
END;
/


SET SERVEROUTPUT ON
BEGIN
   BUSCAR_EMPLEADO1(5000);
END;