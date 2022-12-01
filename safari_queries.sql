-- queries go here
	-- - The names of the animals in a given enclosure

SELECT animals.name AS Animal_name, enclosures.name AS Enclosure_name FROM animals 
join enclosures on animals.enclosure_id = enclosures.id
WHERE enclosure_id = 1;

	-- - The names of the staff working in a given enclosure

SELECT staff.name AS staff_name, enclosures.name AS enclosure_name FROM assignments 
JOIN staff ON assignments.employee_id = staff.id 
JOIN enclosures ON assignments.enclosure_id = enclosures.id
WHERE enclosure_id = 2;