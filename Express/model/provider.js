var test = require('../lib/mysql_expressdb');
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
    var where = ' WHERE 1 ';
    if (req.query.provider_region) {
        where += " and provider_region='" + req.query.provider_region + "' ";
    }

    if (req.query.provider_name) {
        where += " and provider_name='" + req.query.provider_name + "' ";
    }

    async.series({
        one: function (done) {
            test.index("select * from providers " + where + " order by provider_id asc limit " + (parseInt(page) - 1) * pagesize + "," + pagesize, function (list) {
                done(null, list);
            });
        },
        two: function (done) {
            test.index("SELECT COUNT(*) AS total FROM providers" + where, function (list) {
                done(null, list);
            });
        },
        three: function (done) {
            test.index("select provider_region from providers group by provider_region", function (list) {
                done(null, list);
            });
        }
        
    }, function (error, result) {
        result.one.forEach(function (provider) {
            provider.receipt_time = parseInt(provider.receipt_time) ? parseInt(provider.receipt_time) - parseInt(provider.send_time) : 'NO';
            provider.send_time = moment(provider.send_time * 1000).format('Y-MM-DD HH:mm:ss');
        });
        res.render('provider', {
            providerlist: result.one,

            regionlist: result.three,

            page: showPage.show(url, result.two[0].total, pagesize, page),

            provider_region: req.query.provider_region,       //filter by region
            provider_name: req.query.provider_name,               //search by provider name
        });

    })
};




exports.add = function (req, res) {

    var provider_name = req.body.provider_name;
    var provider_region = req.body.provider_region;
    var provider_address = req.body.provider_address;
    var provider_phone = req.body.provider_phone;

    async.series({
        one: function (done) {
            test.index("INSERT INTO `providers` (`provider_name`, `provider_region`,`provider_address`,`provider_phone`) VALUES ('" + provider_name + "', '" + provider_region + "', '" + provider_address + "', '" + provider_phone + "')", function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/provider');
    });
};

exports.edit = function (req, res) {
    var provider_id = req.query.provider_id; //获取当前页数，如果没有则为1

    async.series({
        one: function (done) {
            test.index("select * from providers where provider_id = " + provider_id, function (list) {
                done(null, list);
            });
        },
        
    }, function (error, result) {
        res.render('provider_edit', {
            
            providers: result.one[0],
            
        });

        console.log(result.one[0]);
        
    })
};


exports.update = function (req, res) {
    var provider_id = req.body.provider_id;
    var change = new Array();

    if (req.body.provider_name) {
        change = change.concat("provider_name='" + req.body.provider_name + "'");
    }
    if (req.body.provider_region) {
        //change = change.concat("password='" + md5(req.body.password) + "'");
        change = change.concat("provider_region='" + req.body.provider_region + "'");
    }
    if (req.body.provider_price_type) {
        //change = change.concat("password='" + md5(req.body.password) + "'");
        change = change.concat("provider_price_type='" + req.body.provider_price_type + "'");
    }
    if (req.body.provider_provider) {
        //change = change.concat("password='" + md5(req.body.password) + "'");
        change = change.concat("provider_provider='" + req.body.provider_provider + "'");
    }


    change = change.join(",");

    console.log(change);


    async.series({
        one: function (done) {
            test.index("UPDATE `providers` SET " + change + " WHERE `provider_id` = " + provider_id, function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/provider');
    });
};


exports.delete = function (req, res) {
    var provider_id = req.query.provider_id;

    console.log(provider_id);

    async.series({
        one: function (done) {
            test.index("DELETE FROM `providers` WHERE `provider_id` = " + provider_id, function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/provider');
    });
};
