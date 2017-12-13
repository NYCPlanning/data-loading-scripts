ALTER TABLE dsny_facilities_refuseandrecyclingdisposalnetworks ADD COLUMN hash text;
UPDATE dsny_facilities_refuseandrecyclingdisposalnetworks SET hash = md5(CAST((dsny_facilities_refuseandrecyclingdisposalnetworks.*) AS text));
