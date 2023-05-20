/*Which Laptop brand has highest number of ratingss */

SELECT brand,"Number of Ratings" FROM public."Laptop_prices" 
where "Number of Ratings"=(select max("Number of Ratings") from public."Laptop_prices");

/* Which laptop brand has 3 years of warranty */

SELECT brand,"warranty" FROM public."Laptop_prices" 
where "warranty"= '3 years';

/* The laptop brands which have most and least ssd storage */

SELECT brand,"ssd" FROM public."Laptop_prices" 
where "ssd"= (select max("ssd") from public."Laptop_prices");

SELECT brand,"ssd" FROM public."Laptop_prices" 
where "ssd"= (select min("ssd") from public."Laptop_prices");

/* How many laptop brands use AMD processor */

SELECT count(brand) FROM public."Laptop_prices" 
where "processor_brand"='AMD';


/* Which laptop brand has highest price */

SELECT brand,"Price" FROM public."Laptop_prices" 
where "Price"= (select max("Price") from public."Laptop_prices");


/* How many laptop brands have more than 2gb graphic card */

SELECT count(brand) FROM public."Laptop_prices" 
where "graphic_card_gb" > '2 GB';


/* Name the laptop brands which uses DOS as a operating system */

SELECT brand,"os" FROM public."Laptop_prices" 
where "os" = 'DOS';


/* Name the laptop brands which has highest harddisk */

SELECT distinct(brand),"hdd" FROM public."Laptop_prices" 
where "hdd" = (select max("hdd") from public."Laptop_prices") limit 5;

/* List out the laptop brands which has the feature touch-screen */

SELECT brand,"Touchscreen" FROM public."Laptop_prices" 
where "Touchscreen" = 'Yes' limit 5;

/* List out the rows have the features of brand=HP,processor_brand=intel,processor_name=i5 and ssd=512 gb */

SELECT * FROM public."Laptop_prices" 
where "brand"='HP' and "processor_brand"='Intel' and "processor_name"='Core i5' and "ssd"='512 GB';

/* Write a query to identify the laptop brands which has 16 gb of RAM */

SELECT distinct(brand),"ram_gb" FROM public."Laptop_prices" 
where "ram_gb"='16 GB';

/* Identify the laptop brands which the laptop price is more than 500000 */

SELECT brand,"Price" FROM public."Laptop_prices" 
where "Price"> '500000';

/* Write a query with a condition of rating=4 stars and process_name=i3 */

SELECT * FROM public."Laptop_prices" 
where "rating" = '4 stars' and "processor_name" = 'Core i3';

/* Write a query with a condition of brand=acer and processor_brand=AMD */

SELECT * FROM public."Laptop_prices" 
where "brand" = 'acer' and "processor_brand" = 'AMD';

/* Write a query with a condition of os_bit=64-bit and ms_office=yes */

SELECT * FROM public."Laptop_prices" 
where "os_bit" = '64-bit' and "msoffice" = 'Yes';