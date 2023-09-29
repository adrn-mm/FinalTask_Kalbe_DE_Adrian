SELECT Item_name, Item_total, Item_price 
FROM Inventory
WHERE Item_total = (SELECT MAX(Item_total) FROM Inventory);