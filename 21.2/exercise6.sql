USE Pixar;

-- SUBQUERY
SELECT 
    title
FROM
    Movies
WHERE
    id IN (SELECT 
            movie_id
        FROM
            BoxOffice
        WHERE
            rating > 7.5);

-- INNER JOIN
SELECT 
    m.title
FROM
    Movies AS m
        INNER JOIN
    BoxOffice AS b ON b.movie_id = m.id
WHERE
    b.rating > 7.5;
