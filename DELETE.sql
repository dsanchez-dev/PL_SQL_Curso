--DELETE
DECLARE
    T TEST.C1%TYPE;
BEGIN
    T:=20;
    DELETE FROM TEST WHERE C1=T;
    COMMIT;
END;
/ --ESTA BARRA SE USA PARA SEPARAR EL BLOQUE DE CODIGO DE LA EJECUCION

SELECT * FROM TEST; --PARA VERIFICAR QUE SE ELIMINO EL REGISTRO