package com.gah.navigation.dao;

import java.util.List;

import com.gah.navigation.bean.Manager;

public interface ManagerDao {

	public void saveManager(Manager manager);
	
	public void deleteManager(Manager manager);
	
	
	public void updateManager(Manager manager);
	
	public Manager findManager(String name ,String password);
	
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
	
	public void delManagerById(int string);

	public Manager findManagerById(int mid);

	public void saveUpdate(Manager man);
}
