SET SERVEROUTPUT ON;

DECLARE 
    TYPE notas_map IS TABLE OF NOTAS%ROWTYPE INDEX BY PLS_INTEGER;
    nts notas_map;
BEGIN 
    nts(1).NOMBRE :='HOLA';

    DBMS_OUTPUT.PUT_LINE(nts (1));

END;
/