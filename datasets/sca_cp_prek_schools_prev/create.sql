-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sca_cp_prek_schools_prev;
CREATE TABLE sca_cp_prek_schools_prev (
	ExistingSiteIdentified text,
	ProposedLeasedFacility text,	
	District text,	
	ProjectNum text,	
	School text,
	ForecastCapacity text,	
	DesignStart text,	
	ConstrStart text,	
	ActualEstCompl text,	
	TotalEstCost text,	
	PreviousAppropriations text,	
	FundingReqdFY1519 text,	
	NeededtoComplete text
);


