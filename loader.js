var Get = require('./get.js');
var Preprocess = require('./preprocess.js');
var Push = require('./push.js');
var After = require('./after.js');

//get the command that the user passed in
var command = process.argv[2];

//get the name of the dataset that the user passed in
var dataset = process.argv[3];

//install = get + push
if (command=='install') {
    Get(dataset)
        .then(function(){
          setTimeout(() => {
            Preprocess(dataset)
                .then(function(){
                    Push(dataset)
                        .then(function(){
                            After(dataset);
                        })
                        .catch(function(){
                            After(dataset);
                        })
                })
                .catch(function(){
                  console.log('preprocess failed')
                    Push(dataset)
                        .then(function(){
                            After(dataset);
                        })
                        .catch(function(){
                            After(dataset);
                        })
                })
          }, 1000)
        })
        .catch(() => {})
};

//just download 
if (command=='get') {
  Get(dataset);
}

//just preprocess
if (command=='preprocess') {
  Preprocess(dataset);
}

//just push
if (command=='push') {
  Push(dataset)
//    .then(function(){
//      After(dataset);
//    })
}

//just after
if (command=='after') {
  After(dataset);
}
