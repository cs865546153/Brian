var test = require('../lib/mysql_testdb');
var showPage = require('../lib/page');
var async = require('async');
var moment = require('moment');
var pagesize = 20;

exports.index = function (req, res) {
    var page = req.query.page ? req.query.page : 1; //获取当前页数，如果没有则为1
    var url = req.originalUrl; //获取当前url，并把url中page参数过滤掉
    url = url.replace(/([?&]*)page=([0-9]+)/g, '');
    if (/[?]+/.test(url)) {
        url += '&';
    } else {
        url += '?';
    }

    async.series({
        one: function (done) {
            test.index("select * from admin_role order by role_id asc limit " + (parseInt(page) - 1) * pagesize + "," + pagesize, function (list) {
                done(null, list);
            });
        },
        two: function (done) {
            test.index("SELECT COUNT(*) AS total FROM admin_role", function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.render('role', {
            rolelist: result.one,
            page: showPage.show(url, result.two[0].total, pagesize, page),
        });
    })
};

exports.add = function (req, res) {
    var role_name = req.body.role_name;
    var role_auths = req.body.role_auths;

    async.series({
        one: function (done) {
            test.index("INSERT INTO `admin_role` (`role_name`, `role_auths`) VALUES ('" + role_name + "', '" + role_auths + "')", function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/role');
    });
};

exports.edit = function (req, res) {
    var role_id = req.query.role_id; //获取当前页数，如果没有则为1

    async.series({
        one: function (done) {
            test.index("select * from admin_role where role_id = "+role_id, function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.render('role_edit', {
            role: result.one[0]
        });
    })
};

exports.update = function (req, res) {
    var role_id = req.body.role_id;
    var role_name = req.body.role_name;
    var role_auths = req.body.role_auths;

    async.series({
        one: function (done) {
            test.index("UPDATE `admin_role` SET `role_name` = '" + role_name + "',`role_auths` = '" + role_auths + "' WHERE `role_id` = " + role_id, function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/role');
    });
};

exports.delete = function (req, res) {
    var role_id = req.query.role_id;

    async.series({
        one: function (done) {
            test.index("DELETE FROM `admin_role` WHERE `role_id` = " + role_id, function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/role');
    });
};
