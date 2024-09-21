--Comprobar estado de los trigger: es fundamental para saber si un trigger esta habilitado o deshabilitado
desc user_triggers;
--En este query se muestra el estado de los triggers
SELECT trigger_name, trigger_type, triggering_event, action_type, trigger_body
FROM user_triggers;
--Por que se hace uso de OBJECT_NAME? R: Para saber el nombre del objeto asi como su tipo y estado
SELECT OBJECT_NAME, OBJECT_TYPE, STATUS
FROM USER_OBJECTS
WHERE OBJECT_TYPE='TRIGGER'; --Se usa para saber el estado de los triggers
--Por que se uso COMPILE? R: Para compilar el trigger, es decir, para verificar si no hay errores en el trigger
--Que se pretende con el uso de COMPILE? R: Se pretende verificar si no hay errores en el trigger
ALTER TRIGGER TR1_REGION COMPILE;
SELECT * FROM USER_ERRORS;

ALTER TRIGGER TR1_REGION DISABLE;

SELECT TRIGGER_NAME, STATUS
FROM USER_TRIGGERS;

ALTER TRIGGER TR1_REGION ENABLE;
