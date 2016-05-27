#!/usr/bin/env node

//dependencies
var download = require('download-file'),
  unzip = require('unzip'),
  fs = require('fs-extra'),
  Mustache = require('mustache')
  exec = require('child_process').exec,
  FTP = require('ftp-get')

//get postgres database config
var db = require('./dbconfig.js')
var ftpAuth = require('./ftpAuth.js')

//get the command that the user passed in
var command = process.argv[2];
var dataset = process.argv[3];

var dirPath = './datasets/' + dataset;

//get the configuration for this dataset from its data.json file
var config = require(dirPath + '/data.json')

//install = get + push
if (command=='install') {
  getFile(config)
    .then(function(){
      pushFile(config)
    });
}

//just download 
if (command=='get') {
  getFile(config);
}

//just push
if (command=='push') {
  pushFile(config)
}


function getFile(config) {
  

    config.filename = getFilename(config.url);
    config.writePath = './temp/' + dataset;


     if(config.url.indexOf('http') > -1) {
        console.log('it is http');
        return getHTTP(config);
     } else if (config.url.indexOf('ftp') > -1) {
        return getFTP(config);
     }
    
  }


function getHTTP(config) {
  return new Promise(
    function(resolve, reject) {
        console.log('Downloading ' + config.url)

        var options = {
          directory: config.writePath,
          filename: config.filename
        }
        download(config.url, options, function(err){
        if (err) throw err

        console.log('Saved file to ' + config.writePath + '/' + config.filename)
        var ext = getExtension(config.filename);
        if (ext=='zip') {
          console.log('Unzipping ' + config.writePath + '/' + config.filename)
          fs.createReadStream(config.writePath + '/' + config.filename)
            .pipe(unzip.Extract({ path: config.writePath }));
          resolve();
        } else {
          resolve();
        }
      }) 
    })
}

function getFTP(config) {
  return new Promise(
    function(resolve, reject) {

      config.url=Mustache.render(config.url, ftpAuth)
      console.log('Downloading ' + config.url)
      fs.emptyDirSync(config.writePath);
      FTP.get(config.url, config.writePath + '/' + config.filename, function (err, res) {
        if(!err) {
          console.log('Saved file to ' + config.writePath + '/' + config.filename)
          var ext = getExtension(config.filename);
          if (ext=='zip') {
            console.log('Unzipping ' + config.writePath + '/' + config.filename)
            fs.createReadStream(config.writePath + '/' + config.filename)
              .pipe(unzip.Extract({ path: config.writePath }));
            resolve();
          } else {
            resolve();
          }
        }
      })
    });
}

function pushFile(config) {
  console.log('pushFile', config)
  
  if(config.load == 'shp2pgsql') {
    console.log('Pushing into database using ' + config.load + '...');
    var filePath = './temp/' + dataset + '/' + config.loadFile

    var shp2pgsqlOptions = {
      options: config.shp2pgsql.join(' '),
      filePath: filePath,
      database: db.database,
      user: db.user,
      table: config.table
    }

    var shp2pgsql = Mustache.render('shp2pgsql {{options}} {{{filePath}}} {{table}} | psql -d {{database}} -U {{user}}', shp2pgsqlOptions);
      
    console.log('Executing: ' + shp2pgsql);

    exec(shp2pgsql, {}, function(err, stdout, stderr) {
        console.log(stdout);
    })
  }
}

// you can send full url here
function getFilename(url) {
    return url.split('/').pop();
}

function getExtension(filename) {
    return filename.split('.').pop();
}