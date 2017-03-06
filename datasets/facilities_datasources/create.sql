-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS facilities_datasources;
CREATE TABLE facilities_datasources (
	using_01 text,
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