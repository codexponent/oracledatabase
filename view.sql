/* View */
DROP VIEW subsystem1View;
CREATE VIEW subsystem1View AS
SELECT volunteer.volunteer_id, volunteer.name, volunteer.email, volunteer.gender, vol_skill.vol_skill_id, vol_skill.skill_id
FROM volunteer, vol_skill
WHERE volunteer.volunteer_id = vol_skill.volunteer_id AND volunteer.team_leader = '5';

DROP VIEW subsystem2View ;
CREATE VIEW subsystem2View AS
SELECT project.project_id, project.project_name, project.start_date, project.end_date, project.project_cost, project_location.location, project_location.country
FROM project, project_location
WHERE project_location.project_location_id = project.project_location_id AND project_location.country = 'Nepal';

DROP VIEW subsystem3View;
CREATE VIEW subsystem3View AS
SELECT travel_booking.booking_id, travel_booking.volunteer_id, travel_booking.description, travel_booking.travel_id, travel_option.type_of_travel_medium, travel_option.details_of_travel
FROM travel_booking, travel_option
WHERE travel_booking.travel_id = travel_option.travel_id AND travel_option.type_of_travel_medium = 'Air';

