select avg(popularity), location from facebook_employees e join facebook_hack_survey h on e.id=h.employee_id group by location;
