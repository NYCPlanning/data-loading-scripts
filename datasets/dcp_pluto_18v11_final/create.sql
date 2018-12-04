-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS dcp_pluto_18v11_final;
CREATE TABLE dcp_pluto_18v11_final (
	Borough	text,
	Block text,	
	Lot	text,
	CD text,
	CT2010 text,
	CB2010 text,
	SchoolDist text,
	Council text,
	ZipCode	text,
	FireComp text,
	PolicePrct text,
	HealthCenterDistrict text,
	HealthArea text,
	SanitBoro text,
	SanitDistrict text,
	SanitSub text,
	Address text,
	ZoneDist1 text,
	ZoneDist2 text,
	ZoneDist3 text,
	ZoneDist4 text,
	Overlay1 text,
	Overlay2 text,
	SPDist1	text,
	SPDist2	text,
	SPDist3	text,
	LtdHeight text,
	SplitZone text,
	BldgClass text,
	LandUse	text,
	Easements text,
	OwnerType text,
	OwnerName text,
	LotArea	text,
	BldgArea text,
	ComArea	text,
	ResArea	text,
	OfficeArea text,
	RetailArea text,
	GarageArea text,
	StrgeArea text,
	FactryArea text,
	OtherArea text,
	AreaSource text,
	NumBldgs text,
	NumFloors text,	
	UnitsRes text,
	UnitsTotal text,
	LotFront text,
	LotDepth text,	
	BldgFront text,
	BldgDepth text,
	Ext	text,
	ProxCode text,
	IrrLotCode text,
	LotType	text,
	BsmtCode text,
	AssessLand text,
	AssessTot text,
	ExemptLand text,
	ExemptTot text,
	YearBuilt text,
	YearAlter1 text,
	YearAlter2 text,
	HistDist text,
	Landmark text,
	BuiltFAR text,
	ResidFAR text,
	CommFAR	text,
	FacilFAR text,
	BoroCode text,
	BBL text,
	CondoNo	text,
	Tract2010 text,
	XCoord text,
	YCoord text,
	ZoneMap	text,
	ZMCode text,
	Sanborn	text,
	TaxMap text,
	EDesigNum text,
	APPBBL text,
	APPDate	text,
	PLUTOMapID text,
	FIRM07_FLAG	text,
	PFIRM15_FLAG text,
	Version	text
);