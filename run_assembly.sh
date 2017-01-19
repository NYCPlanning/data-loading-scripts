# # need to set up config file with {{database}} {{user}}
# # psql -d {{database}} -U {{user}} -f 

# # STEP 1
# # load all datasets from sources using data loading scripts
# https://github.com/NYCPlanning/data-loading-scripts

node loader.js install acs_facilities_daycareheadstart
node loader.js install bic_facilities_tradewaste
node loader.js install dca_facilities_operatingbusinesses
node loader.js install dcas_facilities_fdny
node loader.js install dcas_facilities_nypd
node loader.js install dcla_facilities_culturalinstitutions
node loader.js install dcp_facilities_sfpsd
node loader.js install dfta_facilities_contracts
node loader.js install doe_facilities_busroutesgarages
node loader.js install doe_facilities_publicschools
node loader.js install doe_facilities_schoolsbluebook
node loader.js install doe_facilities_universalprek
node loader.js install dohmh_facilities_daycare
node loader.js install doitt_facilities_collegesandunis
node loader.js install doitt_facilities_libraries
node loader.js install dot_facilities_benches
node loader.js install dot_facilities_pedplazas
node loader.js install dot_facilities_publicparking
node loader.js install dsny_facilities_mtsgaragemaintenance
node loader.js install dsny_facilities_specialdropoff
node loader.js install fdny_facilities_firehouses
node loader.js install hhc_facilities_hospitals
node loader.js install nycha_facilities_policeservice
node loader.js install nysdec_facilities_lands
node loader.js install nysdec_facilities_solidwaste
node loader.js install nysdoh_facilities_healthfacilities
node loader.js install nysdoh_nursinghomebedcensus
node loader.js install nysed_facilities_activeinstitutions
node loader.js install nysed_nonpublicenrollment
node loader.js install nysed_publicenrollment
node loader.js install nysomh_facilities_mentalhealth
node loader.js install nysopwdd_facilities_providers
node loader.js install nysparks_facilities_historicplaces
node loader.js install nysparks_facilities_parks
node loader.js install omb_facilities_libraryvisits
node loader.js install usdot_facilities_airports
node loader.js install usdot_facilities_ports
node loader.js install usnps_facilities_parks
# node loader.js install HHS ACCELERATOR DATA ##
# node loader.js install to_geocode ## add this to ftp site

# # STEP 2
# # create empty master table with facilities db schema

# psql -U hannahbkates -d postgres -f ./scripts_assembly/create.sql

# # STEP 3
# # configure (process/transform) each dataset and insert into master table

# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_acs_facilities_daycareheadstart.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_bic_facilities_tradewaste.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_dca_facilities_operatingbusinesses.sql ##Needs to be geocoded
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_dcas_facilities_fdny.sql ##Needs to be joined to geom
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_dcas_facilities_nypd.sql ##Needs to be joined to geom
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_dcla_facilities_culturalinstitutions.sql ##Needs to be geocoded
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_dcp_facilities_sfpsd.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_dfta_facilities_contracts.sql ##Needs to be geocoded
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_doe_facilities_busroutesgarages.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_doe_facilities_universalprek.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_doe_facilities_schoolsbluebook.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_dohmh_facilities_daycare.sql ##Needs to be geocoded
# # psql -U hannahbkates -d postgres -f ./scripts_assembly/config_doitt_facilities_libraries.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_dot_facilities_pedplazas.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_dot_facilities_publicparking.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_dpr_facilities_parksproperties.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_dsny_facilities_mtsgaragemaintenance.sql ##OK
# # psql -U hannahbkates -d postgres -f ./scripts_assembly/config_fdny_facilities_firehouses.sql
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_foodbankny_facilities_foodbanks.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_hhc_facilities_hospitals.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_hhs_facilities_acceleratorall.sql ##OK need to review facility categories
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_nycha_facilities_policeservice.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_nysoasas_facilities_programs.sql ##Needs to be geocoded
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_nysdec_facilities_lands.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_nysdec_facilities_solidwaste.sql ##OK
# # psql -U hannahbkates -d postgres -f ./scripts_assembly/config_nysdoh_facilities_healthfacilities.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_nysdoh_facilities_healthfacilities_joinnursingbeds.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_nysed_facilities_activeinstitutions.sql ##OK need to review facility categories
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_nysomh_facilities_mentalhealth.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_nysopwdd_facilities_providers.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_nysparks_facilities_historicplaces.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_nysparks_facilities_parks.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_omb_facilities_libraryvisits.sql
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_usdot_facilities_airports.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_usdot_facilities_ports.sql ##OK need to review operator/oversight
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_usnps_facilities_parks.sql ##OK
# psql -U hannahbkates -d postgres -f ./scripts_assembly/config_facilities_togeocode.sql ##Needs to be geocoded

# # STEP 4
# # create ID for all records at once
# psql -U hannahbkates -d postgres -f ./scripts_assembly/facilities_addID.sql

# psql -U hannahbkates -d postgres -f ./scripts_processing/facilities_spatialindex.sql
# psql -U hannahbkates -d postgres -f ./scripts_processing/facilities_vacuum.sql

