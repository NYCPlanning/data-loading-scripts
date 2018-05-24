import xmltodict
import shapely.geometry
import pandas as pd
import geopandas as gp
import subprocess
import os

# make sure we are at the top of the repo
wd = subprocess.check_output('git rev-parse --show-toplevel', shell = True)
os.chdir(wd[:-1]) #-1 removes \n

# XML parse
with open('./temp/dcp_metadata/mappluto_meta.xml') as fd:
    doc = xmltodict.parse(fd.read())

num_proj = len(doc['metadata']['idinfo'])

# loop through projects
caps = []
for proj in list(range(num_proj)):
    proj_id = doc['metadata']['idinfo'][proj]['citation']
    fmsid = doc['metadata']['idinfo'][proj]['descript']
    desc =  doc['metadata']['idinfo'][proj]['timeperd']
    total_funding =  doc['metadata']['idinfo'][proj]['status']
    lonlats = []
    park_ids = []
    park_ids.append(park_id)    
    # parsed data combinations
    caps.append([proj_id, fmsid, desc, total_funding, park_ids, lonlats])

caps_df = gp.GeoDataFrame(caps,
                          columns = ['proj_id',
                                     'fmsid',
                                     'desc',
                                     'total_funding',
                                     'park_id'],
                          crs = {'init':'epsg:4326'}                          
                          )


# write to file
caps_df.to_file('./temp/dcp_metadata/mappluto_meta.csv')
