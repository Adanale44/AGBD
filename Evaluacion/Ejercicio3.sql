SELECT p.name, g.membership_status from person p 
LEFT JOIN get_fit_now_member g on g.person_id = p.id
WHERE membership_status is NULL