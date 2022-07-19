CREATE OR REPLACE PROCEDURE CREAR_TABLA (NOMBRE_TABLA VARCHAR2, COLUMNAS VARCHAR2)
AUTHID CURRENT_USER
IS
    COMANDO VARCHAR2(100);
BEGIN
    COMANDO := 'CREATE TABLE ' || NOMBRE_TABLA || '('||COLUMNAS||')';
    EXECUTE IMMEDIATE COMANDO;
END;
/

BEGIN
    CREAR_TABLA('PRU1','CODIGO NUMBER, DATOS VARCHAR2(100)');
END;
/

