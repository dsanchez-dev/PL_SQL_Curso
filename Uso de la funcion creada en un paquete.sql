SET SERVEROUTPUT ON
DECLARE
    V1 VARCHAR2(100);
BEGIN
    --EN LA VARIABLE V1 SE ACCEDE A LA FUNCION CREADA EN EL PAQUETE PKG1, ENVIANDO 2 PARAMETROS
    V1:=PKG1.CONVERT('AAAA','U');
    DBMS_OUTPUT.PUT_LINE(V1);
END;
/
SELECT
    --AL USAR EL SELECT SE ACCEDE A LA FUNCION CREADA EN EL PAQUETE PKG1, ENVIANDO 2 PARAMETROS
    first_name,pkg1.convert(FIRST_NAME,'L'), pkg1.convert(LAST_NAME,'U')
FROM
    employees;