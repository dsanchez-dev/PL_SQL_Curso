INSERT INTO HR.REGIONS VALUES(1050,'REGION6');
COMMIT;

UPDATE HR.REGIONS SET REGION_ID=1102 WHERE REGION_ID=1101;
COMMIT;

UPDATE HR.REGIONS SET REGION_NAME='REGION90' WHERE REGION_ID=1101;
COMMIT;