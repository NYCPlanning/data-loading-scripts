-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sbs_facilities_workforce1;
CREATE TABLE sbs_facilities_workforce1 (
	Name_of_Center text,
	Address_Line_1 text,
	City text,
	State text,
	Zip_Code text
)