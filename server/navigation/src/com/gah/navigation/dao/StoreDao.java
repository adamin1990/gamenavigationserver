package com.gah.navigation.dao;

import java.util.List;

import com.gah.navigation.bean.Store;

public interface StoreDao {

	public void saveStore(Store store);
	
	public void deleteStore(Store store);
	
	public Store findStoreById(int sId);
	
	public void updateStore(Store store);
	/**
	 * 查找所有的应用商店
	 * @return
	 */
	public List<Store> findAllStore();
	
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
	
	public void delReleasebyId(int rId);
	
	public void saveUpdate(Store store);
}
