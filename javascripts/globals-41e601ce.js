(function(){$(function(){return window.Dispatches||(window.Dispatches={}),Dispatches.providerUrl=$("body").data("provider"),Dispatches.performRequest=function(r,n){return $.ajax({url:r,dataType:"jsonp",crossDomain:!0,success:function(r){return n(r)},error:function(r,n,o){return console.log(n+" "+o)}})}})}).call(this);