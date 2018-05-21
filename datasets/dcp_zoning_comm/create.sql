-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dcp_zoning_comm;
CREATE TABLE dcp_zoning_comm (
	ZoningDistrict text,
	ZoningDistricttype text,
	ResEquivalent text,
	CommFAR text,
	RequiredAccessoryParking text,
	SignSizeindividual text,
	SignSizetotal text,
	SignSizeilluminated text,
	SignHeightabovestreetlevel text,
	CommFARR1toR5 text,
	CommFARR6otR10 text,
	DepthofOverlay text
)