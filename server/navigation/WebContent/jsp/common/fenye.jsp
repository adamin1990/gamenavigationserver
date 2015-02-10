<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ include file="/jsp/common/taglib.jsp" %>
<s:if test="pageBean.allRow>0">
<font class="a03" style="color:#666"> 当前页:第<s:property value="pageBean.currentPage"/>页
	| 总记录数:<s:property value="pageBean.allRow"/>条 | 每页显示:<s:property value="pageBean.pageSize"/>条 |
	总页数:<s:property value="pageBean.totalPage"/>页跳到<s:select list="pageBean.numlist" theme="simple" value="page" onchange="javascript:skip(this)" ></s:select>
	<s:if test="%{pageBean.currentPage == 1}">第一页 上一页</s:if>
	<s:else>
		<a href="javascript:topage('1')">第一页</a>
		<a href="javascript:topage('<s:property value="%{pageBean.currentPage-1}"/>')">上一页</a>
	</s:else> <s:if test="%{pageBean.currentPage != pageBean.totalPage}"> 
		<a href="javascript:topage('<s:property value="%{pageBean.currentPage+1}"/>')">下一页</a>
		<a href="javascript:topage('<s:property value="%{pageBean.totalPage}"/>')">最后一页</a>
	</s:if> 
	<s:else>下一页 最后一页</s:else>
	
</font>
</s:if><s:else>没有查到数据</s:else>