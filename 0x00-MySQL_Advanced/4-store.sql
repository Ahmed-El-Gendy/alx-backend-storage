-- Create trigger

CREATE TRIGGER decrease_items_quantity AFTER INSERT ON orders
FOR EACH ROW
BEGIN
  UPDATE items
  SET quantity = quantity - NEW.quantity
  WHERE name = NEW.item_name;
END;