### SQL QUESTIONS - REGRESSION PROJECT ###


# 1. Create a database called house_price_regression. Done
# 2. Create a table house_price_data with the same columns as given in the csv file. Please make sure you use the correct data types for the columns. Done
# 3. Import the data from the csv file into the table. Before you import the data into the empty table, make sure that you have deleted the headers from the csv file. To not modify the original data, if you want you can create a copy of the csv file as well. Done

# 4. Select all the data from table house_price_data to check if the data was imported correctly

SELECT *
FROM house_price_data;

# 5. Use the alter table command to drop the column date from the database, as we would not use it in the analysis with SQL. Select all the data from the table to verify if the command worked. Limit your returned results to 10.

ALTER TABLE house_price_data
DROP COLUMN date;

SELECT *
FROM house_price_data
LIMIT 10;

# 6. Use sql query to find how many rows of data you have.

SELECT COUNT(*)
FROM house_price_data;
## Result: 21597

# 7. Now we will try to find the unique values in some of the categorical columns:

# What are the unique values in the column bedrooms?
# What are the unique values in the column bathrooms?
# What are the unique values in the column floors?
# What are the unique values in the column condition?
# What are the unique values in the column grade?

SELECT DISTINCT bedrooms, bathrooms, floors, `condition`, grade
FROM house_price_data; 

# 8. Arrange the data in a decreasing order by the price of the house. Return only the IDs of the top 10 most expensive houses in your data.

SELECT id
FROM house_price_data
ORDER BY price DESC
LIMIT 10

# 9. What is the average price of all the properties in your data?

SELECT AVG(price)
FROM house_price_data

# 10. In this exercise we will use simple group by to check the properties of some of the categorical variables in our data

# What is the average price of the houses grouped by bedrooms? The returned result should have only two columns, bedrooms and Average of the prices. Use an alias to change the name of the second column.

SELECT bedrooms, AVG(price) as Average_of_the_prices
FROM house_price_data
Group by bedrooms;


# What is the average sqft_living of the houses grouped by bedrooms? The returned result should have only two columns, bedrooms and Average of the sqft_living. Use an alias to change the name of the second column.

SELECT bedrooms, AVG(sqft_living15) as Average_of_the_sqft_living
FROM house_price_data
Group by bedrooms;

# What is the average price of the houses with a waterfront and without a waterfront? The returned result should have only two columns, waterfront and Average of the prices. Use an alias to change the name of the second column.

SELECT waterfront, AVG(price) as Average_of_the_price
FROM house_price_data
Group by waterfront;


# Is there any correlation between the columns condition and grade? You can analyse this by grouping the data by one of the variables and then aggregating the results of the other column. Visually check if there is a positive correlation or negative correlation or no correlation between the variables.

SELECT `condition`, avg(grade)
FROM house_price_data
Group by `condition`
order by `condition` desc;

# Soft correlation. As it is true that the avg grade gets better with the condition, at condition 3 the avg grade is better than condition 5

# 11. One of the customers is only interested in the following houses:

# Number of bedrooms either 3 or 4
# Bathrooms more than 3
# One Floor
# No waterfront
# Condition should be 3 at least
# Grade should be 5 at least
# Price less than 300000
# For the rest of the things, they are not too concerned. Write a simple query to find what are the options available for them?

Select id
From house_price_data
Where bedrooms = 3 or 4 AND bathrooms > 2 AND floors = 1 AND waterfront = 0 AND `condition` > 2 AND grade > 4 AND Price < 300000; 

# 12. Your manager wants to find out the list of properties whose prices are twice more than the average of all the properties in the database. Write a query to show them the list of such properties. You might need to use a sub query for this problem.

select id
from house_price_data
Where price > (Select avg(price)*2
				from house_price_data);
                
# 13. Since this is something that the senior management is regularly interested in, create a view of the same query.

create view expensive_houses as
select id
from house_price_data
Where price > (Select avg(price)*2
				from house_price_data);

# 14. Most customers are interested in properties with three or four bedrooms. What is the difference in average prices of the properties with three and four bedrooms?

SELECT avg(price) - avg(price)
FROM house_price_data;
where bedrooms ('3','4')


### TRIED SEVERAL QUERIES, NOT WORKING AT ALL

# 15. What are the different locations where properties are available in your database? (distinct zip codes)

Select distinct(zipcode)
from house_price_data;

# 16. show the list of all the properties that were renovated.

select id
from house_price_data
where yr_renovated != 0; 

# 17. Provide the details of the property that is the 11th most expensive property in your database.

SELECT *
FROM house_price_data
ORDER BY price DESC
LIMIT 10,1









