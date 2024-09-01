--UPDATES Y DELETES con WHERE CURRENT OF: SE USA PARA ACTUALIZAR O ELIMINAR UN REGISTRO QUE SE ACABA DE INSERTAR
DECLARE
    emp1 EMPLOYEES%ROWTYPE;
    CURSOR cur IS SELECT * FROM EMPLOYEES FOR UPDATE;
BEGIN
    OPEN cur;
        LOOP
            FETCH cur INTO emp1;
                EXIT WHEN cur%NOTFOUND;
                IF emp1.COMMISSION_PCT IS NULL THEN
                    UPDATE employees SET SALARY = SALARY * 1.10 WHERE CURRENT OF cur;
                ELSE
                    UPDATE employees SET SALARY = SALARY * 1.15 WHERE CURRENT OF cur;
                END IF;
                --CONCATENACION, NOMBRE, APELLIDO, ID, SALARIO ACTUALIZADO
                DBMS_OUTPUT.PUT_LINE('ACTUALIZADO: ' ||'id:'||emp1.EMPLOYEE_ID ||' |nombre: '|| emp1.FIRST_NAME || ' ' || emp1.LAST_NAME || '       |salario: $' || emp1.SALARY); 
        END LOOP;
    CLOSE cur;
END;
