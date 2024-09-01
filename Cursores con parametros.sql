--CURSORES CON PARAMETROS
DECLARE
    CURSOR C1(SAL NUMBER) IS SELECT * FROM EMPLOYEES 
    WHERE SALARY > SAL;
    emp1 EMPLOYEES%ROWTYPE;
BEGIN
OPEN C1(8000);
    DBMS_OUTPUT.PUT_LINE('ID'||' '||'NOMBRE'||' '||'APELLIDO'||' '||'SALARIO');
    LOOP
        FETCH C1 INTO emp1;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('--------------------------');
        DBMS_OUTPUT.PUT_LINE(emp1.employee_id||' '|| emp1.FIRST_NAME || ' ' || emp1.LAST_NAME || ': $' || emp1.SALARY);
    END LOOP;
    --crea una salida con formato de los datos encontrados: nombre y apellido del empleado
        DBMS_OUTPUT.PUT_LINE('--------------------------');
        DBMS_OUTPUT.PUT_LINE('
        Empleados encontrados: ' || C1%ROWCOUNT || ' empleados');
    CLOSE C1;
END;
