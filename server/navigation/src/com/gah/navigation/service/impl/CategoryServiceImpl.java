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
		int allRow = categoryDao.getAllRowCount();// �ܼ�¼��    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// ��ҳ��    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from Category as a order by a.id desc";
		List<?> list = categoryDao.queryForPage(pageNo, pageSize, hql);// "һҳ"�ļ�¼    
		
		// �ѷ�ҳ��Ϣ���浽Bean��    
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
