CREATE TABLE PRUEBA (C1 NUMBER,C2 NUMBER);
SELECT * FROM USER_OBJECTS WHERE OBJECT_NAME LIKE 'PRUEBA%';
CREATE VIEW PRUEBA_V AS SELECT C1 FROM PRUEBA;
ALTER TABLE PRUEBA MODIFY C2 VARCHAR2(100); -- VÁLIDO
ALTER TABLE PRUEBA MODIFY C1 VARCHAR2(100); -- INVÁLIDO
SELECT * FROM PRUEBA_V; --ORACLE ARREGLA EL INVÁLID ATOMÁTICAMENTE
ALTER TABLE PRUEBA DROP COLUMN C1; --ORACLE NO PUEDE ARREGLARLO POR SI SOLO