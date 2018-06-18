-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dof_condo_units;
CREATE TABLE dof_condo_units (
	CONDO_BORO text,
	CONDO_NUMB text,
	CONDO_KEY text,
	CONDO_BASE text,
	CONDO_BA_1 text,
	CONDO_BA_2 text,
	CONDO_BA_3 text,
	CONDO_BA_4 text,
	UNIT_BORO text,
	UNIT_BLOCK text,
	UNIT_LOT text,
	UNIT_BBL text,
	CREATED_BY text,
	CREATED_DA text,
	LAST_MODIF text,
	LAST_MOD_1 text,
	AV_CHANGE text,
	BW_CHANGE text,
	EFFECTIVE_ text,
	UNIT_DESIG text
 );