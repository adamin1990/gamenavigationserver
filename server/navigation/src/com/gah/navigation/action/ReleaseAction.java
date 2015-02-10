package com.gah.navigation.action;

import com.gah.navigation.bean.Category;
import com.gah.navigation.bean.ReleaseMan;
import com.gah.navigation.common.action.BaseAction;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.common.utils.Constant;
import com.gah.navigation.service.ReleaseService;
import com.googlecode.jsonplugin.annotations.JSON;
/**
 * 发布人管理
 * @author Gaoahui
 *
 */
public class ReleaseAction extends BaseAction {
	
	private static final long serialVersionUID = -3576963024011597273L;
	
	
	public ReleaseService releaseService;
	public PageBean pageBean;
	public int page ;
	public ReleaseMan releaseMan;
	public String rid;
	
	/**
	 * 查找所有的发布人的信息
	 * @return
	 */
	public String findAllRelease(){
		pageBean = releaseService.queryForPage(Constant.PAGE_SIZE, page) ;
		return SUCCESS;
	}
	/**
	 * 根据传回的ids来删除游戏
	 * @return
	 */
	public String deleteByIds(){
		String no[] = getRequest().getParameterValues("no");
		for(int i = 0; i<no.length;i++){
			releaseService.delReleaseById(Integer.valueOf(no[i]));
		}  
		pageBean = releaseService.queryForPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	}
	public String findReleaseById(){
		releaseMan = releaseService.findreReleaseById(Integer.valueOf(rid));
		return SUCCESS;
	}
	public String saveOrUpdate(){
		releaseService.saveOrUpdate(releaseMan);
		pageBean = releaseService.queryForPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	} 
	/**
	 * 跳转到添加页面
	 * @return
	 */
	public String add(){
		return SUCCESS;
	}
	@JSON(serialize=false)
	public ReleaseService getReleaseService() {
		return releaseService;
	}
	public void setReleaseService(ReleaseService releaseService) {
		this.releaseService = releaseService;
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
	 
	public ReleaseMan getReleaseMan() {
		return releaseMan;
	}
	public void setReleaseMan(ReleaseMan releaseMan) {
		this.releaseMan = releaseMan;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	
	
	
	
}
