-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS pluto_input_geocodes;
CREATE TABLE pluto_input_geocodes (
	borough text,
	block text,
	lot text,
	billingbbl text,
	communityDistrict text,
	censusTract2010 text,
	censusBlock2010 text,
	communitySchoolDistrict text,
	cityCouncilDistrict text,
	zipCode text,
	fireCompanyNumber text,
	policePrecinct text,
	healthCenterDistrict text,
	healthArea text,
	sanitationDistrict text,
	sanitationCollectionScheduling text,
	boePreferredStreetName text,
	numberOfExistingStructures text,
	taxMapNumberSectionAndVolume text,
	sanbornBoroughCode text,
	sanbornPageNumber text,
	sanbornVolumeNumber text
 );