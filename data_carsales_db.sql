/* manufacturer insert			 	 */
INSERT INTO `manufacturer` (`manufacturer_id`, `manufacturer_name`) VALUES (1,'volvo'),(2,'saab'),(3,'audi'),(4,'bmw'),(5,'tesla'),(6,'porsche'),(7,'kia');
/* manufacturer insert			 	 */

/* model insert			 	 */
INSERT INTO `carsales_db`.`model` (`manufacturer_manufacturer_id`, `model_name`) VALUES ('1', 'xc90');
INSERT INTO `carsales_db`.`model` (`manufacturer_manufacturer_id`, `model_name`) VALUES ('1', 'v70');
INSERT INTO `carsales_db`.`model` (`manufacturer_manufacturer_id`, `model_name`) VALUES ('2', '95');
INSERT INTO `carsales_db`.`model` (`manufacturer_manufacturer_id`, `model_name`) VALUES ('2', '93x');
INSERT INTO `carsales_db`.`model` (`manufacturer_manufacturer_id`, `model_name`) VALUES ('2', '93');
INSERT INTO `carsales_db`.`model` (`manufacturer_manufacturer_id`, `model_name`) VALUES ('3', 'a4');
INSERT INTO `carsales_db`.`model` (`manufacturer_manufacturer_id`, `model_name`) VALUES ('4', '2 series');
INSERT INTO `carsales_db`.`model` (`manufacturer_manufacturer_id`, `model_name`) VALUES ('5', 'model s');
INSERT INTO `carsales_db`.`model` (`manufacturer_manufacturer_id`, `model_name`) VALUES ('6', '911');
INSERT INTO `carsales_db`.`model` (`manufacturer_manufacturer_id`, `model_name`) VALUES ('7', 'rio');
/* model insert			 	 */

/* customer insert			 	 */
INSERT INTO `carsales_db`.`customer` (`customer_id`, `customer_firstname`, `customer_lastname`, `customer_telephone`) VALUES ('1', 'Nathan', 'Woodman', '123');
INSERT INTO `carsales_db`.`customer` (`customer_id`, `customer_firstname`, `customer_lastname`, `customer_telephone`) VALUES ('2', 'Laurie', 'Ellington', '321');
INSERT INTO `carsales_db`.`customer` (`customer_id`, `customer_firstname`, `customer_lastname`, `customer_telephone`) VALUES ('3', 'Hollie', 'Lesley', '333');
/* customer insert			 	 */

/* vehicle insert			 	 */
INSERT INTO `carsales_db`.`vehicle` (`vehicle_id`, `model_model_id`, `model_manufacturer_manufacturer_id`, `vehicle_year`, `vehicle_colour`, `vehicle_condition`, `vehicle_description`) VALUES ('1', '1', '1', 1990, 'grey', 'Repair', 'it looks nice');
INSERT INTO `carsales_db`.`vehicle` (`vehicle_id`, `model_model_id`, `model_manufacturer_manufacturer_id`, `vehicle_year`, `vehicle_colour`, `vehicle_condition`, `vehicle_description`) VALUES ('2', '1', '1', 2009, 'green', 'Sold', 'its very fast');
INSERT INTO `carsales_db`.`vehicle` (`vehicle_id`, `model_model_id`, `model_manufacturer_manufacturer_id`, `vehicle_year`, `vehicle_colour`, `vehicle_condition`, `vehicle_description`) VALUES ('3', '2', '1', 2021, 'red', 'For Sale', 'buy now');
INSERT INTO `carsales_db`.`vehicle` (`vehicle_id`, `model_model_id`, `model_manufacturer_manufacturer_id`, `vehicle_year`, `vehicle_colour`, `vehicle_condition`, `vehicle_description`) VALUES ('4', '3', '2', 1964, 'silver', 'For Sale', 'dont buy now');
INSERT INTO `carsales_db`.`vehicle` (`vehicle_id`, `model_model_id`, `model_manufacturer_manufacturer_id`, `vehicle_year`, `vehicle_colour`, `vehicle_condition`) VALUES ('5', '3', '2', 2004, 'red', 'Repair');
INSERT INTO `carsales_db`.`vehicle` (`vehicle_id`, `model_model_id`, `model_manufacturer_manufacturer_id`, `vehicle_year`, `vehicle_colour`, `vehicle_condition`, `vehicle_description`) VALUES ('6', '3', '2', 1997, 'grey', 'Sold', 'cool car');
INSERT INTO `carsales_db`.`vehicle` (`vehicle_id`, `model_model_id`, `model_manufacturer_manufacturer_id`, `vehicle_year`, `vehicle_colour`, `vehicle_condition`, `vehicle_description`) VALUES ('7', '9', '6', 2015, 'white', 'Repair', 'not cool car');
/* vehicle insert			 	 */

