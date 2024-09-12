--FUNCION CON PAQUETE: SE USA PARA CONVERTIR UNA CADENA DE CARACTERES A MAYUSCULAS O MINUSCULAS--
CREATE OR REPLACE PACKAGE PKG1
IS 
    FUNCTION CONVERT (NAME VARCHAR2, CONVERSION_TYPE CHAR) RETURN VARCHAR2;
END;
/

CREATE OR REPLACE PACKAGE BODY PKG1
--LAS PRESENTES FUNCIONES SON DE TIPO PRIVADO, NO SE PUEDEN USAR FUERA DEL PAQUETE
--ESPECIFICAMENTE EN EL BODY DEL PAQUETE
IS 
    FUNCTION UPPER_NAME(NAME VARCHAR2)
    RETURN VARCHAR2
IS  
BEGIN
    RETURN UPPER(NAME);
END UPPER_NAME;

FUNCTION LOWER_NAME(NAME VARCHAR2)
    RETURN VARCHAR2
    IS 
    BEGIN
        RETURN LOWER(NAME);
    END LOWER_NAME;
--LA FUNCION CONVERT SE USA PARA CONVERTIR UNA CADENA DE CARACTERES A MAYUSCULAS O MINUSCULAS
FUNCTION CONVERT (NAME VARCHAR2, CONVERSION_TYPE CHAR)
    RETURN VARCHAR2
    IS
    BEGIN
        IF CONVERSION_TYPE = 'U' THEN
            RETURN UPPER_NAME(NAME);--SE LLAMA A LA FUNCION UPPER_NAME AL PASARLE EL PARAMETRO NAME
        ELSIF CONVERSION_TYPE = 'L' THEN
            RETURN LOWER_NAME(NAME);--SE LLAMA A LA FUNCION LOWER_NAME AL PASARLE EL PARAMETRO NAME
        ELSE
            RETURN 'EL PARAMETRO DEBE SER U O L';
        END IF;
    END CONVERT;
END PKG1;