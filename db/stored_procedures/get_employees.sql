DELIMITER //

CREATE PROCEDURE sp_get_employees()
BEGIN
    SELECT e.id AS 'Id', e.first_name AS 'First Name', e.last_name AS 'Last Name', r.title AS 'Title', d.name AS 'Department', r.salary AS 'Salary', CONCAT(m.first_name, ' ', m.last_name) as 'Manager'
    FROM employee AS e
        LEFT JOIN
        employee AS m
        ON e.manager_id = m.id
        INNER JOIN
        role AS r
        ON e.role_id = r.id
        INNER JOIN
        department as d
        ON r.department_id = d.id;
END //

DELIMITER ;