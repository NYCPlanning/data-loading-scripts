-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS housing_input_lookup_occupancy;
CREATE TABLE housing_input_lookup_occupancy (
	dobgeneraldesc text,
	doboccupancycategorization text,
	doboccupancycode2008 text,
	doboccupancycode1968 text,
	dobdetaileddescription text,
	buildingcode text,
	dcpclassificationold text,
	dcpclassificationnew text
);