# Data Loading Scripts

A node.js CLI tool for automated dataset loading into the DCP Capital Planning Database, making the full refresh of a dataset as simple as `node loader install {datasetName}` Based loosely on [docker4data](https://github.com/talos/docker4data)

## Structure

`datasetName` is important, and for now takes the form of {agency}_{dataset}, e.g. `dcp_mappluto`.  Each dataset should have a folder with its datasetName in the `datasets` directory.  When executing the CLI tool, the datasetName is passed in as an argument, and the script searches for `{datasetName}/data.json` and then runs accordingly.

## data.json

`data.json` includes everything the script needs to download, process, and load the dataset.  An example `data.json` for NYC borough boundaries looks like:

```
{
  "url": "http://www1.nyc.gov/assets/planning/download/zip/data-maps/open-data/nybb16b.zip",
  
  "load": "shp2pgsql",
  "loadFiles": [
    {
      "file":"nybb_16b/nybb.shp",
      "table": "dcp_boroughboundaries"
    }
  ],
  "shp2pgsql": [ 
    "-d",
    "-s 2263:4326"
  ] 
}
```
- `url` - the download link, grabbed when using the `Get` method.
- `load` - which loading type to use.  `shp2pgsql` is the only one working right now and easily imports shapefiles. Future types will include 'psql' with specified SQL file stored in the dataset's directory, and `ogr2ogr`, etc.  We will add new types as needed.
- `loadFiles` - an array of files to be loaded when using the `Push` method.  Most datasets will just have one, but some, like pluto, have a single file to download but many files to upload.  
- `shp2pgsql` - an array of arguments for the shp2pgsql command.  Only used if `load` is set to 'shp2pgsql'

## after.sql

After `Push` completes, the script will check for the existence of `after.sql` in the dataset directory.  If it exists, it will execute it with `psql`.  This can be used for post-processing in PostgreSQL, such as combining the 5 mappluto tables into one and deleting the source tables.

## How to Use

- Clone this repo
- Install dependencies `npm install`
- Add your postGIS connection info by updating `dbconfig.sample.js` and saving it as `dbconfig.js`
- Add FTP credentials if necessary by updating `ftpauth.sample.js` and saving it as `ftpauth.js`
- Enter `node loader {command} {datasetName}` in the terminal, like `node loader install dcp_boroboundaries`
- Watch the magic happen!

## Commands

The workflows are divided into 3 parts for now, `get`, `push`, and `after`.  

- `get` downloads the file to the temp directory and unzips if necessary
- `push` grabs the file(s) from the temp directory and loads it(them) into the database
- `after` always runs after `push` and checks for `after.sql` in the dataset directory.  If it exists, it will execute the sql
- `install` does both `get` and `push`


TODO: 
- lots of error handling
- add all the datas!
