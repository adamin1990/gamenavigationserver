package com.gah.navigation.service;

import com.gah.navigation.bean.ReleaseMan;
import com.gah.navigation.common.bean.PageBean;

public interface ReleaseService {
	public void saveOrUpdate( ReleaseMan releaseMan);
	
	public ReleaseMan findReleaseByName(String name);
	/**   
	　 * 带条件的分页查询   
	　 * @param pageNo  当前第几页   
	　 * @param pageSize 每页大小   
	　 * @param hql 		查询条件
	　* @return 封闭了分页信息(包括记录集list)的Bean   
	　*/   
	public PageBean queryForPage(int pageSize, int pageNo);
	
	public void delReleaseById(int rId);
	
	public ReleaseMan findreReleaseById(int rid);
	
}
