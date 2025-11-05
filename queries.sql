USE Tokopee;

-- Intial Customer Insert
# Amount of Customer 5942 + 1 (default)
SELECT COUNT(DISTINCT (TRIM(CustomerID))) AS NumberOfCustomer
FROM dirtydata
WHERE CustomerID IS NOT NULL;

INSERT INTO Customer(CustomerId, CustomerName, CustomerCountry, CustomerAddress)
SELECT TRIM(CustomerID)   AS CustomerID,
       ANY_VALUE(
               CONCAT(
                       CASE (CAST(TRIM(CustomerID) AS UNSIGNED) DIV 100)
                           WHEN 123 THEN 'Aiden'
                           WHEN 124 THEN 'Olivia'
                           WHEN 125 THEN 'Liam'
                           WHEN 126 THEN 'Emma'
                           WHEN 127 THEN 'Noah'
                           WHEN 128 THEN 'Ava'
                           WHEN 129 THEN 'Ethan'
                           WHEN 130 THEN 'Sophia'
                           WHEN 131 THEN 'Mason'
                           WHEN 132 THEN 'Isabella'
                           WHEN 133 THEN 'Lucas'
                           WHEN 134 THEN 'Mia'
                           WHEN 135 THEN 'Elijah'
                           WHEN 136 THEN 'Amelia'
                           WHEN 137 THEN 'James'
                           WHEN 138 THEN 'Harper'
                           WHEN 139 THEN 'Benjamin'
                           WHEN 140 THEN 'Evelyn'
                           WHEN 141 THEN 'Henry'
                           WHEN 142 THEN 'Abigail'
                           WHEN 143 THEN 'Alexander'
                           WHEN 144 THEN 'Ella'
                           WHEN 145 THEN 'William'
                           WHEN 146 THEN 'Grace'
                           WHEN 147 THEN 'Daniel'
                           WHEN 148 THEN 'Scarlett'
                           WHEN 149 THEN 'Matthew'
                           WHEN 150 THEN 'Lily'
                           WHEN 151 THEN 'Michael'
                           WHEN 152 THEN 'Aria'
                           WHEN 153 THEN 'Caleb'
                           WHEN 154 THEN 'Zoe'
                           WHEN 155 THEN 'Logan'
                           WHEN 156 THEN 'Chloe'
                           WHEN 157 THEN 'Jack'
                           WHEN 158 THEN 'Nora'
                           WHEN 159 THEN 'Samuel'
                           WHEN 160 THEN 'Hazel'
                           WHEN 161 THEN 'Leo'
                           WHEN 162 THEN 'Layla'
                           WHEN 163 THEN 'Owen'
                           WHEN 164 THEN 'Riley'
                           WHEN 165 THEN 'Isaac'
                           WHEN 166 THEN 'Violet'
                           WHEN 167 THEN 'Julian'
                           WHEN 168 THEN 'Penelope'
                           WHEN 169 THEN 'Carter'
                           WHEN 170 THEN 'Luna'
                           WHEN 171 THEN 'Ryan'
                           WHEN 172 THEN 'Ellie'
                           WHEN 173 THEN 'Nathan'
                           WHEN 174 THEN 'Mila'
                           WHEN 175 THEN 'Dylan'
                           WHEN 176 THEN 'Aurora'
                           WHEN 177 THEN 'Gabriel'
                           WHEN 178 THEN 'Stella'
                           WHEN 179 THEN 'Sebastian'
                           WHEN 180 THEN 'Leah'
                           WHEN 181 THEN 'Luke'
                           WHEN 182 THEN 'Natalie'
                           ELSE 'Kael'
                           END,
                       ' ',
                       CASE (CAST(TRIM(CustomerID) AS UNSIGNED) MOD 100)
                           WHEN 0 THEN 'Smith'
                           WHEN 1 THEN 'Johnson'
                           WHEN 2 THEN 'Williams'
                           WHEN 3 THEN 'Brown'
                           WHEN 4 THEN 'Jones'
                           WHEN 5 THEN 'Garcia'
                           WHEN 6 THEN 'Miller'
                           WHEN 7 THEN 'Davis'
                           WHEN 8 THEN 'Rodriguez'
                           WHEN 9 THEN 'Martinez'
                           WHEN 10 THEN 'Hernandez'
                           WHEN 11 THEN 'Lopez'
                           WHEN 12 THEN 'Gonzalez'
                           WHEN 13 THEN 'Wilson'
                           WHEN 14 THEN 'Anderson'
                           WHEN 15 THEN 'Thomas'
                           WHEN 16 THEN 'Taylor'
                           WHEN 17 THEN 'Moore'
                           WHEN 18 THEN 'Jackson'
                           WHEN 19 THEN 'Martin'
                           WHEN 20 THEN 'Lee'
                           WHEN 21 THEN 'Perez'
                           WHEN 22 THEN 'Thompson'
                           WHEN 23 THEN 'White'
                           WHEN 24 THEN 'Harris'
                           WHEN 25 THEN 'Sanchez'
                           WHEN 26 THEN 'Clark'
                           WHEN 27 THEN 'Ramirez'
                           WHEN 28 THEN 'Lewis'
                           WHEN 29 THEN 'Robinson'
                           WHEN 30 THEN 'Walker'
                           WHEN 31 THEN 'Young'
                           WHEN 32 THEN 'Allen'
                           WHEN 33 THEN 'King'
                           WHEN 34 THEN 'Wright'
                           WHEN 35 THEN 'Scott'
                           WHEN 36 THEN 'Torres'
                           WHEN 37 THEN 'Nguyen'
                           WHEN 38 THEN 'Hill'
                           WHEN 39 THEN 'Flores'
                           WHEN 40 THEN 'Green'
                           WHEN 41 THEN 'Adams'
                           WHEN 42 THEN 'Nelson'
                           WHEN 43 THEN 'Baker'
                           WHEN 44 THEN 'Hall'
                           WHEN 45 THEN 'Rivera'
                           WHEN 46 THEN 'Campbell'
                           WHEN 47 THEN 'Mitchell'
                           WHEN 48 THEN 'Carter'
                           WHEN 49 THEN 'Roberts'
                           WHEN 50 THEN 'Gomez'
                           WHEN 51 THEN 'Phillips'
                           WHEN 52 THEN 'Evans'
                           WHEN 53 THEN 'Turner'
                           WHEN 54 THEN 'Diaz'
                           WHEN 55 THEN 'Parker'
                           WHEN 56 THEN 'Cruz'
                           WHEN 57 THEN 'Edwards'
                           WHEN 58 THEN 'Collins'
                           WHEN 59 THEN 'Reyes'
                           WHEN 60 THEN 'Stewart'
                           WHEN 61 THEN 'Morris'
                           WHEN 62 THEN 'Morales'
                           WHEN 63 THEN 'Murphy'
                           WHEN 64 THEN 'Cook'
                           WHEN 65 THEN 'Rogers'
                           WHEN 66 THEN 'Gutierrez'
                           WHEN 67 THEN 'Ortiz'
                           WHEN 68 THEN 'Morgan'
                           WHEN 69 THEN 'Cooper'
                           WHEN 70 THEN 'Peterson'
                           WHEN 71 THEN 'Bailey'
                           WHEN 72 THEN 'Reed'
                           WHEN 73 THEN 'Kelly'
                           WHEN 74 THEN 'Howard'
                           WHEN 75 THEN 'Ramos'
                           WHEN 76 THEN 'Kim'
                           WHEN 77 THEN 'Cox'
                           WHEN 78 THEN 'Ward'
                           WHEN 79 THEN 'Richardson'
                           WHEN 80 THEN 'Watson'
                           WHEN 81 THEN 'Brooks'
                           WHEN 82 THEN 'Chavez'
                           WHEN 83 THEN 'Wood'
                           WHEN 84 THEN 'James'
                           WHEN 85 THEN 'Bennett'
                           WHEN 86 THEN 'Gray'
                           WHEN 87 THEN 'Mendoza'
                           WHEN 88 THEN 'Ruiz'
                           WHEN 89 THEN 'Hughes'
                           WHEN 90 THEN 'Price'
                           WHEN 91 THEN 'Alvarez'
                           WHEN 92 THEN 'Castillo'
                           WHEN 93 THEN 'Sanders'
                           WHEN 94 THEN 'Patel'
                           WHEN 95 THEN 'Myers'
                           WHEN 96 THEN 'Long'
                           WHEN 97 THEN 'Ross'
                           WHEN 98 THEN 'Foster'
                           WHEN 99 THEN 'Jimenez'
                           ELSE 'Ohtani'
                           END
               )
       )                  AS CustomerName,
       ANY_VALUE(Country) AS CustomerCountry,
       ANY_VALUE(CONCAT(
               CASE (CAST(TRIM(CustomerID) AS UNSIGNED) DIV 100)
                   WHEN 123 THEN 'Maple'
                   WHEN 124 THEN 'Oak'
                   WHEN 125 THEN 'Pine'
                   WHEN 126 THEN 'Cedar'
                   WHEN 127 THEN 'Elm'
                   WHEN 128 THEN 'Willow'
                   WHEN 129 THEN 'Aspen'
                   WHEN 130 THEN 'Birch'
                   WHEN 131 THEN 'Sycamore'
                   WHEN 132 THEN 'Cherry'
                   WHEN 133 THEN 'Chestnut'
                   WHEN 134 THEN 'Laurel'
                   WHEN 135 THEN 'Magnolia'
                   WHEN 136 THEN 'Hawthorn'
                   WHEN 137 THEN 'Juniper'
                   WHEN 138 THEN 'Alder'
                   WHEN 139 THEN 'Ash'
                   WHEN 140 THEN 'Redwood'
                   WHEN 141 THEN 'Spruce'
                   WHEN 142 THEN 'Cypress'
                   WHEN 143 THEN 'Meadow'
                   WHEN 144 THEN 'River'
                   WHEN 145 THEN 'Hill'
                   WHEN 146 THEN 'Lake'
                   WHEN 147 THEN 'Valley'
                   WHEN 148 THEN 'Forest'
                   WHEN 149 THEN 'Garden'
                   WHEN 150 THEN 'Park'
                   WHEN 151 THEN 'Sunset'
                   WHEN 152 THEN 'Morning'
                   WHEN 153 THEN 'Silver'
                   WHEN 154 THEN 'Golden'
                   WHEN 155 THEN 'Crimson'
                   WHEN 156 THEN 'Emerald'
                   WHEN 157 THEN 'Shadow'
                   WHEN 158 THEN 'Whisper'
                   WHEN 159 THEN 'Autumn'
                   WHEN 160 THEN 'Summer'
                   WHEN 161 THEN 'Winter'
                   WHEN 162 THEN 'Spring'
                   WHEN 163 THEN 'Fox'
                   WHEN 164 THEN 'Raven'
                   WHEN 165 THEN 'Eagle'
                   WHEN 166 THEN 'Hawk'
                   WHEN 167 THEN 'Deer'
                   WHEN 168 THEN 'Wolf'
                   WHEN 169 THEN 'Bear'
                   WHEN 170 THEN 'Meadowbrook'
                   WHEN 171 THEN 'Stone'
                   WHEN 172 THEN 'Iron'
                   WHEN 173 THEN 'Crystal'
                   WHEN 174 THEN 'Coral'
                   WHEN 175 THEN 'Harbor'
                   WHEN 176 THEN 'Ocean'
                   WHEN 177 THEN 'Sandy'
                   WHEN 178 THEN 'Windy'
                   WHEN 179 THEN 'Frost'
                   WHEN 180 THEN 'Clear'
                   WHEN 181 THEN 'Starlight'
                   WHEN 182 THEN 'Moonlight'
                   WHEN 183 THEN 'Highland'
                   WHEN 184 THEN 'Lowland'
                   ELSE 'Jakarta'
                   END, ' ',
               CASE (CAST(TRIM(CustomerID) AS UNSIGNED) MOD 100)
                   WHEN 0 THEN 'Street'
                   WHEN 1 THEN 'Avenue'
                   WHEN 2 THEN 'Road'
                   WHEN 3 THEN 'Lane'
                   WHEN 4 THEN 'Drive'
                   WHEN 5 THEN 'Court'
                   WHEN 6 THEN 'Way'
                   WHEN 7 THEN 'Trail'
                   WHEN 8 THEN 'Path'
                   WHEN 9 THEN 'Place'
                   WHEN 10 THEN 'Circle'
                   WHEN 11 THEN 'Boulevard'
                   WHEN 12 THEN 'Terrace'
                   WHEN 13 THEN 'Crescent'
                   WHEN 14 THEN 'Heights'
                   WHEN 15 THEN 'View'
                   WHEN 16 THEN 'Ridge'
                   WHEN 17 THEN 'Hollow'
                   WHEN 18 THEN 'Point'
                   WHEN 19 THEN 'Hill'
                   WHEN 20 THEN 'Crossing'
                   WHEN 21 THEN 'Bridge'
                   WHEN 22 THEN 'Creek'
                   WHEN 23 THEN 'Run'
                   WHEN 24 THEN 'Valley'
                   WHEN 25 THEN 'Park'
                   WHEN 26 THEN 'Glen'
                   WHEN 27 THEN 'Grove'
                   WHEN 28 THEN 'Meadow'
                   WHEN 29 THEN 'Brook'
                   WHEN 30 THEN 'Stream'
                   WHEN 31 THEN 'Pass'
                   WHEN 32 THEN 'Bluff'
                   WHEN 33 THEN 'Field'
                   WHEN 34 THEN 'Haven'
                   WHEN 35 THEN 'Summit'
                   WHEN 36 THEN 'Bend'
                   WHEN 37 THEN 'Landing'
                   WHEN 38 THEN 'Fork'
                   WHEN 39 THEN 'Cliff'
                   WHEN 40 THEN 'Corner'
                   WHEN 41 THEN 'Estate'
                   WHEN 42 THEN 'Terrace'
                   WHEN 43 THEN 'Vista'
                   WHEN 44 THEN 'Bay'
                   WHEN 45 THEN 'Harbor'
                   WHEN 46 THEN 'Island'
                   WHEN 47 THEN 'Shores'
                   WHEN 48 THEN 'Pines'
                   WHEN 49 THEN 'Woods'
                   WHEN 50 THEN 'Hills'
                   WHEN 51 THEN 'Flats'
                   WHEN 52 THEN 'Commons'
                   WHEN 53 THEN 'Gate'
                   WHEN 54 THEN 'Square'
                   WHEN 55 THEN 'Crossroad'
                   WHEN 56 THEN 'Mill'
                   WHEN 57 THEN 'Yard'
                   WHEN 58 THEN 'Lodge'
                   WHEN 59 THEN 'Manor'
                   WHEN 60 THEN 'Garden'
                   WHEN 61 THEN 'Courtway'
                   WHEN 62 THEN 'Rise'
                   WHEN 63 THEN 'Walk'
                   WHEN 64 THEN 'Loop'
                   WHEN 65 THEN 'Lookout'
                   WHEN 66 THEN 'Cross'
                   WHEN 67 THEN 'Forks'
                   WHEN 68 THEN 'Overlook'
                   WHEN 69 THEN 'Territory'
                   WHEN 70 THEN 'Trailhead'
                   WHEN 71 THEN 'Reach'
                   WHEN 72 THEN 'Cove'
                   WHEN 73 THEN 'Springs'
                   WHEN 74 THEN 'Falls'
                   WHEN 75 THEN 'Farms'
                   WHEN 76 THEN 'Oaks'
                   WHEN 77 THEN 'Landing'
                   WHEN 78 THEN 'Trace'
                   WHEN 79 THEN 'Dale'
                   WHEN 80 THEN 'Meadows'
                   WHEN 81 THEN 'Territory'
                   WHEN 82 THEN 'Creeks'
                   WHEN 83 THEN 'Hollows'
                   WHEN 84 THEN 'Havenwood'
                   WHEN 85 THEN 'Pond'
                   WHEN 86 THEN 'Village'
                   WHEN 87 THEN 'Pathway'
                   WHEN 88 THEN 'Glade'
                   WHEN 89 THEN 'Bridgeway'
                   WHEN 90 THEN 'Outlook'
                   WHEN 91 THEN 'Fieldstone'
                   WHEN 92 THEN 'Retreat'
                   WHEN 93 THEN 'Pointe'
                   WHEN 94 THEN 'Runway'
                   WHEN 95 THEN 'Summitview'
                   WHEN 96 THEN 'Harborside'
                   WHEN 97 THEN 'Hearth'
                   WHEN 98 THEN 'Foster'
                   WHEN 99 THEN 'Jimenez'
                   ELSE 'Menteng'
                   END
                 ))       AS CustomerAddress
