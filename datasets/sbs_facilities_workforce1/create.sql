-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sbs_facilities_workforce1;
CREATE TABLE sbs_facilities_workforce1 (
	Name text,
	Address_Number text,
	Street text,
	Street_Address_1 text,
	Street_Address_2 text,
	City text,
	Borough text,
	State text,
	ZIP text,
	Location_Type text,
	Latitude text,
	Longitude text,
	X text,
	Y text
)