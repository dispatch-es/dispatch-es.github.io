(function(){var n,t,e,r;e=void 0,t=function(n){var t;return n?(t=n.type,t.indexOf(":")>-1?t.split(":")[0]:t.match(/[A-Z]?[a-z]+|[0-9]+/g)[0]):!1},r=function(n){return e=t(n),Pace.restart()},n=function(n){return t(n)===e?(e=void 0,$("#main").hide(),Pace.restart(),Pace.on("done",function(){return $("#main").fadeIn(function(){return $(window).trigger("resize")})})):void 0},$(document).on("page:fetch",function(n){return r(n)}),$(document).on("page:change",function(t){return n(t)})}).call(this);