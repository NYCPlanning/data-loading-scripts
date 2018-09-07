-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS nys_retailfoodstores;
CREATE TABLE nys_retailfoodstores (
	County text,
	License_Number text,
	Operation_Type text,
	Establishment_Type text,
	Entity_Name text,
	DBA_Name text,
	Street_Number text,
	Street_Name text,
	Address_Line_2 text,
	Address_Line_3 text,
	City text,
	State text,
	Zip_Code text,
	Square_Footage integer,
	Location text
);
