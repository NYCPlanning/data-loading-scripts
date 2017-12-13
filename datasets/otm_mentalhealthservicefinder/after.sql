ALTER TABLE otm_mentalhealthservicefinder ADD COLUMN hash text;
UPDATE otm_mentalhealthservicefinder SET hash = md5(CAST((otm_mentalhealthservicefinder.*) AS text));
