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
<title>用户</title>
<script>
function doSave(){ 
		if (isBlank(document.getElementById("topic"))) { 
			alert("用户名称不能为空!");
			return false;
		} 
		if (isBlank(document.getElementById("password"))) { 
			alert("密码不能为空!");
			return false;
		}
		if (confirm("确认保存用户信息吗?")) {
			form1.submit();
		} else {
			return false;
		}
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
							<s:if test="manager == null">
								添加用户
							</s:if>
							<s:else>
								更新用户信息
							</s:else>	
							</strong>
						</h3>
						<br />
						<div class="dynD">
						</div>
						<div>
						<s:form action="releaseManager" name="form1" method="post" enctype="multipart/form-data" >
							<s:hidden name="man.id"></s:hidden>
							<table class="baseInfo fcolor_8" style="width: 100%">
								<tbody>
									<tr>
										<td>
											<div align="right">用户名</div>
										</td>
										<td>
											<s:textfield name="man.name" id="topic" size="20" maxlength="50"/>
											<font color="#FF0000">*</font>
										</td>
									</tr> 
									<tr></tr> 
									<tr>
										<td>
											<div align="right">用户密码</div>
										</td>
										<td>
											<s:textfield name="man.password" id="password" size="20" maxlength="50"/>
											<font color="#FF0000">*</font>
										</td>
									</tr> 
									<tr>
										<td>
											<div align="right">用户是否注销</div>
										</td>
										<td>
											<s:select list="#{0:'用户已注销',1:'用户未注销'}" name="man.flag"></s:select>
										</td>
									</tr>
									 <tr>
										<td>
											<div align="right">用户类型</div>
										</td>
										<td>
											<select name="man.type">
												<option value="0">
													超级管理员
												</option>
												<option value="1">
													普通管理员
												</option> 
											</select>
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