<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/jsp/common/taglib.jsp"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>游戏类别管理</title>
<style type="text/css">
.main2 {
	height: 700px;
	width: 758px;
	position: absolute;
	border-width: 0px;
	background: #ffffff;
	left: 50%;
	margin-left: -369px;
}
.selected {
	background: #4876FF
}
</style>
<link rel="stylesheet" href="<%=path%>/css/common.css" type="text/css">
<script type="text/javascript" src="<%=path%>/js/common.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery-1.10.2.min.js"></script>
</head>
<body>
	<div class="main2">
		<s:hidden name="cId" id="CID1"></s:hidden>
		<s:form action="findAllCategory" method="post" id="myframe" name="formName">
			<s:hidden name="page"/>
			<table>
				<tr>
					<td align="left" width="350px;" height="30px;">
					<input type="button" value="删除" name="删除" onclick="do_action()"/> 
					<input type="button" value="修改" name="修改" onclick="modify()"/> 
					<input type="button" value="发布" name="发布" onclick="release()"/></td>
					<td align="left" width="100px;" height="30px;"> </td>
				</tr>
				<tr style="background-color: #4876FF">
					<td align="left" width="350px;" height="30px;">
					<input type="checkbox" name="alls" onClick="selectAll('formName','no')" title="全选/取消全选">游戏类别名称</td> 
					<td align="left" width="100px;" height="30px;">网络/单机</td> 
				</tr>
				<s:iterator value="pageBean.list" var="l">
					<tr onclick="selected(this)"
						id='<s:property value="#this.id"/>' name="a" ondblclick="modify()">
						<td align="left" width="350px;" height="30px;">
						<input type="checkbox" name="no" value='<s:property value="#this.id"/>' title="选择/不选择"><s:property value="#this.name" /></td>
						<td align="left" width="100px;" height="30px;">
						<s:select list="#{0:'单机游戏',1:'网络游戏'}" id="net" name="net" value="#this.net"></s:select>
						</td>						
					</tr>
				</s:iterator>
			</table>
			<%@ include file="/jsp/common/fenye.jsp"%>
		</s:form>
		<script type="text/javascript">
			var selectedId;
			function selected(obj){ 
				if(selectedId!=null){
					var bb = document.getElementById(selectedId);
					bb.setAttribute("class", "");
					obj.setAttribute("class", "selected"); 
					selectedId = obj.getAttribute("id"); 
					}
				else{
					obj.setAttribute("class", "selected"); 
					selectedId = obj.getAttribute("id");obj.setAttribute("class","selected"); 
					selectedId = obj.getAttribute("id");
					} 
				} 
			function removet(){ 
				formName =document.forms[0];
				formName.action="deleteCategory.action"; 
				formName.submit();  
				} 
			function release(){
				window.location.href="<%=path%>/admin/addCategory.action";
				}
			function modify(){ 
				if(selectedId==null)
				{
					alert("请选择要修改的游戏类别 ");
					return false;
					} 
				window.location.href="<%=path%>/admin/findCategoryById.action?catId="+selectedId;
				}  
			/* 是否全选标记 */
			var checkedAll = false;

			/* 全选/取消全选
			 * formName 所在form的name值
			 * checkboxName checkbox的name值
			 * 注意：所有checkbox的name值都必须一样，这样才能达到全选的效果
			 */
			function selectAll(formName, checkboxName) {
				var form = document.all.item(formName);
				var elements = form.elements[checkboxName];
				for (var i = 0; i < elements.length; i++) {
					var e = elements[i];
					if (checkedAll) {
						e.checked = false;
						form.alls.checked = false;
					} else {
						e.checked = true;
						form.alls.checked = true;
					}
				}
				if (checkedAll) {
					checkedAll = false;
				} else {
					checkedAll = true;
				}
			}
			/* 检查是否有checkbox被选中
			 * formName 所在form的name值
			 * checkboxName checkbox的name值
			 * 注意：所有checkbox的name值都必须一样，这样才能达到全选的效果
			 */
			function checkAll(formName, checkboxName) {
				var hasCheck = false;
				var form = document.all.item(formName);
				var elements = form.elements[checkboxName];
				for (var i = 0; i < elements.length; i++) {
					var e = elements[i];
					if (e.checked) {
						hasCheck = true;
					}
				}
				return hasCheck;
			}
			/* 执行操作 */
			function do_action() {
				if (!checkAll("formName", "no")) {
					alert("没有checkbox被选中，提示用户至少选择一个！");
				} else {
					removet();
				}
			}
		</script>
	</div>
</body>
</html>