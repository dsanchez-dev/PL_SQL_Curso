CREATE OR REPLACE TRIGGER INS_EMPL
AFTER INSERT ON REGIONS
BEGIN
    INSERT INTO LOG_TABLES VALUES('INSERCION EN LA TABLA REGIONS',USER);
END;
