--Uso del paquete PKG1
SET SERVEROUTPUT ON
BEGIN
--Para acceder a una variable de un paquete, se usa el nombre del paquete seguido de un punto y el nombre de la variable
    PKG1.V1:=100;
    PKG1.V2:='HOLA';
    DBMS_OUTPUT.PUT_LINE('La variable V1 (PKG1) es: ' || PKG1.V1);
    DBMS_OUTPUT.PUT_LINE('La variable V2 (PKG1) es: ' || PKG1.V2);
END;