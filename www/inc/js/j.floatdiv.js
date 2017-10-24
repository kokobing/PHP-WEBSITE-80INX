eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('R.S.T=E(f,c){c=c||{};4 g=U;4 h={};4 i=V.W.X();4 s;(s=i.Y(/Z ([\\d.]+)/))?h.A=s[1]:0;m(h.A&&h.A=="6.0"){g=10}4 j,8;m(B.F){j=B.11;8=B.F}w m(n.o&&n.o.x){j=n.o.G;8=n.o.x}w m(n.r){j=n.r.G;8=n.r.x}12 5.13(E(){4 a;4 b=$("<H></H>");4 d=-1;m(f==C||f.14==15){16(f){9("I"):a={y:"3",z:"3"};7;9("17"):a={q:"3",z:"3"};7;9("18"):a={q:"3",k:"3"};d=0;7;9("19"):a={y:"3",k:"3"};d=0;7;9("1a"):a={q:j/2-$(5).D()/2+"p",k:"3"};d=0;7;9("1b"):a={q:j/2-$(5).D()/2+"p",z:"3"};7;9("1c"):a={q:"3",k:8/2-$(5).u()/2+"p"};d=8/2-$(5).u()/2;7;9("1d"):a={y:"3",k:8/2-$(5).u()/2+"p"};d=8/2-$(5).u()/2;7;9("1e"):4 l=0;4 t=0;l=j/2-$(5).D()/2;t=8/2-$(5).u()/2;d=t;a={q:l+"p",k:t+"p"};7;1f:f="I";a={y:"3",z:"3"};7}}w{a=f;4 e=a.k;m(J(e)!=\'C\'){e=e.1g("p","");d=e}}$("r").1h(b);b.v(a).v({K:"L",1i:(J(c.M)!=\'C\'?""+c.M+"":"1")});m(g){b.v("K","1j");$("r").v("N-1k","L").v("N-1l","1m(1n.1o)");m(d>=0){b[0].O.P(\'k\',\'o.Q+\'+d+\'\')}w{b[0].O.P(\'k\',\'o.Q+o.x-5.1p\')}}$(5).1q(b)})};',62,89,'|||0px|var|this||break|windowHeight|case|||||||||||top||if|document|documentElement|px|left|body|||height|css|else|clientHeight|right|bottom|ie|self|undefined|width|function|innerHeight|clientWidth|div|rightbottom|typeof|position|fixed|zindex|background|style|setExpression|scrollTop|jQuery|fn|floatdiv|false|navigator|userAgent|toLowerCase|match|msie|true|innerWidth|return|each|constructor|String|switch|leftbottom|lefttop|righttop|middletop|middlebottom|leftmiddle|rightmiddle|middle|default|replace|append|z_index|absolute|attachment|image|url|n1othing|txt|offsetHeight|appendTo'.split('|'),0,{}));

$.extend({
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
		}
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
		}	
		if(yScroll < windowHeight){
			pageHeight = windowHeight;
		} else { 
			pageHeight = yScroll;
		}
		if(xScroll < windowWidth){	
			pageWidth = windowWidth;
		} else {
			pageWidth = xScroll;
		}
		//alert(pageWidth+"--"+pageHeight+"--"+windowWidth+"--"+windowHeight);
		arrayPageSize = new Array(pageWidth,pageHeight,windowWidth,windowHeight);
		return arrayPageSize;
	}
});