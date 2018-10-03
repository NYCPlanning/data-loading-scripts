-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dof_condo;
CREATE TABLE dof_condo (
	OBJECTID text,
	CONDO_BORO text,
	CONDO_KEY text,
	CONDO_NAME text,
	CONDO_BASE text,
	CONDO_BILL text,
	CONDO_BA_1 text,
	AIR_RIGHTS text,
	BILLING_LO text,
	CREATED_BY text,
	CREATED_DA text,
	LAST_MODIF text,
	LAST_MOD_1 text,
	AV_CHANGE text,
	BW_CHANGE text,
	GLOBALID text,
	CONDO_NUMB text
 );