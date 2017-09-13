/* Drop */
DROP TABLE volunteer CASCADE CONSTRAINTS;
DROP TABLE skill CASCADE CONSTRAINTS;
DROP TABLE vol_skill CASCADE CONSTRAINTS;
DROP TABLE project CASCADE CONSTRAINTS;
DROP TABLE task CASCADE CONSTRAINTS;
DROP TABLE skill_task CASCADE CONSTRAINTS;
DROP TABLE task_activity CASCADE CONSTRAINTS;
DROP TABLE project_contact CASCADE CONSTRAINTS;
DROP TABLE travel_booking CASCADE CONSTRAINTS;
DROP TABLE travel_option CASCADE CONSTRAINTS;
DROP TABLE project_location CASCADE CONSTRAINTS;

/* Create */
CREATE TABLE volunteer(
    volunteer_id VARCHAR(10),
    title VARCHAR2(5),
    name VARCHAR2(30),
    universityRefNo VARCHAR2(10),
    address_line_1 VARCHAR2(12),
    postcode VARCHAR2(12),
    mobile_number VARCHAR2(12),
    home_number VARCHAR2(12),
    email VARCHAR2(30),
    ethnic_group VARCHAR2(10),
    volunteer_type VARCHAR2(10),
    register_disable VARCHAR2(3),
    gender VARCHAR2(1),
    medical_details VARCHAR2(20),
    passport_number NUMBER(10),
    nationality VARCHAR2(10),
    passport_expiry_date NUMBER(10),
    date_of_birth VARCHAR2(10),
    course_name VARCHAR2(20),
    course_year VARCHAR2(10),
    area_of_work VARCHAR2(15),
    staff_manager_name VARCHAR2(20),
    staff_manager_email VARCHAR2(20),
    staff_manager_phone VARCHAR2(12),
    PRIMARY KEY (volunteer_id),
    team_leader VARCHAR(10) REFERENCES volunteer(volunteer_id)
);


CREATE TABLE skill(
    skill_id NUMBER(5),
    skill_name VARCHAR2(35),
    PRIMARY KEY (skill_id)
);

CREATE TABLE vol_skill(
    vol_skill_id NUMBER(5),
    volunteer_id VARCHAR(10) REFERENCES volunteer(volunteer_id),
    skill_id NUMBER(5) REFERENCES skill(skill_id),
    PRIMARY KEY (vol_skill_id)
);

CREATE TABLE project_location(
    project_location_id NUMBER(5),
    location VARCHAR2(30),
    latitude VARCHAR2(2),
    project_cost NUMBER(10),
    avg_climate NUMBER(10),
    region VARCHAR2(10),
    country VARCHAR2(10),
    food_preferences VARCHAR2(20),
    PRIMARY KEY (project_location_id)
);


CREATE TABLE project(
    project_id NUMBER(5),
    project_name VARCHAR2(50),
    project_type VARCHAR2(50),
    start_date VARCHAR2(15),
    end_date VARCHAR2(15),
    project_cost NUMBER(7),
    visa_required VARCHAR2(3),
    special_requirement VARCHAR2(50),
    CRB_check_required VARCHAR2(3),
    CRB_check_completed VARCHAR2(15),
    driving_insurance_covered VARCHAR2(15),
    government_funded VARCHAR2(15),
    criminal_sentance VARCHAR2(50),
    external_sponsor VARCHAR2(15),
    private_sponsor VARCHAR2(15),
    conservation_class VARCHAR2(3),
    impact_analysis_required VARCHAR2(3),
    project_location_id NUMBER(5) REFERENCES project_location(project_location_id),
    PRIMARY KEY (project_id)
);

CREATE TABLE task(
    task_id NUMBER(5),
    description VARCHAR2(35),
    start_date VARCHAR2(15),
    end_date VARCHAR2(15),
    suggested_duration VARCHAR2(15),
    PRIMARY KEY (task_id),
    project_id NUMBER(5) REFERENCES project(project_id)
);

CREATE TABLE skill_task(
    task_skill_id NUMBER(5),
    task_id NUMBER(5) REFERENCES task(task_id),
    skill_id NUMBER(5) REFERENCES skill(skill_id),
    PRIMARY KEY (task_skill_id)
);

CREATE TABLE task_activity(
    activity_id NUMBER(5),
    activity_description VARCHAR2(20),
    activity_day VARCHAR2(10),
    activity_date DATE,
    task_id NUMBER(5) REFERENCES task(task_id),
    PRIMARY KEY(activity_id)
);

CREATE TABLE project_contact(
    project_contact_id NUMBER(5),
    contact_name VARCHAR2(20),
    email VARCHAR2(30),
    phone_number VARCHAR2(20),
    job_title VARCHAR2(20),
    project_id NUMBER(5) REFERENCES project(project_id),
    PRIMARY KEY (project_contact_id)
);


CREATE TABLE travel_option(
    travel_id NUMBER(5),
    type_of_travel_medium VARCHAR2(30),
    details_of_travel VARCHAR2(30),
    project_location_id NUMBER(5),
    PRIMARY KEY (travel_id),
    FOREIGN KEY (project_location_id)
    REFERENCES project_location(project_location_id)
);

CREATE TABLE travel_booking(
    booking_id NUMBER(5),
    booking_date NUMBER(15),
    ticket_price VARCHAR2(20),
    description VARCHAR2(30),
    travel_id NUMBER(5) REFERENCES travel_option(travel_id),
    volunteer_id VARCHAR(10) REFERENCES volunteer(volunteer_id),
    PRIMARY KEY (booking_id)
);


  