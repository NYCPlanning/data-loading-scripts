-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS nysed_publicenrollment;
CREATE TABLE nysed_publicenrollment (
	SCHOOL_YEAR text,
	COUNTY text,
	STATE_DISTRICT_ID double precision,
	DISTRICT_NAME text,
	STATE_LOCATION_ID double precision,
	LOCATION_NAME text,
	SCHOOL_TYPE text,
	SUBGROUP_NAME text,
	PK12_TOTAL text,
	PK_HALF_DAY text,
	PK_FULL_DAY text,
	KG_HALF_DAY text,
	KG_FULL_DAY text,
	GRADE_1 text,
	GRADE_2 text,
	GRADE_3 text,
	GRADE_4 text,
	GRADE_5 text,
	GRADE_6 text,
	UNGRADED_ELEMENTARY text,
	GRADE_7 text,
	GRADE_8 text,
	GRADE_9 text,
	GRADE_10 text,
	GRADE_11 text,
	GRADE_12 text,
	UNGRADED_SECONDARY text,
	Modified_Date date
  )