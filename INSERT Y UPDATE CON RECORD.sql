CREATE TABLE REGIONES AS SELECT * FROM REGIONS WHERE REGION_ID=0;

DECLARE
    REG1 REGIONS%ROWTYPE;
BEGIN
    SELECT * INTO REG1 FROM REGIONS WHERE REGION_ID=1;
    --INSERT
    INSERT INTO REGIONES VALUES REG1;
END;
/

DECLARE
    REG1 REGIONS%ROWTYPE;
    BEGIN
        REG1.REGION_ID:=1;
        REG1.REGION_NAME:='AUSTRALIA';
        
        UPDATE REGIONES SET ROW=REG1 WHERE REGION_ID=1;
END;
