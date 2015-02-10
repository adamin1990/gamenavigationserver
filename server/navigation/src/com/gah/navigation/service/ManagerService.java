package com.gah.navigation.service;

import com.gah.navigation.bean.Manager;
import com.gah.navigation.common.bean.PageBean;

public interface ManagerService {
	
	public Manager findManager(String name,String password);
	
	/**   
	　 * 带条件的分页查询   
	　 * @param pageNo  当前第几页   
	　 * @param pageSize 每页大小   
	　 * @param hql 		查询条件
	　* @return 封闭了分页信息(包括记录集list)的Bean   
	　*/   
	public PageBean queryForPage(int pageSize, int pageNo);

	public void delManagerById(int string);

	public Manager findManagerById(int mid);

	public void saveOrUpdate(Manager man);

}
