SELECT volunteer.name, project.project_name
FROM volunteer
INNER JOIN travel_booking
ON volunteer.volunteer_id = travel_booking.volunteer_id
INNER JOIN travel_option
ON travel_booking.travel_id = travel_option.travel_id
INNER JOIN project_location
ON travel_option.project_location_id = project_location.project_location_id
INNER JOIN project
ON project_location.project_location_id = project.project_location_id;