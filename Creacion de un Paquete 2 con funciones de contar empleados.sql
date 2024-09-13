CREATE OR REPLACE 
PACKAGE PACK2 AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */
  FUNCTION COUNT_EMPLOYEES(ID NUMBER) RETURN NUMBER;
  FUNCTION COUNT_EMPLOYEES(ID VARCHAR2) RETURN NUMBER;
END PACK2;
/
CREATE OR REPLACE
PACKAGE BODY PACK2 AS

  FUNCTION COUNT_EMPLOYEES(ID NUMBER) RETURN NUMBER AS
  X NUMBER;
  BEGIN
    -- TODO: Implementation required for FUNCTION PACK2.COUNT_EMPLOYEES
    SELECT COUNT(*) INTO X FROM EMPLOYEES WHERE DEPARTMENT_ID=ID;
    RETURN X;
  END COUNT_EMPLOYEES;

  FUNCTION COUNT_EMPLOYEES(ID VARCHAR2) RETURN NUMBER AS
  X NUMBER;
  BEGIN
    -- TODO: Implementation required for FUNCTION PACK2.COUNT_EMPLOYEES
    SELECT COUNT(*) INTO X FROM EMPLOYEES A, DEPARTMENTS B
         WHERE DEPARTMENT_NAME=ID
         AND A.DEPARTMENT_ID=B.DEPARTMENT_ID;
       
    RETURN X;
  END COUNT_EMPLOYEES;

END PACK2;