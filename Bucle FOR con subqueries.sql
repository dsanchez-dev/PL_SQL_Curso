--Buble FOR con subqueries: Se usa para recorrer los registros de una tabla
BEGIN
--POR QUE EL CURSOR SE PONE ENTRE PARENTESIS? R: Porque es una subconsulta, esto quiere decir que se esta recorriendo los registros de la tabla regions
    FOR I IN (SELECT * FROM REGIONS) LOOP 
        DBMS_OUTPUT.PUT_LINE(I.REGION_ID || ': ' || I.REGION_NAME);
    END LOOP;
END;