/*2014-08-28 10:18:15*/!function(){function t(t){var e,n;try{return e=[].slice.call(t)}catch(r){e=[],n=t.length;for(var a=0;n>a;a++)e.push(t[a]);return e}}function e(t,e){return t&&t.getAttribute?t.getAttribute(e)||"":""}function n(t,e,n){if(t&&t.setAttribute)try{t.setAttribute(e,n)}catch(r){}}function r(t,e){if(t&&t.removeAttribute)try{t.removeAttribute(e)}catch(r){n(t,e,"")}}function a(t,e){return 0==t.indexOf(e)}function i(t){return"string"==typeof t}function o(t){return"[object Array]"===Object.prototype.toString.call(t)}function c(t,e){return t.indexOf(e)>=0}function u(t,e){return t.indexOf(e)>-1}function f(t,e){for(var n=0,r=e.length;r>n;n++)if(u(t,e[n]))return de;return ge}function m(t){return i(t)?t.replace(/^\s+|\s+$/g,""):""}function s(t){return"undefined"==typeof t}function l(t,e){var n=e||"";if(t)try{n=decodeURIComponent(t)}catch(r){}return n}function p(){return ce=ce||le.getElementsByTagName("head")[0],ue||(ce?ue=ce.getElementsByTagName("meta"):[])}function d(t,e){var n,r,a=t.split(";"),i=a.length;for(n=0;i>n;n++)r=a[n].split("="),e[m(r[0])||ke]=l(m(r.slice(1).join("=")))}function g(){var t,n,r,a=p(),i=a.length;for(t=0;i>t;t++)if(n=a[t],"aplus-terminal"==e(n,"name")){r=e(n,"content");break}return r}function h(){var t,n,r,a,i=p();for(t=0,n=i.length;n>t;t++)r=i[t],a=e(r,"name"),a==Re&&(fe=e(r,Le))}function b(t){var n,r,i,o,c,u,f=p();if(f)for(n=0,r=f.length;r>n;n++)if(o=f[n],c=e(o,"name"),c==t)return ae=e(o,"content"),ae.indexOf(":")>=0&&(i=ae.split(":"),fe="i"==i[0]?"i":"u",ae=i[1]),u=e(o,Le),u&&(fe="i"==u?"i":"u"),ie=a(ae,"110"),re=ie?je:ae,de;return ge}function v(){return Math.floor(268435456*Math.random()).toString(16)}function y(t){var e,n,r=[];for(e in t)t.hasOwnProperty(e)&&(n=""+t[e],r.push(a(e,ke)?n:e+"="+encodeURIComponent(n)));return r.join("&")}function _(t){var e,n,r,i=[],o=t.length;for(r=0;o>r;r++)e=t[r][0],n=t[r][1],i.push(a(e,ke)?n:e+"="+encodeURIComponent(n));return i.join("&")}function N(t){var e;try{e=m(t.getAttribute("href",2))}catch(n){}return e||""}function w(t,e,n){t[Pe]((Te?"on":"")+e,function(t){t=t||se.event;var e=t.target||t.srcElement;n(e)},ge)}function x(t){var e=se.KISSY;e?e.ready(t):se.jQuery?jQuery(le).ready(t):"complete"===le.readyState?t():w(se,"load",t)}function A(t,e){var n,r=new Image,a="_img_"+Math.random(),i=-1==t.indexOf("?")?"?":"&",c=e?o(e)?_(e):y(e):"";return se[a]=r,r.onload=r.onerror=function(){se[a]=null},r.src=n=c?t+i+c:t,r=null,n}function j(){var t;if(xe&&!ze&&(t=he.match(/^[^?]+\?[^?]*spm=([^&?]+)/),t&&(ze=t[1]+"_")),!s(re))return re;if(se._SPM_a&&se._SPM_b)return ee=se._SPM_a.replace(/^{(\w+)}$/g,"$1"),ne=se._SPM_b.replace(/^{(\w+)}$/g,"$1"),Ie=de,re=ee+"."+ne,h(),re;if(b(Re)||b("spm-id"),!re)return Oe=!0,re=je,je;var n,r,a=le.getElementsByTagName("body");return a=a&&a.length?a[0]:null,a&&(n=e(a,Re),n&&(r=re.split("."),re=r[0]+"."+n)),u(re,".")||(Oe=!0,re=je),re}function O(n){var r,a,i,o,c,u,f,m,s=[];for(r=t(n.getElementsByTagName("a")),a=t(n.getElementsByTagName("area")),o=r.concat(a),f=0,m=o.length;m>f;f++){for(u=!1,c=i=o[f];(c=c.parentNode)&&c!=n;)if(e(c,Re)){u=!0;break}u||s.push(i)}return s}function k(t,n,r){var o,u,f,m,s,l,p,d,g,h,b,v,y,_,w,x,A;if(n=n||t.getAttribute(Re)||""){if(o=O(t),f=n.split("."),w=a(n,"110")&&3==f.length,w&&(x=f[2],f[2]="w"+(x||"0"),n=f.join(".")),i(b=j())&&b.match(/^[\w\-\*]+(\.[\w\-\*]+)?$/))if(c(n,".")){if(!a(n,b)){for(m=b.split("."),f=n.split("."),y=0,v=m.length;v>y;y++)f[y]=m[y];n=f.join(".")}}else c(b,".")||(b+=".0"),n=b+"."+n;if(n.match&&n.match(/^[\w\-\*]+\.[\w\-\*]+\.[\w\-\*]+$/)){for(A=parseInt(e(t,"data-spm-max-idx"))||0,_=0,s=A,v=o.length;v>_;_++)u=o[_],l=N(u),l&&(w&&u.setAttribute(He,x),p=u.getAttribute(Qe),p&&z(p)?I(u,p,r):(d=L(u.parentNode),d.a_spm_ab?(h=d.a_spm_ab,g=d.ab_idx):(h=void 0,s++,g=s),p=h?n+"-"+h+"."+(C(u)||g):n+"."+(C(u)||g),I(u,p,r)));t.setAttribute("data-spm-max-idx",s)}}}function E(t){var e,n=["mclick.simba.taobao.com","click.simba.taobao.com","click.tanx.com","click.mz.simba.taobao.com","click.tz.simba.taobao.com","redirect.simba.taobao.com","rdstat.tanx.com","stat.simba.taobao.com","s.click.taobao.com"],r=n.length;for(e=0;r>e;e++)if(-1!=t.indexOf(n[e]))return!0;return!1}function $(t){return t?!!t.match(/^[^\?]*\balipay\.(?:com|net)\b/i):ge}function T(t){return t?!!t.match(/^[^\?]*\balipay\.(?:com|net)\/.*\?.*\bsign=.*/i):ge}function B(t){for(var n;(t=t.parentNode)&&t.tagName!=$e;)if(n=e(t,Le))return n;return""}function M(t,e){if(t&&/&?\bspm=[^&#]*/.test(t)&&(t=t.replace(/&?\bspm=[^&#]*/g,"").replace(/&{2,}/g,"&").replace(/\?&/,"?").replace(/\?$/,"")),!e)return t;var n,r,a,i,o,c,f,m="&";if(-1!=t.indexOf("#")&&(a=t.split("#"),t=a.shift(),r=a.join("#")),i=t.split("?"),o=i.length-1,a=i[0].split("//"),a=a[a.length-1].split("/"),c=a.length>1?a.pop():"",o>0&&(n=i.pop(),t=i.join("?")),n&&o>1&&-1==n.indexOf("&")&&-1!=n.indexOf("%")&&(m="%26"),t=t+"?spm="+ze+e+(n?m+n:"")+(r?"#"+r:""),f=u(c,".")?c.split(".").pop().toLowerCase():""){if({png:1,jpg:1,jpeg:1,gif:1,bmp:1,swf:1}.hasOwnProperty(f))return 0;!n&&1>=o&&(r||{htm:1,html:1,php:1}.hasOwnProperty(f)||(t+="&file="+c))}return t}function P(t){return t&&he.split("#")[0]==t.split("#")[0]}function I(t,n,r){if(t.setAttribute(Qe,n),!r&&!e(t,De)&&(oe=se.g_aplus_pv_id,oe&&(n+="."+oe),oe||re&&re!=je)){var i=N(t),o="i"==(e(t,Le)||B(t)||fe),c=Ne+"tbspm.1.1?logtype=2&spm=";i&&!E(i)&&(o||!(a(i,"#")||P(i)||a(i.toLowerCase(),"javascript:")||$(i)||T(i)))&&(o?(c+=n+"&url="+encodeURIComponent(i)+"&cache="+v(),me==t&&A(c)):r||(i=M(i,n))&&S(t,i))}}function S(t,e){var n,r=t.innerHTML;r&&-1==r.indexOf("<")&&(n=le.createElement("b"),n.style.display="none",t.appendChild(n)),t.href=e,n&&t.removeChild(n)}function C(t){var n;return Oe?n="0":(n=e(t,Re),n&&n.match(/^d\w+$/)||(n="")),n}function R(t){for(var e,n,r=t;t&&t.tagName!=Ee&&t.tagName!=$e&&t.getAttribute;){if(n=t.getAttribute(Re)){e=n,r=t;break}if(!(t=t.parentNode))break}return e&&!/^[\w\-\.]+$/.test(e)&&(e="0"),{spm_c:e,el:r}}function L(t){for(var n,r={},a="";t&&t.tagName!=Ee&&t.tagName!=$e;){if(!a&&(a=e(t,Ye))){n=parseInt(e(t,"data-spm-ab-max-idx"))||0,r.a_spm_ab=a,r.ab_idx=++n,t.setAttribute("data-spm-ab-max-idx",n);break}if(e(t,Re))break;t=t.parentNode}return r}function U(t){var e;return t&&(e=t.match(/&?\bspm=([^&#]*)/))?e[1]:""}function D(t,e){var n=N(t),r=U(n),a=null,i=re&&2==re.split(".").length;return i?(a=[re,0,C(t)||0],void I(t,a.join("."),e)):void(n&&r&&(n=n.replace(/&?\bspm=[^&#]*/g,"").replace(/&{2,}/g,"&").replace(/\?&/,"?").replace(/\?$/,"").replace(/\?#/,"#"),S(t,n)))}function z(t){var e=t.split(".");return e[0]+"."+e[1]==re}function H(t,n){me=t,Ie&&q();var r,a,i=e(t,Qe);if(i&&z(i))I(t,i,n);else{if(r=R(t.parentNode),a=r.spm_c,!a)return void D(t,n);Oe&&(a="0"),k(r.el,a,n)}}function Q(e){if(e&&1==e.nodeType){r(e,"data-spm-max-idx");var n,a=t(e.getElementsByTagName("a")),i=t(e.getElementsByTagName("area")),o=a.concat(i),c=o.length;for(n=0;c>n;n++)r(o[n],Qe)}}function Y(t){var e=t.parentNode;if(!e)return"";var n=t.getAttribute(Re),r=R(e),a=r.spm_c||0;a&&-1!=a.indexOf(".")&&(a=a.split("."),a=a[a.length-1]);var i=re+"."+a,o=Ae[i]||0;return o++,Ae[i]=o,n=n||o,i+".i"+n}function K(t){var n,r=t.tagName;return oe=se.g_aplus_pv_id,"A"!=r&&"AREA"!=r?n=Y(t):(H(t,de),n=e(t,Qe)),n=(n||"0.0.0.0").split("."),{a:n[0],b:n[1],c:n[2],d:n[3],e:oe}}function V(t,e){if(e||(e=le),le.evaluate)return e.evaluate(t,le,null,9,null).singleNodeValue;for(var n,r=t.split("/");!n&&r.length>0;)n=r.shift();var a,i=/^.+?\[@id="(.+?)"]$/i,o=/^(.+?)\[(\d+)]$/i;return(a=n.match(i))?e=e.getElementById(a[1]):(a=n.match(o))&&(e=e.getElementsByTagName(a[1])[parseInt(a[2])-1]),e?0==r.length?e:V(r.join("/"),e):null}function q(){var t,e,r,a={};for(t in Se)Se.hasOwnProperty(t)&&(e=V(t),e&&(a[t]=1,r=Se[t],n(e,Re,("A"==e.tagName?r.spmd:r.spmc)||"")));for(t in a)a.hasOwnProperty(t)&&delete Se[t]}function F(){if(!Ce){if(!se.spmData)return void(we||setTimeout(arguments.callee,100));Ce=de;var t,e,n,r,a=se.spmData.data;if(a&&o(a)){for(t=0,e=a.length;e>t;t++)n=a[t],r=n.xpath,r=r.replace(/^id\("(.+?)"\)(.*)/g,'//*[@id="$1"]$2'),Se[r]={spmc:n.spmc,spmd:n.spmd};q()}}}function G(){var t,n,r,a,i=le.getElementsByTagName("iframe"),o=i.length;for(n=0;o>n;n++)t=i[n],!t.src&&(r=e(t,Ue))&&(a=K(t),a?(a=[a.a,a.b,a.c,a.d,a.e].join("."),t.src=M(r,a)):t.src=r)}function J(){function t(){e++,e>10&&(n=3e3),G(),setTimeout(t,n)}var e=0,n=500;t()}function W(t,e){var n,r,i="gostr",o="locaid",c={};if(d(e,c),n=c[i],r=c[o],n&&r){a(n,"/")&&(n=n.substr(1));var u,f=K(t),m=[f.a,f.b,f.c,r].join("."),s=n+"."+m,l=["logtype=2","cache="+Math.random(),"autosend=1"];for(u in c)c.hasOwnProperty(u)&&u!=i&&u!=o&&l.push(u+"="+c[u]);l.length>0&&(s+="?"+l.join("&")),A(Ne+s),t.setAttribute(Qe,m)}}function X(t){for(var n;t&&t.tagName!=Ee;){n=e(t,De);{if(n){W(t,n);break}t=t.parentNode}}}function Z(){w(le,"mousedown",X)}function te(t){for(var e;t&&(e=t.tagName);){if("A"==e||"AREA"==e){H(t,ge);break}if(e==$e||e==Ee)break;t=t.parentNode}}var ee,ne,re,ae,ie,oe,ce,ue,fe,me,se=window,le=document,pe=location,de=!0,ge=!1,he=pe.href,be=pe.protocol,ve="https:"==be,ye=ve?be:"http:",_e=g(),Ne=ye+(ve?"//log.mmstat.com/":_e?"//wgo.mmstat.com/":"//gm.mmstat.com/"),we=ge,xe=parent!==self,Ae={},je="0.0",Oe=!1,ke="::-plain-::",Ee="HTML",$e="BODY",Te=!!le.attachEvent,Be="attachEvent",Me="addEventListener",Pe=Te?Be:Me,Ie=ge,Se={},Ce=ge,Re="data-spm",Le="data-spm-protocol",Ue="data-spm-src",De="data-spm-click",ze="",He="data-spm-wangpu-module-id",Qe="data-spm-anchor-id",Ye="data-spm-ab";f(he,["xiaobai.com","admin.taobao.org"])||(x(function(){we=de}),j(),F(),_e||J(),Z(),w(le,"mousedown",te),w(le,"keydown",te),se.g_SPM={resetModule:Q,anchorBeacon:H,getParam:K})}();