SET SERVEROUTPUT ON
DECLARE
    EMPL EMPLOYEES%ROWTYPE;
BEGIN
    SELECT * INTO EMPL
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = 100;
    --CASOS DE USO CON EXCEPCIONES
    --WHERE EMPLOYEE_ID = 1000; --PARA PROBAR EL NO_DATA_FOUND
    --WHERE EMPLOYEE_ID = 100 OR EMPLOYEE_ID = 101; --PARA PROBAR EL TOO_MANY_ROWS
    --WHERE EMPLOYEE_ID = 100/0; --PARA PROBAR EL ZERO_DIVIDE
    --WHERE EMPLOYEE_ID = 100; --PARA PROBAR EL DUP_VAL_ON_INDEX
    dbms_output.put_line(EMPL.FIRST_NAME);    
    EXCEPTION 
    --TIPOS DE EXCEPCIONES CON SU RESPECTIVO CASO DE USO
    --EXCEPTIONS COMUNES PREDEFINIDAS POR ORACLE:
    --NO_DATA_FOUND (ORACLE-01403): ES CUANDO NO SE ENCUENTRA EL REGISTRO
    --TOO_MANY_ROWS: ES CUANDO SE ENCUENTRAN MAS DE UN REGISTRO
    --ZERO_DIVIDE: ES CUANDO SE DIVIDE ENTRE 0
    --DUP_VAL_ON_INDEX: ES CUANDO SE INTENTA INSERTAR UN REGISTRO DUPLICADO
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('NO SE ENCONTRO EL REGISTRO');
    WHEN TOO_MANY_ROWS THEN
        dbms_output.put_line('SE ENCONTRARON MAS DE UN REGISTRO');
    WHEN ZERO_DIVIDE THEN
        dbms_output.put_line('DIVISION ENTRE 0');
    WHEN DUP_VAL_ON_INDEX THEN
        dbms_output.put_line('REGISTRO DUPLICADO');    
    WHEN OTHERS THEN
        dbms_output.put_line('ERROR DESCONOCIDO');
END;