FROM dirtydata
WHERE CustomerID IS NOT NULL
  AND TRIM(CustomerID) <> ''
GROUP BY TRIM(CustomerID)
ORDER BY CustomerID;

SELECT COUNT(CustomerID) AS NumberOfCustomerInserted
FROM Customer;

# Placeholder customer for null customer id
INSERT INTO Customer(CustomerId, CustomerName, CustomerCountry, CustomerAddress)
    VALUE ('default', 'John Doe', 'Unknown', 'Unknown');

-- Intial Stock Insert
-- Amount of Stock: 5132
SELECT COUNT(DISTINCT (StockCode)) AS NumberOfStockItem
FROM dirtydata
WHERE Price >= 0;

INSERT INTO Stock(stockid, stockdescription, stockprice, stockqty)
SELECT StockCode,
       COALESCE(UPPER(TrimmedDescription), 'UNKNOWN PRODUCT') AS Description,
       Price,
       1000                                                   AS Qty
FROM (SELECT StockCode,
             TrimmedDescription,
             Price,
             ROW_NUMBER() OVER (
                 PARTITION BY StockCode
                 ORDER BY
                     CASE
                         WHEN TrimmedDescription IS NULL OR TrimmedDescription = '' THEN 1
                         ELSE 0
                         END ASC,
                     Frequency DESC
                 ) AS RowNum
      FROM (SELECT StockCode,
                   TRIM(Description) AS TrimmedDescription,
                   MAX(Price)        AS Price,
                   COUNT(*)          AS Frequency
            FROM dirtydata
            WHERE Price >= 0
            GROUP BY StockCode, TRIM(Description)) AS grouped_data) AS ranked_data
