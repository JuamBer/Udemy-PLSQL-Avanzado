DESC user_objects;

SELECT * FROM USER_OBJECTS;

SELECT STATUS, COUNT(*) FROM USER_OBJECTS GROUP BY STATUS;

SELECT * FROM USER_OBJECTS WHERE STATUS='INVALID';