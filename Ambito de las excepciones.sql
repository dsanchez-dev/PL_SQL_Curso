--Ambito de las excepciones
DECLARE
   regn NUMBER; 
   regt varchar2(200);
BEGIN--BLOQUE PADRE
   regn:=101;
   regt:='ASIA';
   DECLARE 
     reg_max EXCEPTION;
   BEGIN--BLOQUE HIJO
       IF regn > 100 THEN
             RAISE reg_max;  
       ELSE
           insert into regions values (regn,regt);
           commit;
       END IF;
    EXCEPTION 
    WHEN reg_max THEN  --Si la region es mayor a 100, se lanza la excepcion reg_max pero solo se captura en el bloque hijo  
        DBMS_OUTPUT.PUT_LINE('La region no puede ser mayor de 100.BLOQUE HIJO');
    END;
EXCEPTION
/*  WHEN reg_max THEN  
    DBMS_OUTPUT.PUT_LINE('La region no puede ser mayor de 100.');*/
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error indefinido');
END;