var c = require('child_process');

module.exports = function(dataset) {
  return new Promise(
      function(resolve, reject) {
        //load dependencies
        var Mustache = require('mustache'),
          exec = require('child_process').exec;

        var db = require('./dbconfig.js');
        var dirPath = './datasets/' + dataset;

        //get the configuration for this dataset from its data.json file
        var config = require(dirPath + '/data.json')
  
        //shp2pgsql method
        if(config.load == 'shp2pgsql') {
          console.log('Pushing into database using ' + config.load + '...');

          //recursive function to run through the loadfiles one by one
          var loadFiles = config.loadFiles;

          var i=0;
          (function push(i) {
            console.log(i);
            if(i < loadFiles.length) {
              var filePath = './temp/' + dataset + '/' + loadFiles[i].file

              var shp2pgsqlOptions = {
                options: config.shp2pgsql.join(' '),
                filePath: filePath,
                database: db.database,
                user: db.user,
                table: loadFiles[i].table
              }

              var shp2pgsql = Mustache.render('shp2pgsql {{options}} {{{filePath}}} {{table}} | psql -d {{database}} -U {{user}}', shp2pgsqlOptions);
                
              console.log('Executing: ' + shp2pgsql);
              exec(shp2pgsql, {}, function(err, stdout, stderr) {
                  console.log(err, stdout, stderr);
                  i++;
                  (i==loadFiles.length) ? resolve() : push(i);
              })
            }
          })(0);
        }


        //org2ogr method
        if(config.load == 'org2ogr') {
          console.log('Pushing into database using ' + config.load + '...');

          //recursive function to run through the loadfiles one by one
          var loadFiles = config.loadFiles;

          var i=0;
          (function push(i) {
            console.log(i);
            if(i < loadFiles.length) {
              var filePath = './temp/' + dataset + '/' + loadFiles[i].file

              var ogr2ogrOptions = {
                options: config.ogr2ogr.join(' '),
                filePath: filePath,
                database: db.database,
                user: db.user,
                table: loadFiles[i].table
              }
                               
              var ogr2ogr = Mustache.render("ogr2ogr -f 'PostgreSQL' PG:'dbname={{database}} {{{filePath}}} -nln {{table}} -overwrite {{options}}", ogr2ogrOptions);
                
              console.log('Executing: ' + ogr2ogr);
              exec(ogr2ogr, {}, function(err, stdout, stderr) {
                  console.log(err, stdout, stderr);
                  i++;
                  (i==loadFiles.length) ? resolve() : push(i);
              })
            }
          })(0);
        }

          
        //csv method
        if(config.load == 'csv') {
          console.log('Pushing into database using ' + config.load + '...');

          //recursive function to run through the loadfiles one by one
          var loadFiles = config.loadFiles;

          var i=0;
          (function push(i) {
            console.log(i);
            if(i < loadFiles.length) {
              var filePath = './temp/' + dataset + '/' + loadFiles[i].file

              config.csv.forEach(function(file) {
                console.log(file);
                if(file == 'create') {
                  var command = Mustache.render('psql -d {{database}} -U {{user}} -f {{{path}}}{{file}}.sql', {
                    user: db.user,
                    database: db.database,
                    path: 'datasets/' + dataset + '/', 
                    file: file
                  });

                  console.log('Executing psql: ' + command)

                  var response = c.execSync(command)
                  console.log('Done', response)
            
                }

                if(file == 'copy') {
                  var loadFile = loadFiles[i].file;


                  var command = Mustache.render('psql -d {{database}} -U {{user}} -c "\\COPY {{dataset}} FROM \'{{{filePath}}}\' CSV HEADER;"', {
                    user: db.user,
                    database: db.database,
                    path: 'datasets/' + dataset + '/',
                    filePath: filePath,
                    dataset: dataset
                  });

                  console.log('Executing psql: ' + command)

                  var response = c.execSync(command)
                  console.log('Done', response)


                }
        
              });
              i++;
              (i==loadFiles.length) ? resolve() : push(i);
            }
          })(0);
        }
      }
    )
}
