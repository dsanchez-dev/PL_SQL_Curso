CREATE OR REPLACE TRIGGER trigger1
FOR DELETE OR INSERT OR UPDATE ON regions
COMPOUND TRIGGER
    --1
    BEFORE STATEMENT IS BEGIN 
        INSERT INTO LOG_TABLES VALUES('ANTES DE LA ACCION',USER);
    END BEFORE STATEMENT;
    --2
    AFTER STATEMENT IS BEGIN 
        INSERT INTO LOG_TABLES VALUES('DESPUES DE LA ACCION',USER);
    END AFTER STATEMENT;
    --3
    BEFORE EACH ROW IS BEGIN 
        INSERT INTO LOG_TABLES VALUES('ANTES DE CADA FILA',USER);
    END BEFORE EACH ROW;
    --4
    AFTER EACH ROW IS BEGIN 
        INSERT INTO LOG_TABLES VALUES('DESPUES DE CADA FILA',USER);
    END AFTER EACH ROW;
END trigger1;
