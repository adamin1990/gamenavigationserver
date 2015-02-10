package com.gah.navigation.service.impl;

import java.util.List;

import com.gah.navigation.bean.Store;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.dao.StoreDao;
import com.gah.navigation.service.StoreService;

public class StoreServiceImpl implements StoreService {

	public StoreDao storeDao;
	@Override
	public List<Store> findAllStore() {
		return storeDao.findAllStore();
	}
	
	@Override
	public PageBean queryForPage(int pAGE_SIZE, int page) {
		int allRow = storeDao.getAllRowCount();// 总记录数    
		int totalPage = PageBean.countTotalPage(pAGE_SIZE, allRow);// 总页数    
		final int currentPage = PageBean.countCurrentPage(page);  
		String hql = null;
		hql = "from Store as a order by a.id desc";
		List<?> list = storeDao.queryForPage(page, pAGE_SIZE, hql);// "一页"的记录    
		
		// 把分页信息保存到Bean中    
		PageBean pageBean = new PageBean();    
		pageBean.setPageSize(pAGE_SIZE);  
		pageBean.setCurrentPage(currentPage);    
		pageBean.setAllRow(allRow);    
		pageBean.setTotalPage(totalPage);    
		pageBean.setList(list);    
		pageBean.init(); 
		
		return pageBean;
	}
	@Override
	public void delStoreById(int string) {
		storeDao.delReleasebyId(string);
	}
	@Override
	public Store findreStoreById(int sid) {
		return storeDao.findStoreById(sid);
	}
	@Override
	public void saveOrUpdate(Store store) {
		storeDao.saveUpdate(store);
	}

	public StoreDao getStoreDao() {
		return storeDao;
	}
	public void setStoreDao(StoreDao storeDao) {
		this.storeDao = storeDao;
	}
}
