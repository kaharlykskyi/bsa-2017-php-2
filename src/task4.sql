UPDATE users u 
LEFT JOIN bookings b ON u.id = b.user_id 
SET u.is_deleted = 1 
WHERE b.ticket_id IS NULL;
