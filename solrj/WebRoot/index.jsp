<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <meta charset="gbk"/>
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <title>智能机器人</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/robot/cssreset-min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/robot/robot-min.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/robot/jquery/jquery-1.7.1.min.js"></script>
</head>
<body data-spm="6974569">
	<script> 
	var width = 500;
	var height = 300;
	var left = parseInt((screen.availWidth/2) - (width/2));  
	var top = parseInt((screen.availHeight/2) - (height/2));  
	
	
	var rootPath = "<%=request.getContextPath()%>";
	with(document)with(body)with(insertBefore(createElement("script"),firstChild))setAttribute("exparams","category=&userid=2112961878&aplus&yunid=",id="tb-beacon-aplus",src="<%=request.getContextPath()%>/js/robot/aplus_v2.js")
	</script>
 
    <div id="applogin" style="position: absolute;z-index: 9999;top:0;left: 0;width:100%;height: 100%;background-color: #fff;font-size:14px;padding:10px;">正在登陆...</div>
    <script>
        (function(load){
            window.setTimeout(function(){
                if(div=document.getElementById(load)){
                    div.innerHTML='连接智能机器人超时，请<a href="javascript:location.reload()">重新登陆</a>..';
                }
            },5000);
        })("applogin");
    </script>
 
    <!-- header -->
    <div id="header">
 
        <!-- otherservice -->
        <ul class="otherservice">
			            <li class="yun" style="display:none;"><a target="_blank" href="http://www.utry.cn/guanyuyuanchuan/lianxiwomen/index.html">人工客服</a></li>
			            <li class="yun"><a href="#" onclick="window.open('studyMode.jsp','newwindow','height='+height+',width='+width+',top='+top+',left='+left+',toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');">教学模式</a></li>
			            <li class="help"><a href="#" onclick="alert('暂不开放');">服务中心</a></li>
            
 
 
        </ul>
        <!-- otherservice end -->
 
        <!--robot info-->
        <div class="appinfo">
        <textarea id="tpl-userinfo" style="display: none">
            <div class="logo"><a href="#" title="智能机器人：为您解答经常遇到的咨询性问题，找回账户密码等自助服务。无需等待，您的服务首选。"><img src="{{logo}}" /></a></div>
            <h1><a href="#" title="关于{{name}}">{{name}}</a></h1>
            <p class="welcomemsg">{{tip}}</p>
        </textarea>
        </div>
        <!--robot end-->
 
    </div>
 
    <!-- header end -->
 
 
    <div id="content" class="layout grid-chat">
        <div id="main" class="col-main">
            <div class="main-wrap">
 
                <div style="border:10px solid #fff;">
                <!--聊天面板-->
                <div id="chatpanel">
 
                    <div id="chatlist" style="OVERFLOW-Y:auto;OVERFLOW-X:hidden;">
 
                        <textarea id="tpl-systips" style="display:none">
                            <div class="chattips">
                                <a href="#" class="close">x</a>
                                <dl>
                                    <dt>温馨提示：</dt>
                                    {{#each tips}}
                                    <dd>{{_ks_value}}</dd>
                                    {{/each}}
                                </dl>
                            </div>
                        </textarea>
 
                        <textarea id="tpl-question" style="display:none">
                            <div class="talk-item talk-a">
                                <div class="layout grid-talkf">
                                    <div class="col-main">
                                        <div class="main-wrap info-talk">
                                            <div class="msg">
                                                <s class="arrow"></s>
                                                <div class="J_content">{{question}}</div>
                                            </div>
                                            <div class="time"><img src="http://img03.taobaocdn.com/tps/i3/T19mCQXbJdXXXXXXXX-60-9.gif"/></div>
                                        </div>
                                    </div>
                                    <div class="col-sub info-user">
                                        <a href="#" title="{{nickname}}"><img src="{{logo}}" alt="{{nickname}}" /></a>
                                    </div>
                                </div>
                            </div>
                        </textarea>
 
                        <textarea id="tpl-answer" style="display:none">
                            <div class="talk-item talk-b"  data-logid="{{logid}}" data-question="{{question}}">
                                <div class="layout grid-talk">
                                    <div class="col-main">
                                        <div class="main-wrap info-talk">
                                            <div class="msg">
                                                <div class="hank"></div>
                                                <s class="arrow"></s>
                                                    <ul class="J_feedback fun">
                                                       <li>以上内容对您有帮助吗？</li>
                                                       <li data-result="good" class="good"><a href="#"><s></s>有</a></li>
                                                       <li data-result="bad" class="bad"><a href="#"><s></s>没</a></li>
                                                    </ul>
                                                <div class="J_content">{{answer}}</div>
                                            </div>
                                            <div class="time"></div>
                                        </div>
                                    </div>
                                    <div class="col-sub info-user">
                                        <a href="#" title="{{name}}"><img src="{{logo}}" alt="{{name}}" /></a>
                                    </div>
                                </div>
                            </div>
                        </textarea>
                    </div>
                </div>
 
                </div>
 
                <!--输入面板-->
                <div id="inputpanel">
 
                    <div class="chatform">
                        <input type="text" name="msg" id="chat-input" x-webkit-speech lang="zh-CN" onkeydown="if(event.keyCode==13) send();" />
                        <button type="button" class="chatbtn" id="chat-btn" style="display:none;"><s>发送</s></button>
                        
                        <button type="button" class="chatbtn" id="chat-btn-new" style="cursor:pointer;" onclick="send();return false;"><s>发送</s></button>
                    </div>
                    <div class="chatextfun">
 
                        <ul id="toolbar" class="toolbar" style="display:none;">
                            <li><a href="#">保存聊天记录</a></li>
                        </ul>
                        <div class="chkinput">还可以输入<em id="inputcount">30</em>字</div>
                    </div>
 
                </div>
 
            </div>
        </div>
        <div id="side" class="col-sub appside">
 
            <div class="skin-side" id="ext-panel">
 
                <!--热点问题-->
                <div class="box" style="display:none;">
                    <div class="hd"><h3>热点问题</h3></div>
                    <div class="bd">
                        <textarea id="tpl-exthot" style="display:none">
                        <div class="exthot">
                            <ul>
                                {{#each list as item}}
                                <li><a class="J_TopKnowledge" href="{{item.url}}" title="{{item.title}}">{{item.title}}</a></li>
                                {{/each}}
                            </ul>
                        </div>
                        </textarea>
 
                    </div>
                </div>
 
                <!--相关内容-->
                <div class="box" style="display:none;">
                    <div class="hd"><h3>相关内容</h3></div>
                    <div class="bd extabout">
                        <div>暂时没有相关内容，请继续提问！</div>
                        <!--
                        <div class="item">
                            <h4>相关问题</h4>
                            <ul class="list">
                                <li><a href="#">相关问题</a></li>
                            </ul>
                        </div>
                        <div class="item">
                            <h4>自助服务</h4>
                            <ul class="list">
                                <li><a href="#">搜索诊断助手</a></li>
                            </ul>
                        </div>
                        <div class="item">
                            <h4>淘宝客服务电话</h4>
                            <ul>
                                <li>买家热线：0571-88157858</li>
                            </ul>
                        </div>
                        -->
 
                    </div>
                </div>
 
                <!--相关小贴士-->
                <div class="tipbox" style="display:none;">
                    <!-- <div class="hd hdext"><h3>相关小贴士</h3></div> -->
                    <div class="bd exttipsbg">
                        <textarea id="tpl-exttips" style="display:none">
                        <div class="exttips">
                            <h3>小贴士</h3>
                            <ul>
                                {{#each tips as item}}
                                <li><a target="_blank" href="{{item.url}}">{{item.title}}</a></li>
                                {{/each}}
                            </ul>
                        </div>
                        </textarea>
                    </div>
																									                </div>
 
            </div>
 
        </div>
    </div>
 
 
 
    <form id="save-form" target="_blank" method="post" action="http://service.taobao.com/support/minerva/robot_save_chat_record.htm">
        <input name='_tb_token_' type='hidden' value='Pr5I1PzpJGin'>
        <input type="hidden" id="msg-record" name="chatRecord" />
    </form>
 
 
 
    <!--登录-->
    <textarea id="tpl-robot-login" style="display:none">
        <div id="loginmodule">
            <div class="loginframe">
                <div class="title">为保证服务质量，请您登录：</div>
                <iframe style="display: none1" width="326" scrolling="no" height="230" frameborder="0" src="https://login.taobao.com/member/login.jhtml?is_ignore=true&from=onlinecs&style=minisimple&minititle=我是淘宝会员&redirect_url=http://service.taobao.com/support/minerva/beta_minerva_login_success.htm?version=2" id="cs_login_frame"> </iframe>
                <ul class="extfun">
                    <li class="J_userinput"><a href="#">我的账户无法登录</a></li>
                    <li class="J_nomember"><a href="#">我不是淘宝会员</a></li>
                </ul>
            </div>
 
            <div class="userinput" style="display:none">
                <div class="title">账户无法登录</div>
                <div>
                    <div class="form">
                        <label>请输入淘宝账户名: <input type="text" class="cs_username" /></label>
                        <div class="button-area"><button type="button" class="usernamecheck">链接机器人</button></div>
                    </div>
                </div>
                <ul class="extfun">
                    <li class="J_member"><a href="#">我是淘宝会员</a></li>
                    <li class="J_nomember"><a href="#">我不是淘宝会员</a></li>
                </ul>
            </div>
        </div>
    </textarea>
 
 
<!-- 分页模板 -->
<textarea id="tpl-default-paging" style="display:none;">
    <span class="pg-num">{{ currentPage }} / {{ endPage }}</span>
 
    {{@! 显示上一页 }}
    {{@if currentPage === startPage }}
    <a class="pg-prev pg-disabled">上一页</a>
    {{@else}}
    <a class="pg-prev" href="#" data-page="{{ currentPage - 1 }}">上一页</a>
    {{/if}}
 
    {{@! 显示下一页 }}
    {{@if currentPage === endPage }}
    <a class="pg-next pg-disabled">下一页</a>
    {{@else}}
    <a class="pg-next" href="#" data-page="{{ currentPage + 1 }}">下一页</a>
    {{/if}}
</textarea>
 
<!--[if IE 6]>
<script>document.execCommand("BackgroundImageCache", false, true);</script>
<![endif]-->
 <script src="<%=request.getContextPath()%>/js/robot/kissy-min.js" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/js/robot/sizzle-min.js" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/js/robot/suggest-min.js" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/js/robot/overlay-min.js" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/js/robot/template-min.js" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/js/robot/calendar-min.js" charset="utf-8"></script>
<!-- <script src="<%=request.getContextPath()%>/js/robot/index.js" charset="utf-8"></script> -->
 
<script > 
    var env = "online";
    var h = window.location.href.split("?")[0];
    var hr=~h.indexOf("service.daily.taobao.net");
    if(hr){
        env = "daily";
    }else{
        env = "online";
    }
    
    
</script>
 
    <script src="<%=request.getContextPath()%>/js/robot/robot-min.js" charset="UTF-8"></script>
 
<script> 
 
var initData = {};
//var robotconfig={"moduleGroupId":"taobaocrm","mainBrand":"","robotHotConfig":[{"hotTitle":"已经付款,但交易还显示未付款?","hotUrl":"http://service.taobao.com/support/knowledge-1137314.htm"},{"hotTitle":"如何使用红包?","hotUrl":"http://service.taobao.com/support/knowledge-1120303.htm?_pvf\u003dykf_ocs_yimaidaobaobei_1 "},{"hotTitle":"交易付款后，卖家多少时间内会发货？ ","hotUrl":"http://service.taobao.com/support/knowledge-1120423.htm"},{"hotTitle":"商品描述不符、质量有问题该怎么办？","hotUrl":"http://service.taobao.com/support/knowledge-1121003.htm"},{"hotTitle":"物流跟踪为什么不显示/查看不到？ ","hotUrl":"http://service.taobao.com/support/knowledge-1121897.htm "}],"defaultNoticeMsg":"请完整描述您的问题，比如：项目规范","robotTipsConfig":[{"content":"\u003cp\u003e\u003cstrong\u003e\u003cspan style\u003d\"font-size:14px;\"\u003e\u003cspan style\u003d\"color:rgb(255, 0, 0);\"\u003e【谨防诈骗】\u003c/span\u003e\u003c/span\u003e\u003cspan style\u003d\"font-size:12px;\"\u003e挨千刀的\u003cspan style\u003d\"color:rgb(255, 0, 0);\"\u003e\u003cspan style\u003d\"font-size:14px;\"\u003e骗子\u003c/span\u003e\u003c/span\u003e以订单有问题让你操作\u003cspan style\u003d\"color:rgb(255, 0, 0);\"\u003e\u003cspan style\u003d\"font-size:14px;\"\u003e退款\u003c/span\u003e\u003c/span\u003e，通过QQ发送钓鱼链接，\u003cspan style\u003d\"color:rgb(255, 0, 0);\"\u003e\u003cspan style\u003d\"font-size:14px;\"\u003e骗取\u003c/span\u003e\u003c/span\u003e你的银行卡、身份证、验证码等重要\u003cspan style\u003d\"font-size:14px;\"\u003e\u003cspan style\u003d\"color:rgb(255, 0, 0);\"\u003e私人信息\u003c/span\u003e\u003c/span\u003e！\u003c/span\u003e\u003c/strong\u003e\u003c/p\u003e"},{"content":" \u003cp\u003e\u003cstrong\u003e\u003cspan style\u003d\"font-size:12px;\"\u003e\u003cspan style\u003d\"color: rgb(255, 0, 0);\"\u003e\u003cspan style\u003d\"font-size: 14px;\"\u003e记住：\u003c/span\u003e\u003cspan style\u003d\"font-size:14px;\"\u003e验证码打死也不能说！\u003c/span\u003e\u003c/span\u003e和卖家沟通\u003cspan style\u003d\"font-size:14px;\"\u003e\u003cspan style\u003d\"color:rgb(255, 0, 0);\"\u003e打死不能用QQ！\u003c/span\u003e\u003c/span\u003e\u003c/span\u003e\u003c/strong\u003e\u003c/p\u003e"},{"content":"\u003cp\u003e\u003cstrong\u003e\u003cspan style\u003d\"font-size:12px;\"\u003e\u003cspan style\u003d\"font-size:14px;\"\u003e\u003cspan style\u003d\"color:rgb(255, 0, 0);\"\u003e\u003c/span\u003e\u003c/span\u003e 想知道更多？快来瞅瞅\u003ca href\u003d\"http://bbs.taobao.com/catalog/thread/154504-270787213.htm\" target\u003d\"_blank\" title\u003d\"防骗秘籍\"\u003e防骗秘籍\u003c/a\u003e，一般人我不告诉他哦~\u003c/span\u003e\u003c/strong\u003e\u003c/p\u003e \u003cp\u003e   \u003cspan style\u003d\"font-size:12px;\"\u003e\u0026nbsp;\u003c/span\u003e\u003c/p\u003e"}],"isSendPreMsg":"true","userTimeOut":"5","noPrecisePos2Ocs":"false","sourceId":109,"ocs":"true","skillGroups":{"departName":"正向交易部门","departId":"168","groups":[{"skillName":"正向交易","skillId":"55199"}]},"version":"0.0","RouteType":"classification","ocsShowName":"云客服助手","robotToolbarConfig":[],"autoConnectOcs":"true","willOcs2Robot":"true","BrowserCloseConfirm":"yes","sourceName":"已买到的宝贝页面  消费者","countDownTime":"60","inputNumber":"30","isCanComplaint":"false","connectType":"3","initAnswer":"您好，有什么可以帮助您的吗？","skillGroupsRO":[{"departName":"正向交易部门","departId":"168","groups":[{"skillName":"正向交易","skillId":"55199"}]}],"robot":"true","belongDepartmentId":"168","personalMsg":"越来越多的领域和岗位都需要智能机器人参与","isNeedListenUser":"true","firstTimeOut":"6","robotNoticeConfig":[{"noticeUrl":"http://service.taobao.com/support/knowledge-5414200.htm","noticeTitle":"话费充值常见问题汇总"},{"noticeUrl":"http://service.taobao.com/support/knowledge-1120144.htm","noticeTitle":"如何联系卖家？"},{"noticeUrl":"http://service.taobao.com/support/knowledge-1120474.htm","noticeTitle":"机器人提问小技巧"},{"noticeUrl":"http://service.taobao.com/support/onlinecs/about_ocs_basic.htm?tab\u003d1","noticeTitle":"什么是云客服？"}],"robotChannelConfig":[],"willRobot2Ocs":"false"};
var robotconfig={"moduleGroupId":"taobaocrm","mainBrand":"","robotHotConfig":[{"hotTitle":"已经付款,但交易还显示未付款?","hotUrl":"http://service.taobao.com/support/knowledge-1137314.htm"},{"hotTitle":"如何使用红包?","hotUrl":"http://service.taobao.com/support/knowledge-1120303.htm?_pvf\u003dykf_ocs_yimaidaobaobei_1 "},{"hotTitle":"交易付款后，卖家多少时间内会发货？ ","hotUrl":"http://service.taobao.com/support/knowledge-1120423.htm"},{"hotTitle":"商品描述不符、质量有问题该怎么办？","hotUrl":"http://service.taobao.com/support/knowledge-1121003.htm"},{"hotTitle":"物流跟踪为什么不显示/查看不到？ ","hotUrl":"http://service.taobao.com/support/knowledge-1121897.htm "}],"defaultNoticeMsg":"请完整描述您的问题，比如：你是谁？","robotTipsConfig":[{"content":"请文明提问，勿包含色情、暴力、低俗内容等信息。"}],"isSendPreMsg":"true","userTimeOut":"5","noPrecisePos2Ocs":"false","sourceId":109,"ocs":"true","skillGroups":{"departName":"正向交易部门","departId":"168","groups":[{"skillName":"正向交易","skillId":"55199"}]},"version":"0.0","RouteType":"classification","ocsShowName":"云客服助手","robotToolbarConfig":[],"autoConnectOcs":"true","willOcs2Robot":"true","BrowserCloseConfirm":"yes","sourceName":"已买到的宝贝页面  消费者","countDownTime":"60","inputNumber":"30","isCanComplaint":"false","connectType":"3","initAnswer":"您好，有什么可以帮助您的吗？","skillGroupsRO":[{"departName":"正向交易部门","departId":"168","groups":[{"skillName":"正向交易","skillId":"55199"}]}],"robot":"true","belongDepartmentId":"168","personalMsg":"越来越多的领域和岗位都需要智能机器人参与","isNeedListenUser":"true","firstTimeOut":"6","robotNoticeConfig":[{"noticeUrl":"http://service.taobao.com/support/knowledge-5414200.htm","noticeTitle":"话费充值常见问题汇总"},{"noticeUrl":"http://service.taobao.com/support/knowledge-1120144.htm","noticeTitle":"如何联系卖家？"},{"noticeUrl":"http://service.taobao.com/support/knowledge-1120474.htm","noticeTitle":"机器人提问小技巧"},{"noticeUrl":"http://service.taobao.com/support/onlinecs/about_ocs_basic.htm?tab\u003d1","noticeTitle":"什么是云客服？"}],"robotChannelConfig":[],"willRobot2Ocs":"false"};

 
//温馨提示
//initData.sysTips =["1、使用关键词，问题尽量简单。比如“怎样修改店铺的所在地”。","2、一次只能提问一个完整问题。比如“怎么解决呢”，改成“收不到激活信，怎么解决”"];
 
//温馨提示
initData.sysTips =[];
var warmntips = robotconfig.robotTipsConfig;
if(warmntips&&warmntips.length>0){
    for(var i=0;i<warmntips.length;i++){
        initData.sysTips.push(warmntips[i].content);
    }
}
 
 
 
//相关贴士
initData.extTips = [];
 
var noticeconfig=robotconfig.robotNoticeConfig;
if(noticeconfig&&noticeconfig.length>0){
    for(var i=0;i<noticeconfig.length;i++){
        var noticeelement={};
        noticeelement.title=noticeconfig[i].noticeTitle;
        noticeelement.url=noticeconfig[i].noticeUrl;
        initData.extTips.push(noticeelement);
    }
}
 
 
//热点问题
initData.extHot = [];
var hotconfig=robotconfig.robotHotConfig;
if(hotconfig&&hotconfig.length>0){
    for(var i=0;i<hotconfig.length;i++){
        var hotelement={};
        hotelement.title=hotconfig[i].hotTitle;
        initData.extHot.push(hotelement);
    }
}
 
 
var logoUrl = robotconfig.robotLogoUrl;
if(!logoUrl){
    logoUrl="<%=request.getContextPath()%>/images/robot/T1t74VXr8XXXcu8V6l-64-64.png";
}
 
 
    var ulogo = "<%=request.getContextPath()%>/images/robot/asker.png";
 
 
/**
 * 初始化入参
 */
var initParameter = {
    //初始要渲染到页面的数据
    initData:initData,
    //用户信息
    userInfo: {
        username:'zhengshan19870118',
        nickname:'zhengshan19870118',
        logo:ulogo
    },
    //机器人信息
    appInfo: {
        //logo
        logo:logoUrl,
        //名称
        name: robotconfig.robotShowName ? robotconfig.robotShowName : "智能机器人",
        //签名
        tip: robotconfig.personalMsg
    },
    //输入框配置
    inputSetting: {
        //placeholder
        defaultNoticeMsg: robotconfig.defaultNoticeMsg ? robotconfig.defaultNoticeMsg : "请用一句话简要的描述你的问题，比如“如何开店”",
        //输入字数限制
        inputNumber: robotconfig.inputNumber ? robotconfig.inputNumber : "30"
    },
    appConfig: {
        //来源标示
        sourceId:robotconfig.sourceId,
 
                    type : 1 ,
                        //机器人类型
        moduleId:robotconfig.moduleGroupId,
        //是否强制登录
        mustLogin: false
    }
};
 
//组件配置
initParameter['loadPlug'] = [];
var robotPlug = robotconfig.robotPlug;
if(robotPlug && robotPlug=='refundPlug'){
 
    var refundUid = 'null';
    var refundId = 'null';
 
    if(refundUid && refundUid!='null'){
        initParameter['loadPlug'].push({
            name:"refund",
            data:{
                refundUrl: "/support/minerva/ajax/refundPlugAjax.htm",
                listUrl:"/support/minerva/ajax/refundListAjax.htm",
                refundId:refundId
            }
        });
    }
}
if(robotconfig.sourceId && (robotconfig.sourceId == 187 || robotconfig.sourceId == 456) ){
 
	var linkUrl = "http://service.taobao.com/support/onlinecs/ocs.htm?source_id=1774213283";
	if(robotconfig.sourceId == 187){
		linkUrl = "http://service.taobao.com/support/onlinecs/ocs.htm?source_id=187";
	}
	initParameter['loadPlug'].push({
        name:"recomroute",
        data:{
            linkUrl: linkUrl
        }
    });
}
 
var initQues = 'null';
if(initQues && initQues!='null'){
    initParameter['loadPlug'].push({
        name:"firstquestion",
        data:{
        }
    });
}
 
function appInit(){
    var path = '',
        version = '1.0.0';
    if(~window.location.host.toLowerCase().indexOf("taobao.com"))
        path = 'http://g.tbcdn.cn/tb/aphrodite/' + version + '/pages/';
    else if(~window.location.host.toLowerCase().indexOf("daily.taobao.net"))
        path = 'http://g.assets.daily.taobao.net/tb/aphrodite/' + version + '/pages/';
    else
        path = "./";
 
    KISSY.config({
        packages:[
            {
                name:"robot",
                tag:"201403101523",
                path:path,
                charset:"UTF-8"
            },{
                name:"gallery",
                path:"http://a.tbcdn.cn/s/kissy/",
				tag:(new Date).getTime()
            }
        ]
    });
 
    KISSY.Config.debug = true;
    KISSY.use("robot/init", function(S,Robot){
        Robot.init(initParameter);
        S.all("#applogin").remove();
    });
}
 
KISSY.ready(function(){
    appInit();
});

function send(){
    //1.初始化变量
    var questionObject = document.getElementById("chat-input");
	var question = questionObject.value;
	if(question==""){
		return;
	}
	var answer = getAnswter(question);
	var nickname = "zhengshan19870118";
	var name = "智能机器人";
	var chatlist = document.getElementById("chatlist");
	chatlist.style.height=document.body.clientHeight-160;//高度默认为auto,所以这里把高度设置固定住。
	chatlist.style.overflowX="hidden";
	chatlist.style.overflowY="auto";
	
	//2.添加问题
	var div = document.createElement('div');
	div.className = "talk-item talk-a";
	div.innerHTML = '<div class="layout grid-talkf"><div class="col-main"><div class="main-wrap info-talk" style="padding-right:40px;"><div class="msg"><s class="arrow"></s><div class="J_content">'+question+'</div></div></div></div><div class="col-sub info-user"><a href="#" title="'+nickname+'"><img width="30" height="30" src="'+ulogo+'" alt="'+nickname+'" /></a></div></div>';
	chatlist.appendChild(div);
	
	//3.添加回答
	div = document.createElement('div');
	div.className = "talk-item talk-b";
	div.innerHTML = '<div class="layout grid-talk" style="margin-bottom:10px;"><div class="col-main"><div class="main-wrap info-talk" style="padding-bottom:5px;"><div class="msg" sytle="padding-bottom:0px;"><div class="hank"></div><s class="arrow"></s><div class="J_content">'+answer+'</div></div><div class="time"></div></div></div><div class="col-sub info-user"><a href="#" title="'+name+'"><img src="'+logoUrl+'" alt="'+name+'" /></a></div></div>';
	chatlist.appendChild(div);
	
	//4.其它操作
	questionObject.value = "";//将输入框置空
	questionObject.focus();
	document.getElementById('chatlist').scrollTop = document.getElementById('chatlist').scrollHeight;//始终让滚动条显示在最下方
}

function getAnswter(question){
	var result;
	
	$.ajax({
	    type : "POST",
	    url : "/solrj/hello/search",
	    async: false,
	    dataType : "json",
	    data:{'question':question},
	    success : function(data) {
	        result = data.msg;
	    },
	    error : function(textStatus) {
	    }
	});

	return result;
}
</script>
</body>
</html>