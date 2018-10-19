-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS housing_input_dcpattributes;
CREATE TABLE housing_input_dcpattributes (
	job_number text,
	prop_stories text,
	dcp_occ_pr text,
	units_prop text,
	units_prop_res text,
	units_prop_hotel text,
	u_prop text,
	u_net_comp text,
	u_net_inc text,
	c_u_latest text,
	u_2013_inc text,
	u_2015_inc text,
	u_2016_inc text,
	u_2017_inc text,
	u_2015_net  text
	,u_2016_net text,
	u_2017_net text,
	bbl text,
	bin text,
	latitude text,
	longitude text,
	geom geometry,
	newcolumn text
);