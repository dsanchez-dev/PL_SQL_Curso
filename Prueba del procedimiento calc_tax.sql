SET SERVEROUTPUT ON
DECLARE
    A NUMBER;
    B NUMBER;
BEGIN
    A:=120;
    B:=500;
    calc_tax(A,B);
END;