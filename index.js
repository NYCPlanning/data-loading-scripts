#!/usr/bin/env node

//dependencies
var download = require('download-file'),
  unzip = require('unzip'),
  fs = require('fs'),
  Mustache = require('mustache')
  exec = require('child_process').exec;

//get postgres database config
var db = require('./dbconfig.js')

//get the command that the user passed in
var command = process.argv[2];
var dataset = process.argv[3];

console.log(command)

var dirPath = './datasets/' + dataset;

//get the configuration for this dataset from its data.json file
var config = require(dirPath + '/data.json')

//install = get + push
if (command=='install') {
  getFile(config)
    .then(function(){
      console.log('then')
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
  return new Promise(
    function(resolve, reject) {
      var url = config.url

      console.log('Downloading ' + url)

      var filename = getFilename(url);
      var writePath = './temp/' + dataset;

      var options = {
        directory: writePath,
        filename: filename
      }
     
      download(url, options, function(err){
        if (err) throw err

        console.log('Saved file to ' + writePath + '/' + filename)
        var ext = getExtension(filename);
        if (ext=='zip') {
          console.log('Unzipping ' + writePath + '/' + filename)
          var stream = fs.createReadStream(writePath + '/' + filename)
            .pipe(unzip.Extract({ path: writePath }));
          
          stream.on('close', function() {
            resolve();
          })
        } else {
          resolve();
        }
      }) 
    }
  )
}

function pushFile(config) {
  
  console.log('pushing', config)

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
        console.log(err,stdout, stderr);
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