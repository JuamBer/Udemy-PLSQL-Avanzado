CREATE OR REPLACE PROCEDURE CREAR_TABLA(TABLA VARCHAR2, COLUMNAS VARCHAR2)
AUTHID CURRENT_USER
IS
    ID_CURSOR INTEGER;
    NUM_FILAS INTEGER;
BEGIN
    ID_CURSOR:=DBMS_SQL.OPEN_CURSOR;
    -- CREATE TABLE T1 ( CODIGO NUMBER )
    DBMS_SQL.PARSE(ID_CURSOR, 'CREATE TABLE '||TABLA||'('||COLUMNAS||')',DBMS_SQL.NATIVE);
    NUM_FILAS:=DBMS_SQL.EXECUTE(ID_CURSOR);
    DBMS_SQL.CLOSE_CURSOR(ID_CURSOR);
    DBMS_OUTPUT.PUT_LINE(NUM_FILAS);
END;
/

BEGIN
    CREAR_TABLA('T1','CODIGO NUMBER, DATOS VARCHAR2(100)');
END;
/

DESC T1;
