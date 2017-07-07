ALTER TABLE hhs_facilities_proposals ADD COLUMN hash text;
UPDATE hhs_facilities_proposals SET hash = array_to_string(ARRAY_AGG(md5(CAST((hhs_facilities_proposals.*) AS text))));
