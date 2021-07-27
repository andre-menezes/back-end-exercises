USE Pixar;

SELECT 
    m.title AS Filme, b.international_sales AS 'Vendas Internacionais', b.domestic_sales AS 'Vendas Nacionais'
FROM
    Movies AS m
        INNER JOIN
    BoxOffice AS b
ON
    b.international_sales > b.domestic_sales;
