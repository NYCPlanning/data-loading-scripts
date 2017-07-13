var Mustache = require('mustache')
var db = require('./dbconfig.js')
var exec = require('child_process').exec
var fs = require('fs')

// run preprocess.sh
function runCommand(resolve) {
    var command = Mustache.render('./datasets/{{dataset}}/preprocess.sh', {
        dataset: dataset
    });
    console.log(command);
    exec(command, {}, function(err, stdout, stderr) {
        console.log(err, stdout, stderr);
        resolve();
    })
}

const preprocess = (dataset) => {
    return new Promise(function(resolve, reject) {

        console.log('Checking for preprocess script...')
        
        fs.open('datasets/' + dataset + '/preprocess.sh', 'r', function(err) {
            if(err) {
                console.log('No preprocess.sh found.')
                reject();
            } else {
                runCommand(resolve);
            }
        });
    });
}

module.exports = preprocess;
