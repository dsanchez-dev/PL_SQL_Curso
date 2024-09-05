--Parametros de tipo IN: Este tipo no se puede modificar, solo se puede leer
CREATE OR REPLACE PROCEDURE CALC_TAX
(EMPL IN EMPLOYEES.EMPLOYEE_ID%TYPE, 
    T1 IN NUMBER)
IS 
    TAX NUMBER:=0;--IMPUESTOS
    SAL NUMBER:=0;--SALARIO
BEGIN
    IF T1 < 0 OR T1 > 60 THEN
        RAISE_APPLICATION_ERROR(-20001,'EL Porcentaje debe estar entre 0 y 60');
    END IF;
    SELECT SALARY INTO SAL FROM EMPLOYEES WHERE EMPLOYEE_ID=EMPL;
    TAX:=SAL*T1/100;
    DBMS_OUTPUT.PUT_LINE('Salario: ' || SAL);
    DBMS_OUTPUT.PUT_LINE('El impuesto es: ' || TAX);
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No se encontro el empleado');
END;