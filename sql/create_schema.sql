CREATE OR REPLACE TABLE `code-vipassana-497502.froyo_data.product` AS
SELECT 'P_01' AS product_id, 'Midnight Swirl' AS product_name, 'Frozen Beverage Base' AS category, 'Shelf-stable 18 Months' AS stability;

CREATE OR REPLACE TABLE `code-vipassana-497502.froyo_data.ingredient` AS
SELECT 'I_01' AS ingredient_id, 'Midnight Base 204' AS ingredient_name;

CREATE OR REPLACE TABLE `code-vipassana-497502.froyo_data.consistsof` AS
SELECT 'P_01' AS product_id, 'I_01' AS ingredient_id;

CREATE OR REPLACE TABLE `code-vipassana-497502.froyo_data.containsallergen` AS
SELECT 'I_01' AS ingredient_id, 'Soy' AS allergen_name;
