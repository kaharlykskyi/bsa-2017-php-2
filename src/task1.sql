SELECT u.*  FROM bookings b 
JOIN tickets t ON b.ticket_id = t.id 
JOIN users u ON b.user_id = u.id 
GROUP BY b.user_id 
HAVING SUM(t.price) > 400 AND u.age > 25;

