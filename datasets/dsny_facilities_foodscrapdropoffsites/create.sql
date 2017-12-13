-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dsny_facilities_foodscrapdropoffsites;
CREATE TABLE dsny_facilities_foodscrapdropoffsites (
	borough text,
	name text,
	location text,
	citymaplocation text,
	materialsaccepted text,
	days text,
	hours text,
	monthsofoperation text,
	requirements text,
	organizer text,
	compostedby text,
	website text,
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