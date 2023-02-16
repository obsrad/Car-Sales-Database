# Car-Sales-Database
Showcasing a MYSQL database solution for a car dealership and its relations with the vehicles, customers and the contracts.

![carsales-db-eer-diagram](https://user-images.githubusercontent.com/56250367/219063389-dd921f63-5498-4fcc-ba39-09cd70af1428.png)

### EER Description och thought process:  
I have chosen to use 1:n identifying connections everywhere. My thought process is the following:  
‘model’ is a child table to ‘manufacturer’ and since ‘manufacturer_manufacturer_id’ is a field that
is needed in ‘model’ table, it felt logical to use an identifying relationship.

The same thought process goes for ‘vehicle’, ‘dealership’, ‘dealership_has_vehicle’, ‘contract’ and the ‘customer’
tables.
‘dealership_has_vehicle’, ‘contract’, ‘vehicle’ and ‘model’ cannot exist and function on their own
without the references to their parent tables.

### Why are the tables 'Manufacturer' and 'Model' separated from the 'Vehicle' table?  

I reasoned that you would want to add new cars and their models - even if they hadn't started manufacturing them.
An example could be that Volvo would release an advertisement for a new car.
Then the car dealership would want to prepare their website, showcasing that the car would be for sale
at a later date.

Then you would simply add a new 'volvo' - 'XC50' without having all the specific information about the car.

### Why is 'Manufacturer och 'Model' not in the same table?  

The reason is that you can add new models without having to see 'manufacturer_name' repeatedly, removing
redundancy.  
Example of what I would like to avoid:

![carsales-db-example1](https://user-images.githubusercontent.com/56250367/219065990-f85d1113-afda-4db6-8b56-f85d02b705a4.png)


### Why not add the price as a field inside 'vehicle'?  

Since different dealerships can have the same 'manufacturer' and 'model' for sale at different prices, and
also that the car could be sold for higher or lower than what the 'ListedPrice' which exists inside of 'dealership_has_vechicle'
table is set to.

I also chose to create a view that is called 'contractView':

![carsales-db-example2](https://user-images.githubusercontent.com/56250367/219063629-82d90983-b1a3-4b7d-bbbc-db212bf4105f.png)

Here I show relevant information regarding the contract. I used a CONCAT() to combine customer_firstname and customer_lastname to the same row.
