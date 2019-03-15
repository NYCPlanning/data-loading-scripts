-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sca_cp_cap_schools_prev;
CREATE TABLE sca_cp_cap_schools_prev (
	ExistingSiteIdentified text, 
	ProposedLeasedFacility text,
	District text,
	ProjectNum text,
	School text,
	Boro text,
	ForecastCapacity text,
	DesignStart text, 
	ConstrStart text, 
	ActualEstCompl text, 
	TotalEstCost text, 
	PreviousAppropriations text,
	FundingReqd text);


