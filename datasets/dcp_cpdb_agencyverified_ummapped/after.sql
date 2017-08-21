DROP TABLE IF EXISTS dcp_cpdb_agencyverified_ummapped;
CREATE TABLE dcp_cpdb_agencyverified_ummapped AS 
SELECT * FROM ACS_unmapped
UNION ALL
SELECT * FROM DOC_unmapped
UNION ALL
SELECT * FROM DOHMH_unmapped
UNION ALL
SELECT * FROM DOT_unmapped
UNION ALL
SELECT * FROM HHC_unmapped
UNION ALL
SELECT * FROM HRA_unmapped
UNION ALL
SELECT * FROM OCA_unmapped;

DROP TABLE ACS_unmapped;
DROP TABLE DOC_unmapped;
DROP TABLE DOHMH_unmapped;
DROP TABLE DOT_unmapped;
DROP TABLE HHC_unmapped;
DROP TABLE HRA_unmapped;
DROP TABLE OCA_unmapped;