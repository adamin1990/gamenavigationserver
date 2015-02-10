package com.gah.navigation.dao;

import java.util.List;

import com.gah.navigation.bean.Category;

public interface CategoryDao {

	public void saveCategory(Category category);
	
	public void deleteCategory(Category category);
	
	public Category findCategoryById(int catId);
	
	public void updateCategory(Category category);
	/**
	 * 查找所有的游戏类型
	 * @return
	 * 		游戏类别
	 */
	public List<Category> findAllCategory();
	
	/**   
	　　 * 带条件的分页查询   
	　　 * @param pageNo 当前开始页   
	　　 * @param pageSize 一次查询几条记录   
	　　 * @param hql 	查询条件
	　　 * @return   
	　　 */   
	public List<?> queryForPage(final int pageNo, final int pageSize, final String hql); 
	/**
	 * 查询总记录数
	 * @return
	 */
	public int getAllRowCount();
	
	public void saveUpdate(Category category);
	
}
