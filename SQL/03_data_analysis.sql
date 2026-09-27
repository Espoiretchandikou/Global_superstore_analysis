--GLOBAL SUPERSTORE_ANALYSE COMMERCIALE
-- 1. KPI globaux
SELECT
    ROUND(SUM(sales), 2) AS chiffre_affaires,
    ROUND(SUM(profit), 2) AS profit_total,
    COUNT(DISTINCT order_id) AS nombre_commandes,
    COUNT(DISTINCT customer_id) AS nombre_clients
FROM superstore_clean;

-- 2. Performance annuelle
SELECT
    EXTRACT(YEAR FROM order_date) AS annee,
    ROUND(SUM(sales), 2) AS chiffre_affaires,
    ROUND(SUM(profit), 2) AS profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS marge_pct
FROM superstore_clean
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY annee;

-- 3. Performance par catégorie
SELECT
    category,
    ROUND(SUM(sales), 2) AS chiffre_affaires,
    ROUND(SUM(profit), 2) AS profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS marge_pct
FROM superstore_clean
GROUP BY category
ORDER BY chiffre_affaires DESC;

-- 4. Performance par sous-catégorie
SELECT
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS chiffre_affaires,
    ROUND(SUM(profit), 2) AS profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS marge_pct
FROM superstore_clean
GROUP BY category, sub_category
ORDER BY category, chiffre_affaires DESC;

-- 5. Analyse de la sous-catégorie Tables
SELECT
    ROUND(AVG(discount) * 100, 2) AS remise_moyenne_pct,
    ROUND(SUM(sales), 2) AS chiffre_affaires,
    ROUND(SUM(profit), 2) AS profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS marge_pct
FROM superstore_clean
WHERE sub_category = 'Tables';

-- 6. Rentabilité des Tables selon le niveau de remise
SELECT
    CASE
        WHEN discount = 0 THEN '0%'
        WHEN discount <= 0.10 THEN '0-10%'
        WHEN discount <= 0.20 THEN '10-20%'
        WHEN discount <= 0.30 THEN '20-30%'
        WHEN discount <= 0.40 THEN '30-40%'
        ELSE '>40%'
    END AS tranche_remise,
    COUNT(*) AS nb_lignes,
    ROUND(SUM(sales), 2) AS ca,
    ROUND(SUM(profit), 2) AS profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS marge_pct
FROM superstore_clean
WHERE sub_category = 'Tables'
GROUP BY 1
ORDER BY 1;

-- 7. Top 10 clients par chiffre d'affaires
SELECT
    customer_id,
    customer_name,
    ROUND(SUM(sales), 2) AS chiffre_affaires,
    ROUND(SUM(profit), 2) AS profit,
    COUNT(DISTINCT order_id) AS nombre_commandes
FROM superstore_clean
GROUP BY customer_id, customer_name
ORDER BY chiffre_affaires DESC
LIMIT 10;

-- 8. Segmentation clients
SELECT
    segment,
    ROUND(SUM(sales), 2) AS ca,
    ROUND(SUM(profit), 2) AS profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS marge_pct,
    COUNT(DISTINCT order_id) AS nombre_commandes,
    COUNT(DISTINCT customer_id) AS nombre_clients
FROM superstore_clean
GROUP BY segment
ORDER BY ca DESC;

-- 9. CA moyen par client et par commande
SELECT
    segment,
    ROUND(SUM(sales) / COUNT(DISTINCT customer_id), 2)
        AS ca_moyen_par_client,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2)
        AS ca_moyen_par_commande
FROM superstore_clean
GROUP BY segment
ORDER BY ca_moyen_par_client DESC;
