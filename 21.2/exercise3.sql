USE Pixar;

SELECT 
    m.title AS Filme, b.rating AS 'Avaliação'
FROM
    Movies AS m
        INNER JOIN
    BoxOffice AS b ON b.movie_id = m.id
ORDER BY b.rating DESC;
