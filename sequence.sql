/* Sequence */
DROP SEQUENCE volunteer_id_seq;
CREATE SEQUENCE volunteer_id_seq
   START WITH     1
   INCREMENT BY   1
   NOCACHE
   NOCYCLE;

DROP SEQUENCE  project_contact_id_seq;
CREATE SEQUENCE project_contact_id_seq
   START WITH     1
   INCREMENT BY   1
   NOCACHE
   NOCYCLE;

DROP SEQUENCE skill_id_seq;
   CREATE SEQUENCE skill_id_seq
   START WITH 1
   INCREMENT BY 1
   NOCACHE
   NOCYCLE;

DROP SEQUENCE  vol_skill_id_seq;
   CREATE SEQUENCE vol_skill_id_seq
   START WITH     1
   INCREMENT BY   1
   NOCACHE
   NOCYCLE;

DROP SEQUENCE  project_location_seq;
   CREATE SEQUENCE project_location_seq
   START WITH     1
   INCREMENT BY   1
   NOCACHE
   NOCYCLE;

DROP SEQUENCE  project_id_seq;
   CREATE SEQUENCE project_id_seq
   START WITH     1
   INCREMENT BY   1
   NOCACHE
   NOCYCLE;

DROP SEQUENCE  task_id_seq;
   CREATE SEQUENCE task_id_seq
   START WITH     1
   INCREMENT BY   1
   NOCACHE
   NOCYCLE;
   
DROP SEQUENCE  task_skill_id_seq;
   CREATE SEQUENCE task_skill_id_seq
   START WITH     1
   INCREMENT BY   1
   NOCACHE
   NOCYCLE;


DROP SEQUENCE  travel_id_seq;
   CREATE SEQUENCE  travel_id_seq
   START WITH     1
   INCREMENT BY   1
   NOCACHE
   NOCYCLE;
   
DROP SEQUENCE  booking_id_seq;
   CREATE SEQUENCE booking_id_seq
   START WITH     1
   INCREMENT BY   1
   NOCACHE
   NOCYCLE;
   
DROP SEQUENCE  activity_id_seq;
   CREATE SEQUENCE activity_id_seq
   START WITH     1
   INCREMENT BY   1
   NOCACHE
   NOCYCLE;