-- Revenue by product
SELECT produkt, SUM(cena * ilosc) AS przychod
FROM sales
GROUP BY produkt
ORDER BY przychod DESC;

-- Revenue by region
SELECT region, SUM(cena * ilosc) AS przychod
FROM sales
GROUP BY region
ORDER BY przychod DESC;

-- Large vs small orders analysis
SELECT 
    CASE 
        WHEN ilosc >= 5 THEN 'duze'
        ELSE 'male'
    END AS typ,
    SUM(cena * ilosc) AS przychod
FROM sales
GROUP BY typ;

-- Top product in each region
SELECT s.region, s.produkt, SUM(s.cena*s.ilosc) AS przychod
FROM sales s
GROUP BY s.region, s.produkt
HAVING przychod = (
    SELECT MAX(przychod)
    FROM (
        SELECT region, produkt, SUM(cena*ilosc) AS przychod
        FROM sales
        GROUP BY region, produkt
    ) t
    WHERE t.region = s.region
);
