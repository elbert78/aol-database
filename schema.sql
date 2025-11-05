CREATE DATABASE Tokopee;
USE Tokopee;

CREATE TABLE Stock
(
    StockId          VARCHAR(20)    NOT NULL PRIMARY KEY UNIQUE,
    StockDescription VARCHAR(255)   NOT NULL DEFAULT 'Unknown Product',
    StockPrice       DECIMAL(10, 2) NOT NULL DEFAULT 0,
    StockQty         INT            NOT NULL DEFAULT 0,

    CHECK (StockPrice >= 0)
);

CREATE TABLE Customer
(
    CustomerId      VARCHAR(20)  NOT NULL PRIMARY KEY UNIQUE,
    CustomerName    VARCHAR(50)  NOT NULL,
    CustomerCountry VARCHAR(50)  NOT NULL DEFAULT '',
    CustomerAddress VARCHAR(255) NOT NULL DEFAULT ''
);

CREATE TABLE Invoice
(
    InvoiceId   VARCHAR(20)                NOT NULL PRIMARY KEY UNIQUE,
    CustomerId  VARCHAR(20)                NOT NULL,
    InvoiceDate DATETIME                   NOT NULL,
    GrandTotal  DECIMAL(10, 2)             NOT NULL DEFAULT 0,
    Status      ENUM ('SHIPPED', 'RETURN') NOT NULL,

    FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerId) ON DELETE RESTRICT,

    CHECK ( GrandTotal >= 0 )
);

CREATE TABLE InvoiceDetail
(
    InvoiceId  VARCHAR(20)    NOT NULL,
    StockId    VARCHAR(20)    NOT NULL,
    InvoiceQty INT            NOT NULL DEFAULT 0,
    SubTotal   DECIMAL(10, 2) NOT NULL DEFAULT 0,
    Note       VARCHAR(255)   NOT NULL DEFAULT '',

    FOREIGN KEY (InvoiceId) REFERENCES Invoice (InvoiceId) ON DELETE CASCADE,
    FOREIGN KEY (StockId) REFERENCES Stock (StockId) ON DELETE RESTRICT,

    CHECK ( SubTotal >= 0 ),
    CHECK ( InvoiceQty > 0 )
);
