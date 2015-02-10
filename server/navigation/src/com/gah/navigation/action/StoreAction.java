package com.gah.navigation.action;

import com.gah.navigation.bean.Store;
import com.gah.navigation.common.action.BaseAction;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.common.utils.Constant;
import com.gah.navigation.service.StoreService;
import com.googlecode.jsonplugin.annotations.JSON;

public class StoreAction extends BaseAction {
 
	private static final long serialVersionUID = -3841322793212117896L;
	
	public StoreService storeService;
	public PageBean pageBean;
	public int page;
	public Store store;
	public String sid;
	
	/**
	 * 查找所有的发布人的信息
	 * @return
	 */
	public String findAllStore(){
		pageBean = storeService.queryForPage(Constant.PAGE_SIZE, page) ;
		return SUCCESS;
	}
	/**
	 * 根据传回的ids来删除游戏
	 * @return
	 */
	public String deleteByIds(){
		String no[] = getRequest().getParameterValues("no");
		for(int i = 0; i<no.length;i++){
			storeService.delStoreById(Integer.valueOf(no[i]));
		}  
		pageBean = storeService.queryForPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	}
	public String findStoreById(){
		store = storeService.findreStoreById(Integer.valueOf(sid));
		return SUCCESS;
	}
	public String saveOrUpdate(){
		storeService.saveOrUpdate(store);
		pageBean = storeService.queryForPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	} 
	/**
	 * 跳转到添加页面
	 * @return
	 */
	public String add(){
		return SUCCESS;
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
	public Store getStore() {
		return store;
	}
	public void setStore(Store store) {
		this.store = store;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	@JSON(serialize=false)
	public StoreService getStoreService() {
		return storeService;
	}
	public void setStoreService(StoreService storeService) {
		this.storeService = storeService;
	}
}



















