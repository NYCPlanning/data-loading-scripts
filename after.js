console.log('after.js')
var Mustache = require('mustache')
var db = require('./dbconfig.js')
var exec = require('child_process').exec

var dataset = process.argv[2];
console.log(dataset)

var command = Mustache.render('psql -d {{database}} -U {{user}} -f {{{path}}}after.sql', {
  user: db.user,
  database: db.database,
  path: 'datasets/' + dataset + '/'
});

console.log(command);

exec(command, {}, function(err, stdout, stderr) {
            console.log(err,stdout, stderr);
            console.log('done')
        })