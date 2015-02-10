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
	public int page;//�ڼ�ҳ
	
	/**
	 * �ֻ���
	 * 
	 * �������е���Ϸ����
	 * @return
	 */
	public String findAllCate(){
		list = categoryService.findAllCate();
		JSONArray jsonObject = JSONArray.fromObject(list);
		jsonstr = jsonObject.toString();
		return SUCCESS;
	}
	/**
	 * �������е���Ϸ���
	 * @return
	 */
	public String findAllCategory(){
		pageBean = categoryService.findAllCateByPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	}
	/**
	 * ����no[]ɾ����Ϸ���
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
	 * ������Ϸ������ϸ
	 * @return
	 */
	public String findCategoryById(){
		category = categoryService.findCategoryById(Integer.valueOf(catId));
		return SUCCESS;
	}
	/**
	 * ��ת�����ҳ
	 * @return
	 */
	public String add(){
		return SUCCESS;
	}
	/**
	 * ���»�������µ���Ϸ����
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