WHERE RowNum = 1
ORDER BY Price;

SELECT COUNT(StockId)
FROM Stock;

-- Initial Invoice Insert
# Number of Unique Invoice Id: 53628
SELECT COUNT(DISTINCT (Invoice)) AS NumberOfInvoiceHeader
FROM dirtydata;

INSERT INTO Invoice(InvoiceId, CustomerId, InvoiceDate, GrandTotal, Status)
SELECT DISTINCT(Invoice)                                       AS InvoiceID,
               COALESCE(ANY_VALUE(CustomerID), 'default')      AS CustomerId,
               ANY_VALUE(InvoiceDate)                          AS InvoiceDate,
               0                                               AS GrandTotal, # This will get filled later
               IF(LEFT(Invoice, 1) = 'C', 'RETURN', 'SHIPPED') AS Status
FROM dirtydata
GROUP BY Invoice
ORDER BY InvoiceDate;

SELECT COUNT(InvoiceId) AS NumberOfInvoiceHeader
FROM Invoice;

-- Initial InvoiceDetail Insert
# Number of Invoice Detail: 1067371
SELECT COUNT(Invoice) AS NumberOfInvoiceDetail
FROM dirtydata;

INSERT INTO InvoiceDetail(InvoiceId, StockId, InvoiceQty, SubTotal, Note)
SELECT d.Invoice,
       d.StockCode,
       ABS(d.Quantity)                AS InvoiceQty,
       ABS(d.Quantity) * s.StockPrice AS SubTotal,
       ''                             AS Note
