-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dycd_facilities_afterschoolprograms;
CREATE TABLE dycd_facilities_afterschoolprograms (
	PROGRAM_TYPE text,	
	PROGRAM text,
	SITE_NAME text,
	BOROUGH_COMMUNITY text,
	AGENCY text,
	Contact_Number text,	
	GradeLevel_AgeGroup text,	
	Location1 text,	
	Postcode text,	
	Latitude text,	
	Longitude text,	
	Community_Board text,
	Council_District text,	
	Census_Tract text,	
	BIN text,
	BBL text,
	NTA text
)

