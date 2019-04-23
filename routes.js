'use strict';

module.exports = function(app) {
    var todoList = require('./controller');

    app.route('/')
        .get(todoList.index);

    app.route('/story')
        .get(todoList.users);

    app.route('/story/:story_id')
        .get(todoList.findUsers);
};