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
    if (req.query.item_provider) {
        where += " and item_provider='" + req.query.item_provider + "' ";
    }

    if (req.query.item_name) {
        where += " and item_name='" + req.query.item_name + "' ";
    }

    async.series({
        one: function (done) {
            test.index("select * from items " + where + " order by item_id asc limit " + (parseInt(page) - 1) * pagesize + "," + pagesize, function (list) {
                done(null, list);
            });
        },
        two: function (done) {
            test.index("SELECT COUNT(*) AS total FROM items" + where, function (list) {
                done(null, list);
            });
        },
        three: function (done) {
            test.index("select * from `providers`", function (list) {
                done(null, list);
            });
        }
        
    }, function (error, result) {
        result.one.forEach(function (item) {
            item.receipt_time = parseInt(item.receipt_time) ? parseInt(item.receipt_time) - parseInt(item.send_time) : 'NO';
            item.send_time = moment(item.send_time * 1000).format('Y-MM-DD HH:mm:ss');
        });
        res.render('item', {
            itemlist: result.one,
            providerlist: result.three,
            
            page: showPage.show(url, result.two[0].total, pagesize, page),

            item_provider: req.query.item_provider,       //filter by provider
            item_name: req.query.item_name,               //search by item name
        });

    })
};




exports.add = function (req, res) {
    // var key = new Array();
    // var value = new Array();

    // if (req.body.item_name) {
    //     key = key.concat("item_name");
    //     value = value.concat("'" + req.body.item_name + "'");
    // }
    // if (req.body.item_price) {
    //     key = key.concat("item_price");
    //     value = value.concat("'" + req.body.item_price + "'");
    // }
    // if (req.body.item_price_type) {
    //     key = key.concat("item_price_type");
    //     value = value.concat("'" + req.body.item_price_type + "'");
    // }
    // if (req.body.item_provider) {
    //     key = key.concat("item_provider");                              
    //     value = value.concat("'" + req.body.item_provider + "'");
    // }

    // console.log( key.join(",") + value.join(",") );

    // async.series({
    //     one: function (done) {
    //         test.index("INSERT INTO `items` (" + key.join(",") + ") VALUES (" + value.join(",") + ")", function (list) {
    //             done(null, list);
    //         });
    //     }
    // }, function (error, result) {
    //     res.redirect('/item');
    // });

    var item_name = req.body.item_name;
    var item_price = req.body.item_price;
    var item_price_type = req.body.item_price_type;
    var item_provider = req.body.item_provider;

    async.series({
        one: function (done) {
            test.index("INSERT INTO `items` (`item_name`, `item_price`,`item_price_type`,`item_provider`) VALUES ('" + item_name + "', '" + item_price + "', '" + item_price_type + "', '" + item_provider + "')", function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/item');
    });
};

exports.edit = function (req, res) {
    var item_id = req.query.item_id; //获取当前页数，如果没有则为1

    async.series({
        one: function (done) {
            test.index("select * from items where item_id = " + item_id, function (list) {
                done(null, list);
            });
        },


        three: function (done) {
            test.index("select * from `providers`", function (list) {
                done(null, list);
            });
        }
        
    }, function (error, result) {
        res.render('item_edit', {
            
            items: result.one[0],
            providerlist: result.three,
            
        });


        
    })
};


exports.update = function (req, res) {
    var item_id = req.body.item_id;
    var change = new Array();

    if (req.body.item_name) {
        change = change.concat("item_name='" + req.body.item_name + "'");
    }
    if (req.body.item_price) {
        //change = change.concat("password='" + md5(req.body.password) + "'");
        change = change.concat("item_price='" + req.body.item_price + "'");
    }
    if (req.body.item_price_type) {
        //change = change.concat("password='" + md5(req.body.password) + "'");
        change = change.concat("item_price_type='" + req.body.item_price_type + "'");
    }
    if (req.body.item_provider) {
        //change = change.concat("password='" + md5(req.body.password) + "'");
        change = change.concat("item_provider='" + req.body.item_provider + "'");
    }


    change = change.join(",");

    console.log(change);


    async.series({
        one: function (done) {
            test.index("UPDATE `items` SET " + change + " WHERE `item_id` = " + item_id, function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/item');
    });
};


exports.delete = function (req, res) {
    var item_id = req.query.item_id;

    console.log(item_id);
    async.series({
        one: function (done) {
            test.index("DELETE FROM `items` WHERE `item_id` = " + item_id, function (list) {
                done(null, list);
            });
        }
    }, function (error, result) {
        res.redirect('/item');
    });
};
