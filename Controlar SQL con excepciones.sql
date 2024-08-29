SET SERVEROUTPUT ON
DECLARE
  REG REGIONS%ROWTYPE;
  REG_CONTROL REGIONS.REGION_ID%TYPE;
BEGIN
   REG.REGION_ID:=1000; --Se asigna el valor 100 a la variable REGION_ID
   REG.REGION_NAME:='Africa'; --Se asigna el valor 'AFRICA' a la variable REGION_NAME
   SELECT REGION_ID INTO REG_CONTROL FROM REGIONS 
   WHERE REGION_ID=REG.REGION_ID;
   DBMS_OUTPUT.PUT_LINE('LA REGION YA EXISTE');  
EXCEPTION   
   WHEN NO_DATA_FOUND  THEN --Si no se encuentra el registro, se ejecuta el siguiente bloque, en este caso se inserta el registro
        INSERT INTO REGIONS VALUES (REG.REGION_ID,REG.REGION_NAME);
        COMMIT;
END;