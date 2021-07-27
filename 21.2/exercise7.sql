USE Pixar;

-- SUBQUERY
SELECT 
    rating
FROM
    BoxOffice
WHERE
    movie_id IN (SELECT 
            id
        FROM
            Movies
        WHERE
            `year` > 2009);

-- INNER JOIN
SELECT 
    b.rating
FROM
    BoxOffice AS b
        INNER JOIN
    Movies AS m ON b.movie_id = m.id
WHERE
    m.`year` > 2009;
