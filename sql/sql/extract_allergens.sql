SELECT 
  p.product_name, 
  i.ingredient_name, 
  a.allergen_name, 
  p.category, 
  p.stability
FROM `code-vipassana-497502.froyo_data.consistsof` c
INNER JOIN `code-vipassana-497502.froyo_data.product` p 
  ON c.product_id = p.product_id
INNER JOIN `code-vipassana-497502.froyo_data.ingredient` i 
  ON c.ingredient_id = i.ingredient_id
LEFT OUTER JOIN `code-vipassana-497502.froyo_data.containsallergen` a 
  ON i.ingredient_id = a.ingredient_id
WHERE UPPER(p.product_name) LIKE '%MIDNIGHT%SWIRL%' 
  AND a.allergen_name IS NOT NULL;
