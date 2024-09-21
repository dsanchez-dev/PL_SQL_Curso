--Prueba del trigger de tipo compound
ALTER TRIGGER TR1_REGION DISABLE;--Se deshabilita el trigger
INSERT INTO REGIONS VALUES(9001,'REGION9001');--Se inserta un registro en la tabla regions
UPDATE REGIONS SET REGION_NAME='AAA'; --Se actualiza el nombre de la region
COMMIT;--Se confirma la transaccion