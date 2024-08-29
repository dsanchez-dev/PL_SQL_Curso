SET SERVEROUTPUT ON
DECLARE
   EMPL EMPLOYEES%ROWTYPE;
   CODE NUMBER;
   MESSAGE VARCHAR2(100);
BEGIN
   SELECT * INTO EMPL FROM EMPLOYEES; 
    DBMS_OUTPUT.PUT_LINE(EMPL.SALARY);--Que finalidad tiene esta linea? R: Imprimir el salario del empleado
EXCEPTION   
   WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLCODE);--SQLCODE: DEVUELVE EL CODIGO DE ERROR
        DBMS_OUTPUT.PUT_LINE(SQLERRM);--SQLERRM: DEVUELVE EL MENSAJE DE ERROR
        CODE:=SQLCODE;--SE ASIGNA EL CODIGO DE ERROR A LA VARIABLE CODE
        MESSAGE:=SQLERRM;--SE ASIGNA EL MENSAJE DE ERROR A LA VARIABLE MESSAGE
        INSERT INTO ERRORS VALUES (CODE,MESSAGE);--SE INSERTA EL COD DE ERROR Y EL MENSAJE DE ERROR EN LA TABLA ERRORS
        COMMIT;--SE HACE UN COMMIT PARA GUARDAR LOS CAMBIOS
END;