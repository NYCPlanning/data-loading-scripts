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
                  console.log(stdout);
                  i++;
                  (i==loadFiles.length) ? resolve() : push(i);
              })
            }
          })(0);
        }
      }
    )
}
