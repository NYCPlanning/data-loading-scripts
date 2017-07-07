ALTER TABLE doe_facilities_lcgms ADD COLUMN hash text;
UPDATE doe_facilities_lcgms SET hash = md5(CAST((doe_facilities_lcgms.*) AS text));