FROM dirtydata d
         JOIN Stock s
              ON s.StockId = d.StockCode
ORDER BY InvoiceDate;

SELECT COUNT(*) AS NumberOfInvoiceDetail
FROM InvoiceDetail;

# Updating the GrandTotal for each invoice
UPDATE Invoice h
    INNER JOIN (SELECT InvoiceId, SUM(SubTotal) AS GrandTotal
                FROM InvoiceDetail
                GROUP BY InvoiceId) d ON h.InvoiceId = d.InvoiceId
SET h.GrandTotal = d.GrandTotal;

-- Query 1: New Product. Add a new, never-before-seen product to the database.
INSERT INTO Stock(StockId, StockDescription, StockPrice, StockQty)
VALUES ('M0416', 'Moses Car', 100.12, 10),
       ('S0023', 'Stefanus Car', 138.44, 20),
       ('N0007', 'Nicho PC', 420.69, 100);

-- Query 2: Customer Order. Write the series of statements required for an existing customer to order two different products in a single transaction.
INSERT INTO Invoice(InvoiceId, CustomerId, InvoiceDate, GrandTotal, Status)
VALUES ('2034534', '12785', CURRENT_TIMESTAMP(), (100.12 * 5) + (420.69 * 10), 'SHIPPED');

INSERT INTO InvoiceDetail(InvoiceId, StockId, InvoiceQty, SubTotal, Note)
VALUES ('2034534', 'M0416', 5, 100.12 * 5, 'COD'),
       ('2034534', 'N0007', 10, 420.69 * 10, 'RTX5090');

