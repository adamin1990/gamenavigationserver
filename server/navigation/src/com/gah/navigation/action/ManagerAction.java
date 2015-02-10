package com.gah.navigation.action;

import java.util.Map;

import com.gah.navigation.bean.Manager;
import com.gah.navigation.common.action.BaseAction;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.common.utils.Constant;
import com.gah.navigation.service.ManagerService;
import com.googlecode.jsonplugin.annotations.JSON;
import com.opensymphony.xwork2.ActionContext;

public class ManagerAction extends BaseAction { 
	private static final long serialVersionUID = -6627744187000825175L;

	public Manager man ; //管理员
	public ManagerService managerService;
	public String result;
	public PageBean pageBean;
	public int page;
	public String mid;
	
	public String login_man(){
		if(man!=null){
			Manager manager = managerService.findManager(man.getName(), man.getPassword());
			if(manager==null) result = "error";
			else{
				Map<String, Object> session = ActionContext.getContext().getSession();
				session.put(Constant.LOGIN_ADMIN, manager);//将用户加入session
				result="";
			}
		} 
		return SUCCESS;
	}
	public String manager(){
		if(this.checkLogin())
		return SUCCESS;
		else return ERROR;
	}
	/**
	 * 查找所有的用户的信息
	 * @return
	 */
	public String findAllManager(){
		pageBean = managerService.queryForPage(Constant.PAGE_SIZE, page) ;
		return SUCCESS;
	}
	/**
	 * 根据传回的ids来删除用户
	 * @return
	 */
	public String deleteByIds(){
		String no[] = getRequest().getParameterValues("no");
		for(int i = 0; i<no.length;i++){
			managerService.delManagerById(Integer.valueOf(no[i]));
		}  
		pageBean = managerService.queryForPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	}
	public String findManagerById(){
		man = managerService.findManagerById(Integer.valueOf(mid));
		return SUCCESS;
	}
	public String saveOrUpdate(){
		managerService.saveOrUpdate(man);
		pageBean = managerService.queryForPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	} 
	/**
	 * 跳转到添加页面
	 * @return
	 */
	public String add(){
		return SUCCESS;
	} 
	public Manager getMan() {
		return man;
	}

	public void setMan(Manager man) {
		this.man = man;
	}

	@JSON(serialize=false)
	public ManagerService getManagerService() {
		return managerService;
	}

	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}
	
}
