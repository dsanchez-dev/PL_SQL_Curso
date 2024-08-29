--EXCEPCIONES NO DEFINIDAS
DECLARE
    MI_EXCEP EXCEPTION;
    PRAGMA EXCEPTION_INIT(MI_EXCEP, -937); --PRAGMA: SE USA PARA ASIGNAR UN CODIGO DE ERROR A UNA EXCEPCION
    V1 NUMBER;
    V2 NUMBER;
BEGIN
    SELECT EMPLOYEE_ID, SUM(SALARY) INTO V1, V2 FROM EMPLOYEES;
    dbms_output.put_line(V1);
    EXCEPTION
    WHEN MI_EXCEP THEN
        dbms_output.put_line('ERROR: ' || SQLERRM);
    WHEN OTHERS THEN
        dbms_output.put_line('ERROR DESCONOCIDO');
END;