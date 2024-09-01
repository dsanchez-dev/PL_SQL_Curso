--RECORRER UN CURSOR CON UN FOR
DECLARE
    CURSOR C1 IS SELECT * FROM REGIONS;
    V1 REGIONS%ROWTYPE;
BEGIN
    OPEN C1;
        LOOP
            FETCH C1 INTO V1;
            EXIT WHEN C1%NOTFOUND;
                DBMS_OUTPUT.PUT_LINE(V1.REGION_ID || ': ' || V1.REGION_NAME);
        END LOOP;
    CLOSE C1;

    DBMS_OUTPUT.PUT_LINE('SE RECORRE CON UN FOR\n');
    ---FOR LOOP
    FOR i IN C1 LOOP
        DBMS_OUTPUT.PUT_LINE(i.REGION_ID || ': ' || i.REGION_NAME);
    END LOOP;
END;