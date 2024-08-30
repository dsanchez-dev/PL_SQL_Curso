SET SERVEROUTPUT ON 
DECLARE
    --Uso de RECORD: Se usa para definir un tipo de dato que puede contener varios campos
    TYPE empleado IS RECORD(
        nombre VARCHAR2(100),
        salario NUMBER,
        fecha employees.hire_date%TYPE,
        datos employees%ROWTYPE);
    --Se define un tipo de dato empleado, que contiene los campos nombre, salario, fecha y datos
    emple1 empleado;
    emple2 empleado;
BEGIN
    SELECT * INTO emple1.datos 
        FROM EMPLOYEES 
    WHERE EMPLOYEE_ID = 100;
    --asignacion de datos
    emple1.nombre := emple1.datos.FIRST_NAME || ' ' || emple1.datos.LAST_NAME;
    emple1.salario := emple1.datos.SALARY * 0.80;
    emple1.fecha := emple1.datos.HIRE_DATE;
    
    DBMS_OUTPUT.PUT_LINE('EMPLEADO: ' || emple1.nombre);
    DBMS_OUTPUT.PUT_LINE('SALARIO: ' || emple1.salario);
    DBMS_OUTPUT.PUT_LINE('FECHA DE CONTRATACION: ' || emple1.fecha);
    --asignacion de datos, emple2 toma los datos de emple1
    emple2:=emple1;
    DBMS_OUTPUT.PUT_LINE('EMPLEADO 2:'||emple2.nombre);
END;
