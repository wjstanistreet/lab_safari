-- queries go here
	-- - The names of the animals in a given enclosure
	-- - The names of the staff working in a given enclosure

SELECT animals.name AS Animal_name, enclosures.name AS Enclosure_name FROM animals 
join enclosures on animals.enclosure_id = enclosures.id
WHERE enclosure_id = 1;