-- create table to load csv from the ftp
DROP TABLE IF EXISTS fisa_capitalcommitments;
CREATE TABLE fisa_capitalcommitments (
	cycle_fy text,
	cycle_name text,
	budget_proj_type text,
	budget_line_id text,
	agency_class_cd text,
	unit_of_appr text,
	budget_line_descr text,
	managing_agcy_cd text,
	project_id text,
	short_descr text,
	object text,
	object_name text,
	fcst_cnx_amt double precision,
	fcst_cex_amt double precision,
	fcst_st_amt double precision,
	fcst_fd_amt double precision,
	fcst_pv_amt double precision,
	planned_commit_date text,
	typ_category text,
	typ_category_name text
	)