CREATE OR REPLACE TRIGGER project_trigger
BEFORE INSERT ON project
FOR EACH ROW
BEGIN
:NEW.project_id:=project_id_seq.NEXTVAL;
END;