// Generated by CoffeeScript 1.4.0
(function(){$(function(){return $.fn.book=function(e){var t,n,r,i,s,o=this;r=0;t=$(this);n=t.find(".page");console.log(n);i=function(){return r+1>=n.length?r=0:r+=1};s=function(){return r-1<0?r=n.length-1:r-=1};t.on("click","#next_page",function(e){e.preventDefault();$(n[r]).removeClass("active");return $(n[i()]).addClass("active")});t.on("click","#previous_page",function(e){e.preventDefault();$(n[r]).removeClass("active");return $(n[s()]).addClass("active")});return t.on("keydown",function(e){var t;e.preventDefault();t=e.keyCode;console.log("from page number "+r);(t===37||t===38||t===39||t===40)&&$(n[r]).removeClass("active");(t===37||t===38)&&$(n[s()]).addClass("active");(t===39||t===40)&&$(n[i()]).addClass("active");return console.log("to page number "+r)})}})}).call(this);