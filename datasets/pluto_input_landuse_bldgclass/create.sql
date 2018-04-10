-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS pluto_input_landuse_bldgclass;
CREATE TABLE pluto_input_landuse_bldgclass (
	bldgclass text,
	landuse text
  )