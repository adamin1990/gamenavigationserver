package com.gah.navigation.service;

import java.util.List;

import com.gah.navigation.bean.Category;
import com.gah.navigation.common.bean.PageBean;

public interface CategoryService {

	public Category findCategoryById(int catId);
	
	/**
	 * 查找所有的游戏类型
	 * @return
	 */
	public List<Category> findAllCate();
	
	/**
	 * 分页查找游戏类型
	 * @param pageSize
	 * @param pageNo
	 * @return
	 */
	public PageBean findAllCateByPage(int pageSize,int pageNo);
	
	public void deleteById(int id);
	/**
	 * 更新或添加游戏类别
	 * @param category
	 */
	public void saveOrUpdate(Category category);
	
}
