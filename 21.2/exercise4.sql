USE Pixar;

SELECT 
    t.`name`,
    t.location,
    m.title,
    m.director,
    m.`year`,
    m.length_minutes
FROM
    Theater AS t
        LEFT JOIN
    Movies AS m ON t.id = m.theater_id
ORDER BY t.`name`;
