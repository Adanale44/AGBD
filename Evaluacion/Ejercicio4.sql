SELECT p.name, p.address_street_name, p.address_number from person p
JOIN interview i on i.person_id = p.id
WHERE address_street_name = "Franklin Ave"
ORDER by address_number DESC
LIMIT 1
OFFSET 2