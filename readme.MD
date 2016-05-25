#Data Loading Scripts

A node.js CLI tool for automated dataset loading into the DCP Capital Planning Database, making the full refresh of a dataset as simple as `data install {datasetName}` Based loosely on [docker4data](https://github.com/talos/docker4data)

##Structure

`datasetName` is important, and for now takes the form of {agency}_{dataset}, e.g. `dcp_mappluto`.  Each dataset should have a folder with its datasetName in the `datasets` directory.  When executing the CLI tool, the datasetName is passed in as an argument, and the script searches for `{datasetName}/data.json` and then runs accordingly.

##data.json

`data.json` includes everything the script needs to download, process, and load the dataset.  An example `data.json` for NYC borough boundaries looks like:

```
{
  "url": "http://www1.nyc.gov/assets/planning/download/zip/data-maps/open-data/nybb16b.zip",
  "table": "dcp_boroughboundaries",
  "load": "shp2pgsql",
  "loadFile": "nybb_16b/nybb.shp",
  "shp2pgsql": [ 
    "-d",
    "-s 2263:4326"
  ] 
}
```
- `url` - the download link 
- `table` - the tablename to be used when loading the data
- `load` - which loading type to use.  `shp2pgsql` is the only one working right now and easily imports shapefiles. Future types will include 'psql' with specified SQL file stored in the dataset's directory, and `ogr2ogr`, etc.  We will add new types as needed.


##How to Use

- Clone this repo
- Install globally to make the CLI command `data` available. `npm install -g`
- Add your postGIS connection info by updating `dbconfig.sample.js` and saving it as `dbconfig.js`
- Enter `data {command} {datasetName}` in the terminal, like `data install dcp_boroboundaries

##Commands

The workflows are divided into 2 parts for now, `get` and `push`.  

- `get` downloads the file to the temp directory and unzips if necessary
- `push` grabs the file from the temp directory and loads it into the database
- `install` does the entire workflow

We may want to add `after` for SQL to be executed on the dataset after it has been loaded (to change column types, etc)


TODO: 
- error handling