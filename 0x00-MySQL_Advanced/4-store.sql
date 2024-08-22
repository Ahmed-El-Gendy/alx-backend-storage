CREATE TRIGGER decreases AFRER INSERT ON orders FOR EACH ROW
UPDATE items
SET quantity = quantity - NEW.quantity
WHERE name = NEW.item_name;