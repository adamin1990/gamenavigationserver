package com.gah.navigation.common.action;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gah.navigation.bean.Manager;
import com.gah.navigation.common.exception.NavigationRuntimeException;
import com.gah.navigation.common.utils.Constant;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport; 
/**
 *  为了简化开发及以后的修改和管理，
 * 将常用的方法或功能放在BaseAction中用来给其他Action类继承
 * @author Gaoahui
 *
 */
public class BaseAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}
	
	public HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}
	
	public HttpSession getSession() {
		return getRequest().getSession();
	}
	
	public ServletContext getServletContext() {
		return ServletActionContext.getServletContext();
	}
	/**
	 * 登录状态校验
	 * 未登录则抛出异常NavigationException
	 * @throws NavigationException 
	*/
	public boolean checkLogin() {
		Map<String,Object> map=ActionContext.getContext().getSession();
		Manager user=(Manager)map.get(Constant.LOGIN_ADMIN);
		
		if (null == user) {
			throw new NavigationRuntimeException("登陆超时或未登录,请重新登陆系统!");
		}
		return true;
	}
	
	/**
	 * 保存日志信息
	 * 
	 */
	public void saveLog () {
		//TODO...
	}

}
