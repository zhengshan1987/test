package com.solr.service;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.CommonsHttpSolrServer;
import org.apache.solr.client.solrj.impl.XMLResponseParser;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;

/**
 * 
 * 类名称：Solrj服务方法
 * 类描述： 
 * 创建人：zhengshan 
 * 创建时间：Nov 4, 2014 2:49:23 PM 
 * 修改人：zhengshan
 * 修改时间：Nov 4, 2014 2:49:23 PM 
 * 修改备注： 
 * @version 1.0
 *
 */
@SuppressWarnings("deprecation")
public class SolrjServer {
	private SolrServer server;
	private CommonsHttpSolrServer httpServer;
	private static final String DEFAULT_URL = "http://127.0.0.1:8080/solr/";
	private static final String addBuildIndexParams="dataimport?command=full-import&clean=false&commit=true";
	@SuppressWarnings("unused")
	private static final String reBuildIndexParams="dataimport?command=full-import&clean=true&commit=true";
	
	/**
	 * 
	  * solr服务器初始化
	  * 创建人：zhengshan
	  * 创建时间：Nov 6, 2014 2:12:53 PM 
	  * @return void
	*
	 */
	public void init() {
		try {
			server = new CommonsHttpSolrServer(DEFAULT_URL);
			httpServer = new CommonsHttpSolrServer(DEFAULT_URL);
			httpServer.setSoTimeout(1000); // socket read timeout <!--CRLF-->
			httpServer.setConnectionTimeout(100);
			httpServer.setDefaultMaxConnectionsPerHost(100);
			httpServer.setMaxTotalConnections(100);
			httpServer.setFollowRedirects(false);
			httpServer.setAllowCompression(true);
			httpServer.setMaxRetries(1); // defaults to 0. > 1 not
											// recommended.

			// sorlr J 目前使用二进制的格式作为默认的格式。对于solr1.2的用户通过显示的设置才能使用XML格式。
			httpServer.setParser(new XMLResponseParser());
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
	}

	public void dataAddImport() {
		String coreUrl = DEFAULT_URL+addBuildIndexParams;
		sendHttpPost(coreUrl,null);
	}
	
	 protected void sendHttpPost(String completeUrl, String coreName) {
		DateFormat df = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss SSS");
		Date startTime = new Date();

		// prepare the core var
		String core = coreName == null ? "" : "[" + coreName + "] ";

		System.out.println(core
				+ "<index update process> Process started at .............. "
				+ df.format(startTime));

		try {

			URL url = new URL(completeUrl);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			conn.setRequestMethod("POST");
			conn.setRequestProperty("type", "submit");
			conn.setDoOutput(true);

			// Send HTTP POST
			conn.connect();

			System.out.println(core + "<index update process> Full URL\t\t\t\t"
					+ conn.getURL());
			System.out.println(core
					+ "<index update process> Response message\t\t\t"
					+ conn.getResponseMessage());
			System.out.println(core
					+ "<index update process> Response code\t\t\t"
					+ conn.getResponseCode());

			conn.disconnect();
			System.out.println(core
					+ "<index update process> Disconnected from server\t\t"
					+ server);
			Date endTime = new Date();
			System.out
					.println(core
							+ "<index update process> Process ended at ................ "
							+ df.format(endTime));
		} catch (MalformedURLException mue) {
			System.out.println("Failed to assemble URL for HTTP POST");
		} catch (IOException ioe) {
			System.out.println("Failed to connect to the specified URL while trying to send HTTP POST");
		} catch (Exception e) {
			System.out.println("Failed to send HTTP POST");
		}
	}
	 
	/**
	 * 
	 * 查询solr服务器 创建人：zhengshan 创建时间：Nov 6, 2014 2:14:03 PM
	 * 
	 * @param String
	 *            solrQueryString 查询字符串
	 * @return List<HashMap<String, String>> 查询结果
	 * 
	 */
	public List<HashMap<String, String>> queryCaseNew(String solrQueryString) {
		// 1.封装查询参数
		SolrQuery params = new SolrQuery("("+solrQueryString+")");
		params.setStart(0); 	 
		params.setRows(1);
		
		try {
			// 2.查询solr服务器
			QueryResponse response = server.query(params);
			SolrDocumentList list = response.getResults();
			
			// 3.设置查询结果集
			ArrayList<HashMap<String, String>> resultList = new ArrayList<HashMap<String, String>>();
			if(null != list && list.size() > 0){
				SolrDocument sd = list.get(0);
				HashMap<String,String> resultMap = new HashMap<String,String>();
				
				//设置标题
				String content = sd.get("content").toString();
				content = content.substring(1,content.length()-1);
				resultMap.put("content", content);
				
				resultList.add(resultMap);
			}
			
			return resultList;
		} catch (SolrServerException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public String getSolrQueryString(String text,String searchType){
		StringBuilder solrQueryString = new StringBuilder();
		if("4".equals(searchType)){
			solrQueryString.append("title");
			solrQueryString.append(":\"");
			solrQueryString.append(text);
			solrQueryString.append("\"  ^1000 OR ");
			solrQueryString.append("title");
			solrQueryString.append(": ");
			solrQueryString.append(text);
		}else if("3".equals(searchType)){
			solrQueryString.append("title");
			solrQueryString.append(":\"");
			solrQueryString.append(text);
			solrQueryString.append("\"  ^1000");
		}else if("2".equals(searchType)){
			solrQueryString.append("title_2");
			solrQueryString.append(":");
			solrQueryString.append(text);
			solrQueryString.append("");
		}else{
			solrQueryString.append("title");
			solrQueryString.append(": ");
			solrQueryString.append(text);
		}
		
		return solrQueryString.toString();
	}
}