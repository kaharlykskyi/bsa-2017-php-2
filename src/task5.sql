SELECT u.*, COUNT(t.id) AS count FROM users u 
LEFT JOIN bookings b ON u.id = b.user_id 
LEFT JOIN tickets t ON t.id = b.ticket_id AND t.country = 'Aruba' 
GROUP BY u.id 
HAVING count = 0;
