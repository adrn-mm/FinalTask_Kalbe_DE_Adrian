DELETE FROM Inventory
WHERE Item_total = (SELECT min_total FROM (SELECT MIN(Item_total) AS min_total FROM Inventory) AS subquery);