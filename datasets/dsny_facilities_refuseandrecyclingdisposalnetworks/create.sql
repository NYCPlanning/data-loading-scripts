-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dsny_facilities_refuseandrecyclingdisposalnetworks;
CREATE TABLE dsny_facilities_refuseandrecyclingdisposalnetworks (
	district text,
	matieral text,
	primaryfacility text,
	location text,
	borough text,
	postcode text,
	latitude text,
	longitude text,
	communityboard text,
	communitycouncil text,
	censustract text,
	bin text,
	bbl text,
	nta text
)