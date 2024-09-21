desc user_triggers;

SELECT trigger_name, trigger_type, triggering_event, action_type, trigger_body
FROM user_triggers;

SELECT OBJECT_NAME, OBJECT_TYPE, STATUS
FROM USER_OBJECTS
WHERE OBJECT_TYPE='TRIGGER';