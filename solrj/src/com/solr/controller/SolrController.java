package com.solr.controller;

import java.util.HashMap;
import java.util.List;

import com.jfinal.core.Controller;
import com.solr.service.SolrjServer;

public class SolrController extends Controller {
	
	public void index() {
		this.renderText("Hello jFinal World！");
	}
	
	public void search(){
		// 1.初始化solr服务器
		SolrjServer solrjServer = new SolrjServer();
		solrjServer.init();

		// 2.组装查询字符串,搜索方式，1为单字，2为词组，3为不拆才字 ，4先将不拆字的排在前面，拆字的排在后面
		String question = getPara("question");
		String solrQueryString = solrjServer.getSolrQueryString(question, "4");

		// 3.发送请求给solr服务器
		List<HashMap<String, String>> list = solrjServer.queryCaseNew(solrQueryString);

		// 4.返回solr查询结果
		String result = "亲，您提的问题太难了，我暂时还回答不了。";
		if(null != list && list.size() > 0){
			result = list.get(0).get("content");
		}  
		
	    setAttr("msg", result);
	    renderJson();
	}
}


