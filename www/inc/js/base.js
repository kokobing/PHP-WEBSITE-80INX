var execStr = [],
	png24 = ['.ui-gotop','.js-png'];
var isIE = !','.split(/,/).length, 
	isIE6 = isIE && !window.XMLHttpRequest;
	isIE6 && document.write('<script src="js/DD_belatedPNG_0.0.8a.js" charset="UTF-8"><\/sc'+'ript><\/scri' + 'pt>\n<script>execStr.push(function(){$(png24).each(function(i, el){DD_belatedPNG.fix(el);});});<\/sc' + 'ript>');
	window.onload = function(){
		$(execStr).each(function(i, el){
			el();
		});
	};
	
var inx = {};
	
	inx.bindEvent = function(){
		var screenWidth = screen.width;
			if(screen.width <= 1024){
				$('.ui-navs .ui-logo-80').css('right', '50px');
				$('.ui-service-float').css('right', '5px');
				//$('.ui-gotop-float').css('right', '-10px');
			}
		isIE6 && $('#ui_nav_main .ui-nav-item').each(function(i, el){
			$('span', el).css('width', $(el).width() - 1);
			$(el).hover(function(e){
				$('span', this).show();
			},function(e){
				$('span', this).hide();
			});
		});
		
		$('.js-show').each(function(i, el){
			
			$(el).click(function(e){
				var id = $(this).attr('data-id');
				$('#' + id).removeClass('hide');
				return false;
			})
			
		});
	
		$('.js-blur-hide').each(function(i, el){
			
			$(el).hover(
				function(e){
					$(this).removeClass('hide');
				},
				function(e){
					$(this).addClass('hide');
				}
			)
			
		});
		
		$('.js-click-hide').each(function(i, el){
			$(el).click(function(e){
				$(this).addClass('hide');
				return false;
			});
		})
		var hash = location.hash.slice(0);
		if(hash != ''){
			hash = hash.replace('#','');
			$('.ui-btn-works-group .btn-works-' + hash).addClass('btn-works-' + hash + '-active');
		
		}
		
		$('.js-slideup .ui-list-item').hover(function(e){
			$('.ui-text', this).animate({height:"100px"});
		},function(e){
			$('.ui-text', this).animate({height:"30px"});
		})
		$('.js-slideup-grp .ui-list-item').hover(function(e){
			$('.ui-img-group', this).animate({height:"100px"});
			$('.ui-img-txt', this).animate({'font-size':'14'});
		},function(e){
			$('.ui-img-group', this).animate({height:"30px"});
			$('.ui-img-txt', this).animate({'font-size':'12'});
		})
		
		var eles = $('.js-pos-fixed');
			eles.fadeOut();
		$(window).scroll(function(e){
			
			var scrollTop = Math.max(document.body.scrollTop, document.documentElement.scrollTop); 
			if(isIE6){
				//var clientHeight = Math.max(document.body.clientHeight, document.documentElement.clientHeight);
				//$('.js-pos-fixed').css({'bottom': scrollTop + clientHeight + 'px'});
			}
			if(scrollTop < 400){
				eles.fadeOut();
			}else{
				eles.fadeIn();
			}
			
		})
		
	}

	inx.init = function(){
		$(function(){
			inx.bindEvent();
		})
	}
inx.init();





//--------UECMS ---------------------
var UE = {
    //--------base --------------------
    SCRIPTPATH : "script",
    //--------ABOUT SITE--------------
    SITEPATH : "/",
    //网站根目录获取
    _SITEPATH : function(){
        var SITEPATH = "/";
        var ScriptObj = document.getElementsByTagName("script");
        for(var ii=0 ; ii< ScriptObj.length ; ii++){
            var src = ScriptObj[ii].src.toLowerCase();
            if(src.indexOf("j.js") != -1){
                this.SITEPATH = src.substring(0,src.lastIndexOf(this.SCRIPTPATH + "/j.js"));
                return this.SITEPATH;
            };
        };
    },
    init:function(){
    	this._SITEPATH();
    },
    //---------------Array,object,String---------------
    extend: function(destination, source) {
      for (var property in source) {
        if(source[property]){
          destination[property] = source[property];
        }
      }
      return destination;
    },
    //Object2String
    Obj2String:function(o){
        var r = [];
        if(typeof(o)== "string" || o == null) {return o;};
        if(typeof(o)== "object"){
            if(!o.sort){
                r[0] = "{";
                for(var i in o){
                    r[r.length] = "\""+i+"\"";
                    r[r.length] = ":";
                    r[r.length] = "\""+UE.Obj2String(o[i])+"\"";
                    r[r.length] = ",";
                };
                r[r.length-1] = "}";
            }else{
                r[0] = "[";
                for(var i =0 ; i<o.length ; i++){
                    r[r.length] = UE.Obj2String(o[i]);
                    r[r.length] = ",";
                };
                r[r.length-1] = "]";
            };
            return r.join("");
       };
       return o.toString();
    },
    //页面长宽
    getPageSize:function(){
		var xScroll, yScroll;
		if (window.innerHeight && window.scrollMaxY) {	
			xScroll = document.body.scrollWidth;
			yScroll = window.innerHeight + window.scrollMaxY;
		} else if (document.body.scrollHeight > document.body.offsetHeight){
			xScroll = document.body.scrollWidth;
			yScroll = document.body.scrollHeight;
		} else {
			xScroll = document.body.offsetWidth;
			yScroll = document.body.offsetHeight;
		};
		var windowWidth, windowHeight;
		if (self.innerHeight) {	
			windowWidth = self.innerWidth;
			windowHeight = self.innerHeight;
		} else if (document.documentElement && document.documentElement.clientHeight) {
			windowWidth = document.documentElement.clientWidth;
			windowHeight = document.documentElement.clientHeight;
		} else if (document.body) { 
			windowWidth = document.body.clientWidth;
			windowHeight = document.body.clientHeight;
		};
		if(yScroll < windowHeight){
			pageHeight = windowHeight;
		} else { 
			pageHeight = yScroll;
		};
		if(xScroll < windowWidth){	
			pageWidth = windowWidth;
		} else {
			pageWidth = xScroll;
		};
		arrayPageSize = new Array(pageWidth,pageHeight,windowWidth,windowHeight);
		return arrayPageSize;
	}
};
//-------init UE --------
UE.init();


UE.BLinx = {
    LoveIt : function(id){
        if(!id)return;
        $.getJSON(UE.SITEPATH +"index.asp?act=loveit&did="+id,function(Json){
            if(Json.error!=0){
                alert(Json.error);
                return false;
            };
            //alert("谢谢您的支持!");
            location.reload();
        });    
    }
};
