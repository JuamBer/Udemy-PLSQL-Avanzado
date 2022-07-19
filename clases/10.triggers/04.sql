CREATE TABLE CONTROL_LOGINS
( 
USUARIO VARCHAR2(100),
IP VARCHAR2(100),
FECHA DATE
);

/*
ora_sysevent
ora_login_user
ora_instance_num
ora_database_name
ora_client_ip_address
*/

CREATE OR REPLACE TRIGGER LOGIN
AFTER LOGON
ON DATABASE
BEGIN
    INSERT INTO CONTROL_LOGINS VALUES(ora_login_user,ora_client_ip_address,SYSDATE);
END;
/


SELECT * FROM CONTROL_LOGINS;
