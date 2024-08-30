--RAISE_APPLICATION_ERROR
DECLARE   
   regn NUMBER;
   regt varchar2(200);
BEGIN
   regn:=101;
   regt:='ASIA';
   iF regn > 100 THEN
       -- EL CODIGO DEBE ESTAR ENTRE -20000 Y -20999
       RAISE_APPLICATION_ERROR(-20001,'LA ID NO PUEDE SER MAYOR DE 100');  --RAISE_APPLICATION_ERROR: SE USA PARA LANZAR UNA EXCEPCION PERSONALIZADA
    ELSE--Si la region es menor o igual a 100, se inserta el registro en la tabla regions
       insert into regions values (regn,regt);
       commit;--Se hace un commit para guardar los cambios
    END IF;
END;
/