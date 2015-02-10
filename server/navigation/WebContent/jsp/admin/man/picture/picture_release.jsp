<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/jsp/common/taglib.jsp" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<%=path %>/css/release.css" type="text/css" rel="stylesheet"></link>
<script src="<%=path %>/js/validate.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=path %>/fckeditor/fckeditor.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图片</title>
<script>
function check(){
	var releasename = $("#gamename").val();
	var page = $("#page").val();
	var gid = $("#gid").val();
	var cid = $("#cid").val();
	var str = encodeURIComponent(releasename);
	var istrue;
	$.ajax({
		type:'POST',
		url:'<%=path %>/manjson/checkgamename.action',
		data:"gamename=" + str+"&cid="+cid+"&gid="+gid+"&page="+page,
		async:false,
		success:function(data){
			if(data.result == "error"){
					istrue = false;
			} 
			else{
				istrue = true; 
			}
		}
	});
	return istrue;
}

function doSave() {  
		if (!isBlank(form1.image) && !isImage(form1.image)) { 
			alert("只允许上传gif、jpg、bmp、png、jpeg！");
			return false; 
		}
		if (!isBlank(document.getElementById("gamename"))) { 
			if(!check()){
				alert("输入的游戏名称不存在，请重新输入");
				return false;
			}
		} 
		if (confirm("确认保存图片信息吗?")) {
			form1.submit();
		} else {
			return false;
		}
	}
</script>
</head>
<body style="background-color:#FFFFFF">
<s:fielderror />
	<div id="body">
		<div id="content" style="overflow: hidden">
			<div id="subContainer">
			  <div id="rightContainer">
					<div class="classification favoriteBg">
						<h3>
							<strong>
							<s:if test="picture==null">发布图片</s:if>
							<s:else>更新图片</s:else>	
							</strong>
						</h3>
						<br />
						<div class="dynD">
						</div>
						<div>
						<s:form action="releasePicture" name="form1" method="post" enctype="multipart/form-data" >
							<s:hidden name="picture.id"></s:hidden>
							<s:hidden name="cid" id="cid"></s:hidden>
							 <s:hidden name="gid" id="gid"></s:hidden>
							 <s:hidden name="page" id="page"></s:hidden>
							<table class="baseInfo fcolor_8" style="width: 100%">
								<tbody>
									<tr>
										<td>
											<div align="right">图片名称</div>
										</td>
										<td>
											<s:textfield name="picture.name" id="name" size="20" maxlength="50"/>
										</td>
									</tr>
									<tr></tr>
									<tr>
										<td>
											<div align="right">图片分类</div>
										</td>
										<td>
										<s:select list="#{'0':'图标','1':'图片','2':'首页滑动推荐'}" name="picture.type"></s:select>
										</td>
									</tr> 
									<tr></tr>
									<tr>
										<td>
											<div align="right">图片</div>
										</td>
										<td>
											<input type="file" name="image" size="30"/>
											<s:hidden name="picture.url"></s:hidden>
											<img alt='<s:property value="picture.url"/>' src="<s:property value="picture.url"/>" width="60px;" height="60px;" name="picture.url">
										</td>
									</tr>
									<tr></tr>
									<tr>
										<td>
											<div align="right">图片说明</div>
										</td>
										<td>
											<s:textarea name="picture.description" id="description" cols="40" rows="5"></s:textarea>
										</td>
									</tr>
									<tr></tr> 
									<tr>
										<td>
											<div align="right">所属游戏</div>
										</td>
										<td>
											 <s:textfield name="gamename" id="gamename" size="20" maxlength="50"/>
										</td>
									</tr>
									<tr></tr>
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