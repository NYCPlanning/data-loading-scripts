ALTER TABLE dcp_pops ADD COLUMN hash text;
UPDATE dcp_pops SET hash = md5(CAST((dcp_pops.*) AS text));
