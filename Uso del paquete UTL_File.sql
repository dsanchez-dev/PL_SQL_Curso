--USO DE UTL_FILE PARA LEER UN ARCHIVO DE TEXTO Y GUARDARLO EN UNA TABLA
set serveroutput on
create or replace PROCEDURE read_file IS

string VARCHAR2(32767); 
Vfile UTL_FILE.FILE_TYPE; 

BEGIN 
-- Open FILE
--Aqui se debe poner el nombre del directorio donde se encuentra el archivo  y el nombre del archivo a leer  
Vfile := UTL_FILE.FOPEN('EXERCISES','f1.txt','R');
Loop
    begin
        --read line: 
        UTL_FILE.GET_LINE(Vfile,string); 
        INSERT INTO F1 VALUES(string);--se inserta en la tabla F1
     EXCEPTION
          WHEN NO_DATA_FOUND THEN EXIT; --si no hay mas lineas se sale del loop
    end;
end loop;
-- close file
UTL_FILE.FCLOSE(Vfile);

END;
