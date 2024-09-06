ALTER TABLE sales ALTER COLUMN rating TYPE NUMERIC(3, 1);

\copy sales FROM 'C:\Users\Emad Mohsen\Downloads\working projects\Sql Project\WalmartSalesData.csv.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');