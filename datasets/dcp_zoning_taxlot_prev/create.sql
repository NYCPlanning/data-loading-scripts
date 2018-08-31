-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dcp_zoning_taxlot_prev;
CREATE TABLE dcp_zoning_taxlot_prev (
	BoroughCode text,
	TaxBlock text,
	TaxLot text,
	BBL text,
	ZoningDistrict1 text,
	ZoningDistrict2 text,
	ZoningDistrict3 text,
	ZoningDistrict4	text,
	CommercialOverlay1 text,
	CommercialOverlay2 text,
	SpecialDistrict1 text,
	SpecialDistrict2 text,
	SpecialDistrict3 text,
	LimitedHeightDistrict text,
	ZoningMapNumber text,
	ZoningMapCode text
)