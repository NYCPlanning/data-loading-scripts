ALTER TABLE dycd_facilities_afterschoolprograms ADD COLUMN hash text;
UPDATE dycd_facilities_afterschoolprograms SET hash = md5(CAST((PROGRAM_TYPE,PROGRAM_SITE_NAME,BOROUGH_COMMUNITY,AGENCY,Contact_Number,GradeLevel_AgeGroup,Location1,Postcode,Latitude,Longitude,Community_Board,Council_District,Census_Tract,BIN,BBL,NTA) AS text));
