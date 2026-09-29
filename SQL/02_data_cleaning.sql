select count(*)
from raw_superstore;

create table superstore_clean as 
select*
from raw_superstore
	where Sales is not null
	and Quantity is not null
	and Profit is not null
	and Shipping_cost is not null
	and Discount is not null;

Vérification du nombre de lignes après nettoyage
SELECT COUNT(*)
FROM superstore_clean;


-- Vérification des dates incohérentes
-- La date d'expédition ne doit pas être antérieure
-- à la date de commande
SELECT COUNT(*) AS anomalies_dates
FROM superstore_clean
WHERE ship_date < order_date;


--Vérification des valeurs de remise, une remise doit être comprise entre 0 et 1 (0% à 100%)

SELECT COUNT(*) AS anomalies_discount
FROM superstore_clean
WHERE discount < 0
   OR discount > 1;

--Vérification des ventes négatives
SELECT COUNT(*) AS ventes_negatives
FROM superstore_clean
WHERE sales < 0;

--Vérification des quantités invalides
SELECT COUNT(*) AS quantites_invalides
FROM superstore_clean
WHERE quantity <= 0;

--Vérification des valeurs de profit manquantes
SELECT COUNT(*) AS anomalies_profit
FROM superstore_clean
WHERE profit IS NULL;

--Vérification des doublons sur Row_ID
SELECT COUNT(*) - COUNT(DISTINCT row_id) AS doublons_row_id
FROM superstore_clean;
