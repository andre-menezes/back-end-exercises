USE Pixar;

SELECT 
    m.title AS Filme,
    b.domestic_sales AS 'Vendas Nacionais',
    b.international_sales AS 'Vendas Internacionais'
FROM
    Movies AS m
        INNER JOIN
    BoxOffice AS b ON b.movie_id = m.id;
