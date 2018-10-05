-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dot_parkingfacilities;
CREATE TABLE dot_parkingfacilities (
	DCA_License text,
	License_Type text,
	License_Exp text,
	Business_Name text,
	Business_Name_2 text,
	Address_Num text,
	Street_Name text,
	Secondary_Address text,
	City text,
	State text,
	Zip text,
  Phone_Number text,
  Borough text,
  Borough_Code INT
 )
