
--EXCEPTIONS PERSONALIZADAS (NO PREDEFINIDAS)
SET SERVEROUTPUT ON
DECLARE
   reg_max EXCEPTION;
   regn NUMBER;
   regt varchar2(200);
BEGIN
   regn:=101;
   regt:='KOREA';
   IF regn > 100 THEN --Si la region es mayor a 100, se lanza la excepcion reg_max
         RAISE reg_max;  
    ELSE --Si no, se inserta el registro en la tabla regions
       insert into regions values (regn,regt);
       commit;
      END IF;
EXCEPTION
  WHEN reg_max THEN  
    DBMS_OUTPUT.PUT_LINE('La region no puede ser mayor de 100.');
  WHEN OTHERS THEN 
    DBMS_OUTPUT.PUT_LINE('Error indefinido');
END;
/