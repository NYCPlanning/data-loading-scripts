DROP TABLE IF EXISTS dcp_cpdb_agencyverified;
CREATE TABLE dcp_cpdb_agencyverified AS 
SELECT * FROM acs_mapped
UNION ALL
SELECT * FROM acs_unmapped
UNION ALL
SELECT * FROM bpl_mapped
UNION ALL
SELECT * FROM bpl_unmapped
UNION ALL
SELECT * FROM dhs_mapped
UNION ALL
SELECT * FROM dhs_unmapped
UNION ALL
SELECT * FROM doc_mapped
UNION ALL
SELECT * FROM doc_unmapped
UNION ALL
SELECT * FROM dohmh_mapped
UNION ALL
SELECT * FROM dohmh_unmapped
UNION ALL
SELECT * FROM dot_mapped
UNION ALL
SELECT * FROM dot_unmapped
UNION ALL
SELECT * FROM dpr_mapped
UNION ALL
SELECT * FROM fdny_mapped
UNION ALL
SELECT * FROM fdny_unmapped
UNION ALL
SELECT * FROM hhc_mapped
UNION ALL
SELECT * FROM hhc_unmapped
UNION ALL
SELECT * FROM hra_mapped
UNION ALL
SELECT * FROM hra_unmapped
UNION ALL
SELECT * FROM nycha_mapped
UNION ALL
SELECT * FROM nycha_unmapped
UNION ALL
SELECT * FROM nypd_mapped
UNION ALL
SELECT * FROM nypd_unmapped
UNION ALL
SELECT * FROM nypl_mapped
UNION ALL
SELECT * FROM nypl_unmapped
UNION ALL
SELECT * FROM oca_mapped
UNION ALL
SELECT * FROM oca_unmapped;

DROP TABLE acs_mapped;
DROP TABLE acs_unmapped;
DROP TABLE bpl_mapped;
DROP TABLE bpl_unmapped;
DROP TABLE dhs_mapped;
DROP TABLE dhs_unmapped;
DROP TABLE doc_mapped;
DROP TABLE doc_unmapped;
DROP TABLE dohmh_mapped;
DROP TABLE dohmh_unmapped;
DROP TABLE dot_mapped;
DROP TABLE dot_unmapped;
DROP TABLE dpr_mapped;
DROP TABLE fdny_mapped;
DROP TABLE fdny_unmapped;
DROP TABLE hhc_mapped;
DROP TABLE hhc_unmapped;
DROP TABLE hra_mapped;
DROP TABLE hra_unmapped;
DROP TABLE nycha_mapped;
DROP TABLE nycha_unmapped;
DROP TABLE nypd_mapped;
DROP TABLE nypd_unmapped;
DROP TABLE nypl_mapped;
DROP TABLE nypl_unmapped;
DROP TABLE oca_mapped;
DROP TABLE oca_unmapped;