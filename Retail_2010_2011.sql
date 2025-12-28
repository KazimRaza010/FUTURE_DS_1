use retail_2010_2011;
select * from retail_data;

-- Working on invoice
select Invoice from retail_data;

Alter table retail_data
ADD column Invoice_new INT;

update retail_data
set Invoice_new = REGEXP_REPLACE(Invoice, '^[^0-9]+','');

-- working on Description
update retail_data
set Description = TRIM(Description);

-- Working on CustomerID
Alter table retail_data
rename column `Customer ID` to CustomerID;

Alter table retail_data
modify column CustomerID INT;

-- Working with InvoiceDate
Alter table retail_data
add column InvoiceDate_new Date;

UPDATE retail_data
SET InvoiceDate_new = CASE
    WHEN InvoiceDate REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}' 
         THEN CAST(SUBSTRING_INDEX(InvoiceDate, ' ', 1) AS DATE)
         
    WHEN InvoiceDate LIKE '%/%/%' 
         THEN STR_TO_DATE(SUBSTRING_INDEX(TRIM(InvoiceDate), ' ', 1), '%m/%d/%Y')
         
    WHEN InvoiceDate LIKE '%-%-%' AND InvoiceDate NOT REGEXP '^[0-9]{4}'
         THEN STR_TO_DATE(SUBSTRING_INDEX(TRIM(InvoiceDate), ' ', 1), '%m-%d-%Y')
         
    ELSE NULL
END;