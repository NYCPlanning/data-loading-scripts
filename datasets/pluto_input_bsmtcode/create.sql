-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS pluto_input_bsmtcode;
CREATE TABLE pluto_input_bsmtcode (
	bsmnt_type text,
	bsmntgradient text,
	bsmtcode text,
	bsmnt_typevalue text,
	bsmntgradientvalue text,
	bsmtcodevalue text
);