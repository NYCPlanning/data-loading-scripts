-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS housing_input_lookup_status;
CREATE TABLE housing_input_lookup_status (
	dobstatus text,
	dcpstatus text
);