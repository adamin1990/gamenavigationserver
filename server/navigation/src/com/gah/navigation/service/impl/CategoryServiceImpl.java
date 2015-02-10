package com.gah.navigation.service.impl;

import java.util.List;

import com.gah.navigation.bean.Category;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.dao.CategoryDao;
import com.gah.navigation.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {

	public CategoryDao categoryDao;
	@Override
	public Category findCategoryById(int catId) {
		Category category = categoryDao.findCategoryById(catId);
		return category;
	}
	@Override
	public List<Category> findAllCate() {
		return categoryDao.findAllCategory();
	} 
	public CategoryDao getCategoryDao() {
		return categoryDao;
	}
	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}
	@Override
	public void deleteById(int id) {
		Category category = categoryDao.findCategoryById(id);
		categoryDao.deleteCategory(category);
	}
	@Override
	public PageBean findAllCateByPage(int pageSize, int pageNo) {
		int allRow = categoryDao.getAllRowCount();// 总记录数    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// 总页数    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from Category as a order by a.id desc";
		List<?> list = categoryDao.queryForPage(pageNo, pageSize, hql);// "一页"的记录    
		
		// 把分页信息保存到Bean中    
		PageBean pageBean = new PageBean();    
		pageBean.setPageSize(pageSize);  
		pageBean.setCurrentPage(currentPage);    
		pageBean.setAllRow(allRow);    
		pageBean.setTotalPage(totalPage);    
		pageBean.setList(list);    
		pageBean.init(); 
		
		return pageBean;
	}
	@Override
	public void saveOrUpdate(Category category) {
		categoryDao.saveUpdate(category);
	}
}
