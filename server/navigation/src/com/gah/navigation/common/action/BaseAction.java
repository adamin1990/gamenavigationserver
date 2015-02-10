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
 *  Ϊ�˼򻯿������Ժ���޸ĺ͹���
 * �����õķ������ܷ���BaseAction������������Action��̳�
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
	 * ��¼״̬У��
	 * δ��¼���׳��쳣NavigationException
	 * @throws NavigationException 
	*/
	public boolean checkLogin() {
		Map<String,Object> map=ActionContext.getContext().getSession();
		Manager user=(Manager)map.get(Constant.LOGIN_ADMIN);
		
		if (null == user) {
			throw new NavigationRuntimeException("��½��ʱ��δ��¼,�����µ�½ϵͳ!");
		}
		return true;
	}
	
	/**
	 * ������־��Ϣ
	 * 
	 */
	public void saveLog () {
		//TODO...
	}

}
