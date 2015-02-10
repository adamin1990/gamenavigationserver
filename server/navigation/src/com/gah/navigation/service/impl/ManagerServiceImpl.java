package com.gah.navigation.service.impl;

import java.util.List;

import com.gah.navigation.bean.Manager;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.dao.ManagerDao;
import com.gah.navigation.service.ManagerService;

public class ManagerServiceImpl implements ManagerService{

	public ManagerDao managerDao;
	@Override
	public Manager findManager(String name, String password) {
		return managerDao.findManager(name, password);
	}
	
	@Override
	public PageBean queryForPage(int pageSize, int pageNo) {
		int allRow = managerDao.getAllRowCount();// 总记录数    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// 总页数    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from Manager as a  order by a.id desc";
		List<?> list = managerDao.queryForPage(pageNo, pageSize, hql);// "一页"的记录    
		
		// 把分页信息保存到Bean中    
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
	public void saveOrUpdate(Manager man) {
		managerDao.saveUpdate(man);
	}
	@Override
	public void delManagerById(int string) {
		managerDao.delManagerById(string);
		
	}
	@Override
	public Manager findManagerById(int mid) {
		 
		return managerDao.findManagerById(mid);
	}

	public ManagerDao getManagerDao() {
		return managerDao;
	}
	public void setManagerDao(ManagerDao managerDao) {
		this.managerDao = managerDao;
	}
	
}
