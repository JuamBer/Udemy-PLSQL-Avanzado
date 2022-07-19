--BIND_ARRAY
DECLARE
    ID_CURSOR INTEGER;
    NUM_FILAS INTEGER;

    CODIGOS DBMS_SQL.NUMBER_TABLE;  --
    REGIONES DBMS_SQL.VARCHAR2_TABLE;
BEGIN
    CODIGOS(1):=10;
    CODIGOS(2):=20;
    CODIGOS(3):=30;
    REGIONES(1):='AUSTRALIA';
    REGIONES(2):='ANTARTIDA';
    REGIONES(3):='NUEVA ZELANDA';
    
    ID_CURSOR:=DBMS_SQL.OPEN_CURSOR;
    DBMS_SQL.PARSE(ID_CURSOR, 'INSERT INTO REGIONES VALUES (:COD,:REG)', DBMS_SQL.NATIVE);
    
    DBMS_SQL.BIND_ARRAY(ID_CURSOR,':COD',CODIGOS);
    DBMS_SQL.BIND_ARRAY(ID_CURSOR,':REG',REGIONES);
    
    NUM_FILAS:=DBMS_SQL.EXECUTE(ID_CURSOR);
    DBMS_SQL.CLOSE_CURSOR(ID_CURSOR);
END;
/

SELECT * FROM REGIONES;