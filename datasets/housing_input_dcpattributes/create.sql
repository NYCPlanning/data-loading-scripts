-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS housing_input_dcpattributes;
CREATE TABLE housing_input_dcpattributes (
	job_number text,
	prop_stories text,
	dcp_occ_pr text,
	units_prop text,
	units_prop_res text,
	units_prop_hotel text,
	bbl text,
	bin text,
	latitude text,
	longitude text,
	geom text
);