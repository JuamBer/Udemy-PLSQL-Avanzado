CREATE TABLE PRU_LOB 
(
    CODIGO NUMBER,
    NOMBRE VARCHAR(100),
    DATOS CLOB
);

DESC PRU_LOB;

INSERT INTO PRU_LOB VALUES(1, 'PREDRO', 'ASFDASFDASDFACGGHTRHTYJFVBCV');

SELECT * FROM PRU_LOB;

ALTER TABLE PRU_LOB ADD (FOTO BLOB);

--INSERT INTO PRU_LOB VALUES(2, 'ROSA', 'ASFDASFDASDFACGGHTRHTYJFVBCV', 'KKK');
