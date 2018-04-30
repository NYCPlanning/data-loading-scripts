-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS pluto_input_allocated;
CREATE TABLE pluto_input_allocated (
	BORO text,
	BLOCK text,
	LOT text,
	EASEMENT text,
	OWNER text,
	HSN_LOW text,
	HSN_HI text,
	STCODE text,
	LOT_FRONT_FT text,
	LOT_FRONT_IN text,
	LOT_DEPTH_FT text,
	LOT_DEPTH_IN text,
	IRREGULAR text,
	BLD_FRONT_FT text,
	BLD_FRONT_IN text,
	BLD_DEPTH_FT text,
	BLD_DEPTH_IN text,
	EXTENSION text,
	STORIES text,
	BLGDS text,
	CORNER text,
	STNAME text,
	BLDG_CL text,
	EXEMPT_CL text,
	AV_LAND text,
	AV_LAND_TOTAL text,
	EXEMPT_VALUE_LAND text,
	EXEMPT_VALUE_TOTAL text,
	BO_CD text,
	CD text,
	CEN_TRACT text,
	CEN_BLOCK text,
	MAJOR_PROPERTY_CODE text,
	CD_GSS text,
	LOT_AREA text,
	HSNUM_GSS text,
	STNAME_GSS text,
	APTS text,
	UNITS text,
	CONDO_NUM text,
	CONDO_SFX text,
	YR_BUILT text,
	YR_BUILT_FLAG text,
	YR_ALT_1 text,
	YR_ALT_2 text,
	GROSS_AREA_RPAD text,
	GBFA_CODE text,
	FOOTPRINT text,
	FOOT_CODE text,
	CEN_BLOCK_SFX text,
	OWNER_CODE_IPIS text,
	AP_BORO text,
	AP_BLOCK text,
	AP_LOT text,
	AP_DATE text,
	blank text
  )