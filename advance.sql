USE Tokopee;

-- Trigger: Create a trigger that automatically updates the inventory level of a product
-- whenever a transaction (sale or return) involving that product is recorded.
CREATE TRIGGER onInvoiceDetailInsertQty
    AFTER INSERT
    ON InvoiceDetail
    FOR EACH ROW
BEGIN
    DECLARE v_status ENUM ('SHIPPED', 'RETURN');

    SELECT Status
    INTO v_status
    FROM Invoice
    WHERE InvoiceId = NEW.InvoiceId;

    IF v_status = 'RETURN' THEN
        UPDATE Stock
        SET StockQty = StockQty + NEW.InvoiceQty
        WHERE StockId = NEW.StockId;
    ELSE
        UPDATE Stock
        SET StockQty = StockQty - NEW.InvoiceQty
        WHERE StockId = NEW.StockId;
    END IF;
END;

CREATE TRIGGER onInvoiceDetailDeleteQty
    AFTER DELETE
    ON InvoiceDetail
    FOR EACH ROW
BEGIN
    DECLARE v_status ENUM ('SHIPPED', 'RETURN');

    SELECT Status
    INTO v_status
    FROM Invoice
    WHERE InvoiceId = OLD.InvoiceId;

    IF v_status = 'RETURN' THEN
        UPDATE Stock
        SET StockQty = StockQty - OLD.InvoiceQty
        WHERE StockId = OLD.StockId;
    ELSE
        UPDATE Stock
        SET StockQty = StockQty + OLD.InvoiceQty
        WHERE StockId = OLD.StockId;
    END IF;
END;

CREATE TRIGGER onInvoiceDetailUpdateQty
    AFTER UPDATE
    ON InvoiceDetail
    FOR EACH ROW
BEGIN
    DECLARE v_status ENUM ('SHIPPED', 'RETURN');

    SELECT Status
    INTO v_status
    FROM Invoice
    WHERE InvoiceId = OLD.InvoiceId;

    IF v_status = 'RETURN' THEN
        UPDATE Stock
        SET StockQty = StockQty - OLD.InvoiceQty
        WHERE StockId = OLD.StockId;

        UPDATE Stock
        SET StockQty = StockQty + NEW.InvoiceQty
        WHERE StockId = NEW.StockId;
    ELSE
        UPDATE Stock
        SET StockQty = StockQty + OLD.InvoiceQty
        WHERE StockId = OLD.StockId;

        UPDATE Stock
        SET StockQty = StockQty - NEW.InvoiceQty
        WHERE StockId = NEW.StockId;
    END IF;
END;


-- Stored Procedure: Create a stored procedure named GetCustomerInvoiceHistory that
-- accepts a CustomerID as input and returns a complete list of all invoices
-- (including the date and total value) belonging to that customer.
CREATE PROCEDURE GetCustomerInvoiceHistory(IN p_CustomerID VARCHAR(20))
BEGIN
    SELECT InvoiceId,
           InvoiceDate,
           GrandTotal,
           Status
    FROM Invoice
    WHERE CustomerId = p_CustomerID
    ORDER BY InvoiceDate DESC;
END