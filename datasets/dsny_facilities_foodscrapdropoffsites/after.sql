ALTER TABLE dsny_facilities_foodscrapdropoffsites ADD COLUMN hash text;
UPDATE dsny_facilities_foodscrapdropoffsites SET hash = md5(CAST((dsny_facilities_foodscrapdropoffsites.*) AS text));
