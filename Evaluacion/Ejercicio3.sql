SELECT m.membership_status, g.membership_id from get_fit_now_member m
JOIN get_fit_now_check_in g on g.membership_id = m.id
where m.membership_status is NULL