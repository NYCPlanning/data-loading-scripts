
-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS otm_mentalhealthservicefinder;
CREATE TABLE otm_mentalhealthservicefinder (
	name_1 text,
	name_2 text,
	street_1 text,
	street_2 text,
	city text,
	zip text,
	phone text,
	website text,
	latitude text,
	longitude text,
	flag_saf text,
	flag_mhf text,
	flag_mc text,
	flag_md text,
	flag_np_ss text,
	flag_pi text,
	flag_gl text,
	flag_vet text,
	flag_pw text,
	flag_hv text,
	flag_dv text,
	flag_chld text,
	flag_yad text,
	flag_adlt text,
	flag_snr text,
	flag_si text,
	filter_military text,
	filter_inpatient_svc text,
	filter_residential_pgm text
)