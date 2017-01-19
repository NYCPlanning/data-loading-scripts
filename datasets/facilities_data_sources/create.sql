-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS facilities_data_sources;
CREATE TABLE facilities_data_sources (
	pgtable text,
	agencysource text,
	agencysourcename text,
	sourcedatasetname text,
	confidence text,
	notes text,
	uniqueID text,
	datatype text,
	refreshmeans text,
	refreshfrequency text,
	datesourceupdated text,
	linkdata text,
	linkdownload text
  )