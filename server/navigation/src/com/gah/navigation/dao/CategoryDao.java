package com.gah.navigation.dao;

import java.util.List;

import com.gah.navigation.bean.Category;

public interface CategoryDao {

	public void saveCategory(Category category);
	
	public void deleteCategory(Category category);
	
	public Category findCategoryById(int catId);
	
	public void updateCategory(Category category);
	/**
	 * �������е���Ϸ����
	 * @return
	 * 		��Ϸ���
	 */
	public List<Category> findAllCategory();
	
	/**   
	���� * �������ķ�ҳ��ѯ   
	���� * @param pageNo ��ǰ��ʼҳ   
	���� * @param pageSize һ�β�ѯ������¼   
	���� * @param hql 	��ѯ����
	���� * @return   
	���� */   
	public List<?> queryForPage(final int pageNo, final int pageSize, final String hql); 
	/**
	 * ��ѯ�ܼ�¼��
	 * @return
	 */
	public int getAllRowCount();
	
	public void saveUpdate(Category category);
	
}
