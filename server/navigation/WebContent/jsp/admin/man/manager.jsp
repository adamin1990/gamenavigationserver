<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
 <%String path =  request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网站管理</title>
	<style>
	.main1{width: 978px;  background: #ffffff;position:absolute; left: 50%;margin-left: -489px;}
	.head{width: 968px;height:100px;background:#0FB1B7;position: absolute; text-align: center;}
	.left{width:200px;height:700px; background: #FFFFFF;position: absolute; margin-top: 100px;}
	.right{width:765px; background:#0000ff;position:absolute;margin-top:100px;left:200px;}
	a:link{text-decoration: none;}
	</style>
</head>
<body>
	<div class="main1">
		<div class="head">
			<strong><span><font size="7" >后台数据管理</font></span></strong>
		</div>
		<div class="left">
			<button onclick="javascript:window.open('<%=path %>/findAllGame.action','myframe')"  style="width: 200px;height: 30px;" >游戏管理</button>
			<button onclick="javascript:window.open('<%=path %>/findAllCategory.action','myframe')"  style="width: 200px;height: 30px;" >游戏类别管理</button>
			<button onclick="javascript:window.open('<%=path %>/findAllManager.action','myframe')"  style="width: 200px;height: 30px;" >用户管理</button>
			<button onclick="javascript:window.open('<%=path %>/findAllPicture.action','myframe')"  style="width: 200px;height: 30px;" >图片管理</button>
			<button onclick="javascript:window.open('<%=path %>/findAllRelease.action','myframe')"  style="width: 200px;height: 30px;" >发布人管理</button>
			<button onclick="javascript:window.open('<%=path %>/findAllStore.action','myframe')"  style="width: 200px;height: 30px;" >应用商店管理</button>
			<button onclick="javascript:window.open('<%=path %>/findAllRecon.action','myframe')"  style="width: 200px;height: 30px;" >推荐管理</button>
		</div>
		<div class="right"> 
			<iframe src="<%=path %>/findAllGame.action" scrolling="no" style="width: 765px;height:700px; background: #ffffff;border-right: 1px;" id="myframe" class="iframe" name="myframe"></iframe>
		</div> 
	</div> 
</body>
</html>