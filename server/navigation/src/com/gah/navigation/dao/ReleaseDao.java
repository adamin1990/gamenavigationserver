package com.gah.navigation.dao;

import java.util.List;

import com.gah.navigation.bean.ReleaseMan;

public interface ReleaseDao {

	public void saveRelease(ReleaseMan releaseMan);
	
	public void deleteRelease(ReleaseMan releaseMan);
	
	public ReleaseMan findReleaseById(int rId);
	
	public void updateRelease(ReleaseMan releaseMan);
	/**
	 * 根据发布人名称查找发布人信息
	 * @return
	 */
	public ReleaseMan findReleaseByName(String name);
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
}
