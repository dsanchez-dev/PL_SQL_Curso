DECLARE
    COL1 TEST.C1%TYPE;
BEGIN
    COL1:=20;
    INSERT INTO TEST (C1,C2) VALUES (COL1,'BBBB');
    COMMIT;
END;
     