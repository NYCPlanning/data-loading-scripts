-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS nycha_facilities_communitycenters;
CREATE TABLE nycha_facilities_communitycenters (
	BOROUGH_CODE text,
	DEVELOPMENT_NAME text,
	ADDRESS text,
	STATUS text,
	SPONSOR text,
	ZIP_CODE text,
	TYPE text,
	LATITUDE text,
	LONGITUDE text,
	COMMUNITY_BOARD text,
	COMMUNITY_COUNCIL text,
	CENSUS_TRACT text,
	BIN text,
	BBL text,
	NTA text
)