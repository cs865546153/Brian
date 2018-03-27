var test = require('../lib/mysql_testdb');
var showPage = require('../lib/page');
var async = require('async');
var moment = require('moment');
var pagesize = 20;
var md5 = require('md5');

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
            test.index("select a.admin_id,a.user,b.role_name as role,a.lastlogintime from admins as a left join admin_role as b on a.roleid=b.role_id order by admin_id asc limit " + (parseInt(page) - 1) * pagesize + "," + pagesize, function (list) {
                done(null, list);
            });
        },
        two: function (done) {
            test.index("SELECT COUNT(*) AS total FROM admins", function (list) {
                done(null, list);
            });
        },
        three: function (done) {
            test.index("select * from `admin_role`", function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        result.one.forEach(function (item) {
            item.lastlogintime = item.lastlogintime != null ? moment(item.lastlogintime * 1000).format('YYYY-MM-DD HH:mm:ss') : "从未登陆";
        });
        res.render('user', {
            smslist: result.one,
            rolelist: result.three,
            page: showPage.show(url, result.two[0].total, pagesize, page),
        });
    })
};

exports.add = function (req, res) {
    var key = new Array();
    var value = new Array();

    if (req.body.role_id) {
        key = key.concat("roleid");                               //insert to the table admins.  key = roleid,  value = role_id
        value = value.concat("'" + req.body.role_id + "'");
    }
    if (req.body.user) {
        key = key.concat("user");
        value = value.concat("'" + req.body.user + "'");
    }
    if (req.body.password) {
        key = key.concat("password");
        //value = value.concat("'" + md5(req.body.password) + "'");
        value = value.concat("'" + req.body.password + "'");

    }

    async.series({
        one: function (done) {
            test.index("INSERT INTO `admins` (" + key.join(",") + ") VALUES (" + value.join(",") + ")", function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/user');
    });
};

exports.edit = function (req, res) {
    var admin_id = req.query.admin_id; //获取当前页数，如果没有则为1

    async.series({
        one: function (done) {
            test.index("select * from admins where admin_id = " + admin_id, function (list) {
                done(null, list);
            });
        },
        two: function (done) {
            test.index("select * from `admin_role`", function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.render('user_edit', {
            rolelist: result.two,
            users: result.one[0],
        });
        
    })
};

exports.update = function (req, res) {
    var admin_id = req.body.admin_id;
    var change = new Array();
    if (req.body.roleid) {
        change = change.concat("roleid='" + req.body.role_id + "'");
    }
    if (req.body.user) {
        change = change.concat("user='" + req.body.user + "'");
    }
    if (req.body.password) {
        //change = change.concat("password='" + md5(req.body.password) + "'");
        change = change.concat("password='" + req.body.password + "'");
    }

    change = change.join(",");

    async.series({
        one: function (done) {
            test.index("UPDATE `admins` SET " + change + " WHERE `admin_id` = " + admin_id, function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/user');
    });
};

exports.delete = function (req, res) {
    var admin_id = req.query.admin_id;

    async.series({
        one: function (done) {
            test.index("DELETE FROM `admins` WHERE `admin_id` = " + admin_id, function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/user');
    });
};
