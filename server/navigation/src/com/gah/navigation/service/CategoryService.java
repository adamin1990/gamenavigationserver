package com.gah.navigation.service;

import java.util.List;

import com.gah.navigation.bean.Category;
import com.gah.navigation.common.bean.PageBean;

public interface CategoryService {

	public Category findCategoryById(int catId);
	
	/**
	 * �������е���Ϸ����
	 * @return
	 */
	public List<Category> findAllCate();
	
	/**
	 * ��ҳ������Ϸ����
	 * @param pageSize
	 * @param pageNo
	 * @return
	 */
	public PageBean findAllCateByPage(int pageSize,int pageNo);
	
	public void deleteById(int id);
	/**
	 * ���»������Ϸ���
	 * @param category
	 */
	public void saveOrUpdate(Category category);
	
}
