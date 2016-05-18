#Data Loading Scripts

This repo contains scripts for loading datasets into the Capital Planning PostgreSQL/PostGIS databases.

##Structure

TBD, but ideally the folder names should match or resemble table names in the database.  Or, perhaps tables should be named after their sources.

For now, {agency}_{dataset} is a good name for a folder.

##Workflow

`script.sh` is the main shell script in a folder, which runs whatever other commands are necessary.  The idea is to be able to run a single command and end up with a usable/updated table in our database.

For example, to get and load `dob_permits` data, `script.sh` will perform the following 4 actions:

- use `curl` to download the latest CSV of building permits data from the NYC Open Data Portal
- use `psql` to create a table 
- use `psql` to run postgresql `\COPY` command to load the csv
- use `psql` to run a SQL script that assembles a bbl column


TODO: 
- add local config for postgres credentials