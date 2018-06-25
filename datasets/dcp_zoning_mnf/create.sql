-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dcp_zoning_mnf;
CREATE TABLE dcp_zoning_mnf (
	ZoningDistrict text,
	ResUG1to2 text,
	CommFacUG3to4 text,
	CommUG5to15 text,
	GeneralServiceUG16 text,
	MnfUG17 text,
	MnfUG18 text,
	MnfFAR text,
	commfacfar text,
	RequiredAccessoryMnfParkingsqft text
);