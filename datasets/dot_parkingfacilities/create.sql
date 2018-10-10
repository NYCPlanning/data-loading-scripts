-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dot_parkingfacilities;
CREATE TABLE dot_parkingfacilities (
	DCALicense text,
	LicenseType text,
	LicenseExp text,
	BusinessName text,
	BusinessName2 text,
	AddressNum text,
	StreetName text,
	SecondaryAddress text,
	City text,
	State text,
	Zip text,
  	PhoneNumber text,
  	Borough text,
  	BoroughCode text
 );