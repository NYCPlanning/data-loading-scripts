-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sca_cp_cap_location_process;
CREATE TABLE sca_cp_cap_location_process (
	DISTRICT text,
	SCHOOL text,
	BOROUGH	text,
	ADDRESS text,
	Numberofseats text,
	Postcode text,
	Latitude text,
	Longitude text,
	CommunityBoard text,
	CouncilDistrict text, 	
	CensusTract text,	
	BIN	text,
	BBL	text,
	NTA text,
	Openingyear text
);


