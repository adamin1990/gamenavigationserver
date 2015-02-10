package com.gah.navigation.dao.impl;

import java.util.List;

import org.hibernate.Query;

import com.gah.navigation.bean.Category;
import com.gah.navigation.common.dao.impl.BaseDaoImpl;
import com.gah.navigation.dao.CategoryDao;

public class CategoryDaoImpl  extends BaseDaoImpl implements CategoryDao{

	@Override
	public void saveCategory(Category category) {
		
	}
	@Override
	public void deleteCategory(Category category) {
		this.getHibernateTemplate().delete(category);
	}
	@Override
	public Category findCategoryById(int catId) {
		Category category = (Category) this.getHibernateTemplate().get(Category.class, catId);
		return category;
	}

	@Override
	public void updateCategory(Category category) {
		
	}
	@Override
	public List<Category> findAllCategory() {
		String hql ="from Category as a  order by a.id desc";
		List<Category> list = this.query(hql);
		return list;
	}
	@Override
	public List<?> queryForPage(int pageNo, int pageSize, String hql) {
		return this.query(hql, pageNo, pageSize);
	}
	@Override
	public int getAllRowCount() {
		return this.countAll("Category");
	}
	@Override
	public void saveUpdate(Category category) {
		this.saveOrUpdate(category);
	}
}
