-- Simpan nilai Item_name dari subquery dalam variabel sementara
SELECT Item_name INTO @item_name
FROM Inventory
WHERE Item_total = (SELECT MAX(Item_total) FROM Inventory);

-- Update Item_price dengan nilai baru
UPDATE Inventory
SET Item_price = 85000
WHERE Item_name = @item_name;