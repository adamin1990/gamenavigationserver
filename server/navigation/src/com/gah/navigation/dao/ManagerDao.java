package com.gah.navigation.dao;

import java.util.List;

import com.gah.navigation.bean.Manager;

public interface ManagerDao {

	public void saveManager(Manager manager);
	
	public void deleteManager(Manager manager);
	
	
	public void updateManager(Manager manager);
	
	public Manager findManager(String name ,String password);
	
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
	
	public void delManagerById(int string);

	public Manager findManagerById(int mid);

	public void saveUpdate(Manager man);
}
