-- create table to load csv from the nyc open data portal text,
DROP TABLE IF EXISTS dcp_pops;
CREATE TABLE dcp_pops (
	POPSNumber text,
	PSRNumber text,
	Borough text,
	BuildingAddress text,
	ALTERNATIVE	text,
	TaxBlock text,
	TaxLot text,
	XCoordinate text,
	YCoordinate text,
	Latitude text,
	Longitude text
)

