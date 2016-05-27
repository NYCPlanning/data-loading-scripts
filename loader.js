var Get = require('./get.js');
//var Push = require('./push.js');

//get the command that the user passed in
var command = process.argv[2];

//get the name of the dataset that the user passed in
var dataset = process.argv[3];




//install = get + push
if (command=='install') {
  Get(config)
    .then(function(){
      Push(dataset)
    });
}

//just download 
if (command=='get') {
  Get(dataset);
}

//just push
if (command=='push') {
  Push(config)
}