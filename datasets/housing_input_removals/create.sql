-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS housing_input_removals;
CREATE TABLE housing_input_removals (
	job_number text);