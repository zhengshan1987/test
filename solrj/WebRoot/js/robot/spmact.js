/*pub-1|2013-05-29 11:03:48*/(function(){var i=window,x=document,m=location,o=m.href,s=i._alimm_spmact_on_;if(typeof s=="undefined"){s=1}if(s==1){s=1}if(s==0){s=0}if(!s){return}try{var a=i.g_SPM.getParam}catch(u){a=function(){return{a:0,b:0,c:0,d:0,e:0}}}var j=true;try{j=(self.location!=top.location)}catch(u){}var v="data-spm-act-id";var h=["mclick.simba.taobao.com","click.simba.taobao.com","click.tanx.com","click.mz.simba.taobao.com","click.tz.simba.taobao.com","redirect.simba.taobao.com","rdstat.tanx.com","stat.simba.taobao.com","s.click.taobao.com"];var c=!!x.attachEvent;var b="attachEvent";var n="addEventListener";var f=c?b:n;function r(y,z,e){y[f]((c?"on":"")+z,function(B){B=B||i.event;var A=B.target||B.srcElement;e(B,A)},false)}function p(){if(/&?\bspm=[^&#]*/.test(location.href)){return location.href.match(/&?\bspm=[^&#]*/ig)[0].split("=")[1]}return""}function w(z,F){if(z&&/&?\bspm=[^&#]*/.test(z)){z=z.replace(/&?\bspm=[^&#]*/g,"").replace(/&{2,}/g,"&").replace(/\?&/,"?").replace(/\?$/,"")}if(!F){return z}var G,C,E,D="&",A,y,e,B;if(z.indexOf("#")!=-1){E=z.split("#");z=E.shift();C=E.join("#")}A=z.split("?");y=A.length-1;E=A[0].split("//");E=E[E.length-1].split("/");e=E.length>1?E.pop():"";if(y>0){G=A.pop();z=A.join("?")}if(G&&y>1&&G.indexOf("&")==-1&&G.indexOf("%")!=-1){D="%26"}z=z+"?spm="+F+(G?(D+G):"")+(C?("#"+C):"");B=e.indexOf(".")>-1?e.split(".").pop().toLowerCase():"";if(B){if(({png:1,jpg:1,jpeg:1,gif:1,bmp:1,swf:1}).hasOwnProperty(B)){return 0}if(!G&&y<=1){if(!C&&!({htm:1,html:1,php:1}).hasOwnProperty(B)){z+="&file="+e}}}return z}function d(z){var E=window.location.href;var y=E.match(/mm_\d{0,24}_\d{0,24}_\d{0,24}/i);var C=E.match(/[&\?](pvid=[^&]*)/i);var A=new RegExp("%3Dmm_\\d+_\\d+_\\d+","ig");var B=new RegExp("mm_\\d+_\\d+_\\d+","ig");function D(F){F=F.replace(/refpos[=(%3D)]\w*/ig,e).replace(A,"%3D"+y+"%26"+C.replace("=","%3D")).replace(B,y);if(C.length>0){F+="&"+C}return F}if(C&&C[1]){C=C[1]}else{C=""}var e=E.match(/(refpos=(\d{0,24}_\d{0,24}_\d{0,24})?(,[a-z]+)?)(,[a-z]+)?/i);if(e&&e[0]){e=e[0]}else{e=""}if(y){y=y[0];return D(z)}return z}function l(e){var y=i.KISSY;if(y){y.ready(e)}else{if(i.jQuery){jQuery(x).ready(e)}else{if(x.readyState==="complete"){e()}else{r(i,"load",e)}}}}function t(e,y){return e&&e.getAttribute?(e.getAttribute(y)||""):""}function q(y){if(!y){return}var z,e=h.length;for(z=0;z<e;z++){if(y.indexOf(h[z])>-1){return true}}return false}function g(z,F){if(z&&/&?\bspm=[^&#]*/.test(z)){z=z.replace(/&?\bspm=[^&#]*/g,"").replace(/&{2,}/g,"&").replace(/\?&/,"?").replace(/\?$/,"")}if(!F){return z}var G,C,E,D="&",A,y,e,B;if(z.indexOf("#")!=-1){E=z.split("#");z=E.shift();C=E.join("#")}A=z.split("?");y=A.length-1;E=A[0].split("//");E=E[E.length-1].split("/");e=E.length>1?E.pop():"";if(y>0){G=A.pop();z=A.join("?")}if(G&&y>1&&G.indexOf("&")==-1&&G.indexOf("%")!=-1){D="%26"}z=z+"?spm="+F+(G?(D+G):"")+(C?("#"+C):"");B=e.indexOf(".")>-1?e.split(".").pop().toLowerCase():"";if(B){if(({png:1,jpg:1,jpeg:1,gif:1,bmp:1,swf:1}).hasOwnProperty(B)){return 0}if(!G&&y<=1){if(!C&&!({htm:1,html:1,php:1}).hasOwnProperty(B)){z+="&__file="+e}}}return z}function k(y){if(q(y.href)){var z=t(y,v);if(!z){if(!a){return}var A=a(y),B=[A.a,A.b,A.c,A.d,A.e].join(".");if(j){B=[A.a||"0",A.b||"0",A.c||"0",A.d||"0"].join(".");B=(p()||"0.0.0.0.0")+"_"+B}var e=g(y.href,B);y.href=e;y.setAttribute(v,B)}}y=undefined}r(x,"mousedown",function(A,z){var B,y=0;while(z&&(B=z.tagName)&&y<5){if(B=="A"||B=="AREA"){k(z);break}else{if(B=="BODY"||B=="HTML"){break}}z=z.parentNode;y++}});l(function(){var B=document.getElementsByTagName("iframe");var C,e;for(var A=0;A<B.length;A++){C=t(B[A],"mmsrc");e=t(B[A],"mmworked");var z=a(B[A]);var y=[z.a||"0",z.b||"0",z.c||"0",z.d||"0",z.e||"0"].join(".");if(C&&!e){if(j){y=[z.a||"0",z.b||"0",z.c||"0",z.d||"0"].join(".");y=p()+"_"+y}B[A].src=w(d(C),y);B[A].setAttribute("mmworked","mmworked")}else{B[A].setAttribute(v,y)}}})})();