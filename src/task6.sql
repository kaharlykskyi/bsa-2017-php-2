SELECT u.* FROM bookings b 
JOIN users u ON b.user_id = u.id 
JOIN tickets t ON t.id = b.ticket_id 
WHERE t.title = 'Lagos';
