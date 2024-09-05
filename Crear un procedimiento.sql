--Proocedimientos almacenados
--Que es un procedimiento almacenado? R: Es un conjunto de instrucciones que se almacenan en la base de datos y se pueden ejecutar en cualquier momento 
CREATE PROCEDURE P1 
    IS 
    X NUMBER:=10;
BEGIN
    DBMS_OUTPUT.PUT_LINE(X);
END;


