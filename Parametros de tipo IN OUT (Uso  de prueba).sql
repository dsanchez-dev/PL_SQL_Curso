SET SERVEROUTPUT ON
DECLARE
    A NUMBER;
    B NUMBER;
BEGIN
    A:=120;
    B:=10;
    CALC_TAX_IN_OUT(A,B);
    DBMS_OUTPUT.PUT_LINE('B= ' || B);
END;
/