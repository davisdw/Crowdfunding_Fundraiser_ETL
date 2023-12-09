--Creating Tables and importing csv data files

--Drops table if Exists

--Creating Tables 

DROP TABLE IF EXISTS campaign;
CREATE TABLE campaign(
					 cf_id INT PRIMARY KEY NOT NULL,
					 contact_id INT NOT NULL, 
					 company_name varchar,
					 description varchar,
					 goal float,
					 pledged float,
					 outcome varchar,
					 backers_count int,
					 country varchar(2),
					 currency varchar(3),
					 launch_date date NOT NULL,
					 end_date date NOT NULL,
					 category_id varchar NOT NULL, 
					 subcategory_id varchar NOT NULL,
					 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
					 FOREIGN KEY (category_id) REFERENCES category(category_id),
					 FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
					 );

DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts (
					  contact_id INT PRIMARY KEY NOT NULL,
					  first_name varchar,
					  last_name varchar, 
					  email varchar
					  );
					  
DROP TABLE IF EXISTS category;					  
CREATE TABLE category(
					  category_id VARCHAR PRIMARY KEY NOT NULL,
					  category varchar
					 );

DROP TABLE IF EXISTS subcategory;					 
CREATE TABLE subcategory(
						 subcategory_id VARCHAR PRIMARY KEY NOT NULL,
						 subcategory varchar
						);
						
						
--Importing the CSV Data Files 
--Test Query data to verify 

SELECT * FROM campaign LIMIT 10;
SELECT * FROM contacts LIMIT 10;
SELECT * FROM category LIMIT 10;
SELECT * FROM subcategory LIMIT 10;