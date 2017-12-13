ALTER TABLE nysdoh_cacfp ADD COLUMN hash text;
UPDATE nysdoh_cacfp SET hash = md5(CAST((nysdoh_cacfp.*) AS text));
