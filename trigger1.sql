CREATE OR REPLACE TRIGGER volunteer_trigger
BEFORE INSERT ON Volunteer
FOR EACH ROW
BEGIN
:NEW.volunteer_id:=volunteer_id_seq.NEXTVAL;
END;