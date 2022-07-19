CREATE TABLE REGIONES AS SELECT * FROM REGIONS;
/

SELECT * FROM REGIONES;
/

CREATE OR REPLACE PROCEDURE MOD_COLUMNA(TABLA VARCHAR2,COLUMNA VARCHAR2, VALOR_ANTIGUO VARCHAR2, VALOR_NUEVO VARCHAR2)
AUTHID CURRENT_USER

IS
--VARIABLE PAR5A ALBERGAR EL IDE DEL CURSOR
ID_CURSOR INTEGER;
NUM_FILAS NUMBER;

BEGIN
  ID_CURSOR:=DBMS_SQL.OPEN_CURSOR;
  DBMS_SQL.PARSE(ID_CURSOR,'UPDATE ' ||TABLA ||' SET '||COLUMNA||'=:VALOR_NUEVO WHERE '||COLUMNA||'=:VALOR_ANTIGUO',DBMS_SQL.NATIVE);
  DBMS_SQL.BIND_VARIABLE(ID_CURSOR,':VALOR_ANTIGUO',VALOR_ANTIGUO);
  DBMS_SQL.BIND_VARIABLE(ID_CURSOR,':VALOR_NUEVO',VALOR_NUEVO);

  NUM_FILAS:=DBMS_SQL.EXECUTE(ID_CURSOR);
  DBMS_SQL.CLOSE_CURSOR(ID_CURSOR);
  DBMS_OUTPUT.PUT_LINE(NUM_FILAS||' MODIFICADAS');
END;
/

EXECUTE MOD_COLUMNA('REGIONES','REGION_NAME','Asia','ASIA');