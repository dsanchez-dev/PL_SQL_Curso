DECLARE
    X NUMBER;
BEGIN
    UPDATE TEST SET C2='PPPP' WHERE C1=100;
    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT);
    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('ENCONTRADO');
        END IF;
        IF SQL%NOTFOUND THEN
            DBMS_OUTPUT.PUT_LINE('NO ENCONTRADO');
        END IF;
        --SELECT C1 INTO X FROM TEST WHERE C1=100;
       /* No se puede usar SQL%FOUND o SQL%NOTFOUND con SELECT INTO, 
        se debe usar una excepcion para manejar el error
        IF SQL%FOUND THEN
            DBMS_OUTPUT.PUT_LINE('FILA ENCONTRADA');
        END IF; */
END;