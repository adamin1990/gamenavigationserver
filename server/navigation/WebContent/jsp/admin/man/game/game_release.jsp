<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/jsp/common/taglib.jsp" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<%=path %>/css/release.css" type="text/css" rel="stylesheet"></link>
<script src="<%=path %>/js/validate.js"></script>
<script type="text/javascript" src="<%=path %>/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery-1.10.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加游戏</title>
<script>
function doSave(){ 
		if (isBlank(document.getElementById("topic"))) { 
			alert("游戏名称不能为空!");
			return false;
		} 
		if (isBlank(document.getElementById("loadurl"))){ 
			alert("下载地址不能为空!");
			return false;
		} 
		var releasename = $("#releasename").val();
		$.ajax({
				type:'POST',
				url:'<%=path %>/manjson/checkname.action',
				data:"releaseMan=" + releasename,
				async:false,
				success:function(data){
					if(data.result == "ok"){
						if(confirm("确认保存游戏信息吗?")){
							form1.submit();
						} 
					}
					else{
						if(confirm("发布人不存在，请重新输入")){
							return false;
						}
					}
				}
			}); 
		}
	</script>
</head>
<body style="background-color:#FFFFFF">
	<div id="body">
		<div id="content" style="overflow: hidden">
			<div id="subContainer">
			  <div id="rightContainer">
					<div class="classification favoriteBg">
						<h3>
							<strong>
								添加游戏
							</strong>
						</h3>
						<br />
						<div class="dynD">
						</div>
						<div>
						<s:form action="releasegame" name="form1" method="post" enctype="multipart/form-data" >
							<s:hidden name="game.id"></s:hidden>
							<table class="baseInfo fcolor_8" style="width: 100%">
								<tbody>
									<tr>
										<td>
											<div align="right">游戏名称</div>
										</td>
										<td>
											<s:textfield name="game.name" id="topic" size="20" maxlength="100"/>
											<font color="#FF0000">*</font>
										</td>
									</tr>
									<tr></tr>
									<tr>
										<td>
											<div align="right">游戏类别</div>
										</td>
										<td>
										<s:select list="categorylist" listKey="id" listValue="name" headerKey="0" headerValue="请选择游戏种类" name="game.category.id"></s:select>
										</td>
									</tr> 
									<tr></tr>
									<tr>
										<td>
											<div align="right">游戏商店</div>
										</td>
										<td>
											<s:select list="storelist" listKey="id" listValue="name" name="game.store.id"></s:select>
										</td>
									</tr> 
									<tr></tr>
									<tr>
										<td>
											<div align="right">发布人</div>
										</td>
										<td>
											<s:textfield name="game.releaseMan.name" id="releasename" size="20" maxlength="100"/>
										</td>
									</tr>
									<tr></tr>
									<tr>
										<td>
											<div align="right">版本号</div>
										</td>
										<td>
											<s:textfield name="game.versions" id="versions" size="20" maxlength="50"/>
										</td>
									</tr>
									<tr></tr>
									<tr>
										<td>
											<div align="right">发布时间</div>
										</td>
										<td> 
											<s:textarea class="Wdate" type="text" id="time" onfocus="WdatePicker()" name="game.releasetime" rows="1" ></s:textarea>
										</td>
									</tr>
									<tr></tr>
									<tr>
										<td>
											<div align="right">游戏大小</div>
										</td>
										<td>
											<s:textfield name="game.size" id="size" size="20" maxlength="50"/>
										</td>
									</tr>
									<tr></tr>
									<tr>
										<td>
											<div align="right">推荐标志</div>
										</td>
										<td>
										<s:select list="#{'0':'不推荐','1':'普通推荐','2':'首页滑动推荐','3':'类别推荐'}" name="game.flag"></s:select>
										</td>
									</tr>
									<tr></tr>
									<tr>
										<td>
											<div align="right">下载量</div>
										</td>
										<td>
											<s:textfield name="game.loadnum" id="loadnum" size="20" maxlength="50"/>
										</td>
									</tr>
									<tr></tr>
									<tr>
										<td>
											<div align="right">下载地址</div>
										</td>
										<td>
											<s:textfield name="game.loadurl" id="loadurl" size="40" maxlength="200"/>
											<font color="#FF0000">*</font>
										</td>
									</tr>
									<tr>
										<td>
											<div align="right">游戏简介</div>
										</td>
										<td>
											<s:textarea name="game.description" id="topic"  cols="40" rows="5" ></s:textarea>
										</td>
									</tr>
									<tr>
										<td>
											<div align="right">所属程序（数字）</div>
										</td>
										<td>
											<s:textfield name="game.belong" id="belong" size="20" maxlength="50"/>
										</td>
									</tr>
									<tr>
										<td></td>
										<td>
										 <input name="save" type="button" value="保 存" onclick="doSave()"/> 
										</td>
									</tr>
								</tbody>
							</table>
							</s:form>
						</div>
					</div>
			  </div>
				<div class="clear">
				</div>
		  </div>
		</div>
	</div>