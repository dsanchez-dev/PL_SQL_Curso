--Parametros de tipo OUT: Este tipo se puede modificar y leer
--Uso del procedimiento CALC_TAX con parametros de tipo OUT
SET SERVEROUTPUT ON
DECLARE
    A NUMBER;
    B NUMBER;
    R NUMBER;
BEGIN
    A:=120;
    B:=500;
    R:=0;
    calc_tax(A,B,R);
    DBMS_OUTPUT.PUT_LINE('EL IMPUESTO ES: ' || R);
END;