-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS acs_facilities_daycareheadstart;
CREATE TABLE acs_facilities_daycareheadstart (
	EL_Program_Number text,
	EL_Contractor_Number text,
	Contractor_Name text,
	Program_Name text,
	Program_Address text,
	Boro text,
	ZIP text,
	Community_District_CD text,
	Model_Type text,
	Infant text,
	Toddler text,
	Preschool text,
	Total text
 )