UPDATE Stock
SET StockQty = StockQty - 5
WHERE StockId = 'M0416';

UPDATE Stock
SET StockQty = StockQty - 10
WHERE StockId = 'N0007';

-- Query 3: Customer Return. Write the statements required to process a return for one of the items from the order you created above.
INSERT INTO Invoice(InvoiceId, CustomerId, InvoiceDate, GrandTotal, Status)
VALUES ('C2034534', '12785', CURRENT_TIMESTAMP(), (100.12 * 5) + (420.69 * 10), 'RETURN');

INSERT INTO InvoiceDetail(InvoiceId, StockId, InvoiceQty, SubTotal, Note)
VALUES ('2034534', 'M0416', 5, 100.12 * 5, 'Broken from the start'),
       ('2034534', 'N0007', 10, 420.69 * 10, 'Super dirty');

UPDATE Stock
SET StockQty = StockQty + 5
WHERE StockId = 'M0416';

UPDATE Stock
SET StockQty = StockQty + 10
WHERE StockId = 'N0007';

-- Query 4: Analytical Report. Write a query to find the top 10 customers by total money spent.
SELECT i.CustomerId, c.CustomerName, SUM(i.GrandTotal) AS TotalSpending
FROM Invoice i
         INNER JOIN Customer c ON i.CustomerId = c.CustomerId
WHERE NOT (i.CustomerId = 'default')
  AND i.Status = 'SHIPPED'
GROUP BY i.CustomerId
ORDER BY TotalSpending DESC
LIMIT 10;

-- Query 5: Analytical Report. Write a query to identify the month with the highest total sales revenue in the year 2011.
SELECT month(InvoiceDate) as Month, sum(GrandTotal) as SalesRevenue
FROM Invoice i
where i.Status = 'SHIPPED' and year(InvoiceDate) = 2011
group by MONTH(InvoiceDate)
order by month(InvoiceDate);




