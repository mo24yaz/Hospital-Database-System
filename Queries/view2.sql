CREATE VIEW order_status as
SELECT p.order_id,
		p.description,
		n.name as nurse_name,
		e.execution,
		e.status
FROM execute_order e
JOIN nurse n ON e.nurse_id = n.nurse_id
JOIN physician_order p ON e.order_id = p.order_id;


SELECT * FROM hospital.order_status;