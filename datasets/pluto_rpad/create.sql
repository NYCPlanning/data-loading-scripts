-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS pluto_rpad;
CREATE TABLE pluto_rpad (
	BORO text,
	TB text,
	TL text,
	EASE text,
	YEAR text,
	CURAVL text,
	CURAVT text,
	CUREXL text,
	CUREXT text,
	CURAVL_ACT text,
	CURAVT_ACT text,
	CUREXL_ACT text,
	CUREXT_ACT text,
	NEWLOT text,
	DROPLOT text,
	NOAV text,
	VALREF text,
	BLDGCL text,
	EXMTCL text,
	OWNER text,
	PRIME text,
	RANGE text,
	STCODE text,
	ABANDONED text,
	FIRE_DAMAGE text,
	LFFT text,
	LFIN text,
	LDFT text,
	LDIN text,
	IRREG text,
	BFFT text,
	BFIN text,
	BDFT text,
	BDIN text,
	EXT text,
	STORY text,
	BLDGS text,
	CORNER text,
	FULLVAL text,
	LAND_AREA text,
	ZONING text,
	YRBUILT text,
	YRBUILT_FLAG text,
	COOP_APTS text,
	UNITS text,
	APTNO text,
	COOP_NUM text,
	CP_BORO text,
	CP_DIST text,
	AP_BORO text,
	AP_BLOCK text,
	AP_LOT text,
	AP_EASE text,
	AP_DATE text,
	CONDO_NUMBER text,
	CONDO_SUFFIX1 text,
	CONDO_SUFFIX2 text,
	EXEMPT_INDICATOR1 text,
	EXEMPT_INDICATOR2 text,
	EXEMPT_INDICATOR3 text,
	EXEMPT_INDICATOR4 text,
	FULLVAL_LAND text,
	OLD_FULLVAL_LAND text,
	YRALT1 text,
	YRALT1_RANGE text,
	YRALT2 text,
	YRALT2_RANGE text,
	HOUSENUM_LO text,
	HOUSENUM_HI text,
	STCODE11 text,
	GEOSUPPORT_RC text,
	extra text
);


