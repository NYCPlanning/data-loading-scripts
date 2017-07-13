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
with open('./temp/dpr_capitalprojects/dpr_capitalprojects.xml') as fd:
    doc = xmltodict.parse(fd.read())

num_proj = len(doc['root']['capitalproject'])

# loop through projects
caps = []
for proj in list(range(num_proj)):
    proj_id = doc['root']['capitalproject'][proj]['TrackerID']
    fmsid = doc['root']['capitalproject'][proj]['FMSID']
    desc =  doc['root']['capitalproject'][proj]['Title']
    total_funding =  doc['root']['capitalproject'][proj]['TotalFunding']
    latlons = []
    park_ids = []
    if type(doc['root']['capitalproject'][proj]['Locations']['Location']) is list:
        for loc in range(len(doc['root']['capitalproject'][proj]['Locations']['Location'])):
            lat = doc['root']['capitalproject'][proj]['Locations']['Location'][loc]['Latitude']
            lon = doc['root']['capitalproject'][proj]['Locations']['Location'][loc]['Longitude']
            park_id = doc['root']['capitalproject'][proj]['Locations']['Location'][loc]['ParkID']
            latlons.append((float(lat), float(lon)))
            park_ids.append(park_id)
    else:
        lat = doc['root']['capitalproject'][proj]['Locations']['Location']['Latitude']
        lon = doc['root']['capitalproject'][proj]['Locations']['Location']['Longitude']
        park_id = doc['root']['capitalproject'][proj]['Locations']['Location']['ParkID']
        latlons.append((float(lat), float(lon)))
        if park_id is None:
            park_id = 'NA'
        park_ids.append(park_id)    
    # parsed data combinations
    latlons = shapely.geometry.MultiPoint(latlons)
    park_ids = ','.join(p for p in park_ids)
    caps.append([proj_id, fmsid, desc, total_funding, park_ids, latlons])

caps_df = gp.GeoDataFrame(caps,
                          columns = ['proj_id',
                                     'fmsid',
                                     'desc',
                                     'total_funding',
                                     'park_id',
                                     'geom'],
                          crs = {'init':'epsg:4326'},
                          geometry = 'geom'
                          )
# write to shapefile
caps_df.to_file('./temp/dpr_capitalprojects/dpr_capitalprojects.shp', driver = 'ESRI Shapefile')
