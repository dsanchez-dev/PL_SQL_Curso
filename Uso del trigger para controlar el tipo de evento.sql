--LOS QUERY CON HR. SE USAN PARA TRABAJAR CON LA BASE DE DATOS HR
INSERT INTO HR.REGIONS VALUES(1050,'REGION6');
COMMIT;

UPDATE HR.REGIONS SET REGION_ID=1102 WHERE REGION_ID=1101;
COMMIT;

UPDATE HR.REGIONS SET REGION_NAME='REGION90' WHERE REGION_ID=1101;
COMMIT;

UPDATE HR.REGIONS SET REGION_NAME=LOWER(REGION_NAME);
COMMIT;

UPDATE HR.REGIONS SET REGION_NAME=UPPER(REGION_NAME);
COMMIT;

INSERT INTO HR.REGIONS VALUES(1090,'region90');
COMMIT;

INSERT INTO REGIONS VALUES(85,'REGION85');
COMMIT;
--AL REALIZAR EL INSERT SE EJECUTA EL TRIGGER, SE CONVIERTE A MAYUSCULAS EL NOMBRE DE LA REGION
INSERT INTO REGIONS VALUES(1085,'REGION85');
COMMIT;
--AL HACER EL UPDATE SE EJECUTA EL TRIGGER, SE CONVIERTE A MAYUSCULAS EL NOMBRE DE LA REGION
UPDATE REGIONS SET REGION_NAME=REGION_NAME||' '||REGION_ID;
COMMIT;
