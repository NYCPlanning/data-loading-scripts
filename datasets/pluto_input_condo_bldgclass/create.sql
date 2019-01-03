-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS pluto_input_condo_bldgclass;
CREATE TABLE pluto_input_condo_bldgclass (
	Code text,
	Description text,
	Type text,
	DCPcreated text,
	Logic text
 );