SELECT project.project_id, project.project_name, travel_option.type_of_travel_medium
FROM project
INNER JOIN project_location
ON project.project_location_id = project_location.project_location_id
INNER JOIN travel_option
ON project_location.project_location_id = travel_option.project_location_id
WHERE project.project_name = 'Indonesia Summer 2001';