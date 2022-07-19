CREATE TABLE
    CONTROL_ERRORES (
        USUARIO VARCHAR2(100),
        MENSAJE_ERROR VARCHAR2(100),
        COMANDO_SQL VARCHAR2(1000),
        FECHA DATE
    );

/*
 ORA_NAME_LIST_T IS TABLE OF VARCHAR2(64)
 ora_sysevent
 ora_login_user
 ora_instance_num
 ora_database_name
 ora_server_error****
 ora_server_error_depth
 ora_server_error_msg (position in binary_integer).
 ora_sql_txt (sql_text out ora_name_list_t)
 ora_is_servererror
 ora_space_error_info
 */

CREATE OR REPLACE TRIGGER CAPTURAR_ERRORES AFTER SERVERERROR 
ON DATABASE DECLARE SQL_TEXT ORA_NAME_LIST_T; MENSAJE 
VARCHAR2(2000) : =NULL; COMANDO VARCHAR2(200) : =NULL; 
BEGIN 
	FOR X IN 1..ORA_SERVER_ERROR_DEPTH
	LOOP
	    MENSAJE := MENSAJE || ORA_SERVER_ERROR_MSG(X);
	E 
END LOOP; 

FOR I IN 1..ORA_SQL_TXT(SQL_TEXT)
LOOP
    COMANDO := COMANDO || SQL_TEXT(I);

END LOOP;

INSERT INTO CONTROL_ERRORES
VALUES (
        ORA_LOGIN_USER,
        MENSAJE,
        COMANDO,
        SYSDATE
    );

END;

/

SELECT * FROM XXXXX;

SELECT * FROM CONTROL_ERRORES;