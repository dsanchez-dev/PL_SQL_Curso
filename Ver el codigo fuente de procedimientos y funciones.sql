--Ver el codigo fuente de un procedimiento almacenado y funciones:
SELECT * FROM USER_OBJECTS--Aqui se muestran los procedimientos almacenados y funciones
WHERE OBJECT_TYPE='PROCEDURE';--Aqui se muestran los procedimientos almacenados

SELECT OBJECT_TYPE,COUNT(*) FROM USER_OBJECTS --Aqui se cuentan los procedimientos almacenados
GROUP BY OBJECT_TYPE; --Aqui se agrupan los procedimientos almacenados por tipo


SELECT * FROM USER_SOURCE --Generara una tabla con el codigo fuente de los procedimientos almacenados
WHERE NAME='P1'; --SIEMPRE EN MAYUSCULAS

SELECT TEXT FROM USER_SOURCE --Mostrara el codigo fuente o texto del procedimiento almacenado
WHERE NAME='P1'; --SIEMPRE EN MAYUSCULAS