package com.gah.navigation.action;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

import com.gah.navigation.bean.Category;
import com.gah.navigation.common.action.BaseAction;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.common.utils.Constant;
import com.gah.navigation.service.CategoryService;
import com.googlecode.jsonplugin.annotations.JSON;
import com.opensymphony.xwork2.ActionSupport;

public class CategoryAction extends BaseAction{
	
	private static final long serialVersionUID = 1L;

	public CategoryService categoryService;
	public List<Category> list = new ArrayList<Category>();
	public String catId;
	public String jsonstr;
	public Category category;
	public PageBean pageBean;
	public int page;//第几页
	
	/**
	 * 手机端
	 * 
	 * 查找所有的游戏类型
	 * @return
	 */
	public String findAllCate(){
		list = categoryService.findAllCate();
		JSONArray jsonObject = JSONArray.fromObject(list);
		jsonstr = jsonObject.toString();
		return SUCCESS;
	}
	/**
	 * 查找所有的游戏类别
	 * @return
	 */
	public String findAllCategory(){
		pageBean = categoryService.findAllCateByPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	}
	/**
	 * 根据no[]删除游戏类别
	 * @return
	 */
	public String deleteCategoryById(){
		
		String no[] = getRequest().getParameterValues("no");
		for(int i = 0; i<no.length;i++){
			categoryService.deleteById(Integer.valueOf(no[i]));
		}  
		pageBean = categoryService.findAllCateByPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	}

	/**
	 * 查找游戏类型详细
	 * @return
	 */
	public String findCategoryById(){
		category = categoryService.findCategoryById(Integer.valueOf(catId));
		return SUCCESS;
	}
	/**
	 * 跳转到添加页
	 * @return
	 */
	public String add(){
		return SUCCESS;
	}
	/**
	 * 更新或者添加新的游戏类型
	 * @return
	 */
	public String saveOrUpdate(){
		categoryService.saveOrUpdate(category);
		pageBean = categoryService.findAllCateByPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	}
	@JSON(serialize=false) 
	public CategoryService getCategoryService() {
		return categoryService;
	}
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	public List<Category> getList() {
		return list;
	}
	public void setList(List<Category> list) {
		this.list = list;
	}
	public String getCatId() {
		return catId;
	}
	public void setCatId(String catId) {
		this.catId = catId;
	}
	public String getJsonstr() {
		return jsonstr;
	}
	public void setJsonstr(String jsonstr) {
		this.jsonstr = jsonstr;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
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
	
}
