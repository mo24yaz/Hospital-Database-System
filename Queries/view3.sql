CREATE VIEW nurse_tasks as
SELECT n.nurse_id,
		n.name as nurse_name,
		p.description as order_description,
		e.execution,
		e.status
FROM execute_order e
JOIN nurse n ON e.nurse_id = n.nurse_id
JOIN physician_order p ON e.order_id = p.order_id;


SELECT * FROM hospital.nurse_tasks;