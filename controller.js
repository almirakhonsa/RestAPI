'use strict';

var response = require('./res');
var connection = require('./conn');

exports.users = function(req, res) {
    connection.query('SELECT * FROM stories', function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, res)
        }
    });
};

exports.index = function(req, res) {
    response.ok("Hello from the NodeJS RESTful side!", res)
};

exports.findUsers = function(req, res) {
    
    var story_id = req.params.story_id;

    connection.query('SELECT title FROM stories where story_id = ?',
    [ story_id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, res)
        }
    });
};