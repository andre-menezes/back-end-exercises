USE Pixar;

SELECT 
    t.`name`, t.location
FROM
    Theater AS t
WHERE
    EXISTS( SELECT 
            *
        FROM
            Movies AS m
        WHERE
            m.theater_id = t.id);