/* dealership insert			 	 */
INSERT INTO `carsales_db`.`dealership` (`dealership_id`, `dealership_name`, `dealership_location`, `dealership_telephone`) VALUES ('1', 'Halmstad Cars', 'Halmstad', '073516');
INSERT INTO `carsales_db`.`dealership` (`dealership_id`, `dealership_name`, `dealership_location`, `dealership_telephone`) VALUES ('2', 'Jönköping Cars AB', 'Jönköping', '072321');
INSERT INTO `carsales_db`.`dealership` (`dealership_id`, `dealership_name`, `dealership_location`, `dealership_telephone`) VALUES ('3', 'Fast Cars AB', 'Göteborg', '0783232');
/* dealership insert			 	 */

/* dealership_has_vehicle insert			 	 */
INSERT INTO `carsales_db`.`dealership_has_vehicle` (`dealership_dealership_id`, `vehicle_vehicle_id`, `dealership_ListedPrice`) VALUES ('1', '1', '25000');
INSERT INTO `carsales_db`.`dealership_has_vehicle` (`dealership_dealership_id`, `vehicle_vehicle_id`, `dealership_ListedPrice`) VALUES ('1', '2', '37000');
INSERT INTO `carsales_db`.`dealership_has_vehicle` (`dealership_dealership_id`, `vehicle_vehicle_id`, `dealership_ListedPrice`) VALUES ('1', '3', '89000');
INSERT INTO `carsales_db`.`dealership_has_vehicle` (`dealership_dealership_id`, `vehicle_vehicle_id`, `dealership_ListedPrice`) VALUES ('2', '4', '74000');
INSERT INTO `carsales_db`.`dealership_has_vehicle` (`dealership_dealership_id`, `vehicle_vehicle_id`, `dealership_ListedPrice`) VALUES ('2', '5', '15000');
INSERT INTO `carsales_db`.`dealership_has_vehicle` (`dealership_dealership_id`, `vehicle_vehicle_id`, `dealership_ListedPrice`) VALUES ('3', '6', '125000');
INSERT INTO `carsales_db`.`dealership_has_vehicle` (`dealership_dealership_id`, `vehicle_vehicle_id`, `dealership_ListedPrice`) VALUES ('3', '7', '95200');
/* dealership_has_vehicle insert			 	 */

/* contract insert			 	 */
INSERT INTO `carsales_db`.`contract` (`contract_id`, `customer_customer_id`, `dealership_has_vehicle_dealership_dealership_id`, `dealership_has_vehicle_vehicle_vehicle_id`, `contract_SellPrice`) VALUES ('1', '1', '1', '1', '95000');
INSERT INTO `carsales_db`.`contract` (`contract_id`, `customer_customer_id`, `dealership_has_vehicle_dealership_dealership_id`, `dealership_has_vehicle_vehicle_vehicle_id`, `contract_SellPrice`) VALUES ('2', '2', '1', '2', '55000');
INSERT INTO `carsales_db`.`contract` (`contract_id`, `customer_customer_id`, `dealership_has_vehicle_dealership_dealership_id`, `dealership_has_vehicle_vehicle_vehicle_id`, `contract_SellPrice`) VALUES ('3', '3', '2', '4', '132000');
/* contract insert			 	 */