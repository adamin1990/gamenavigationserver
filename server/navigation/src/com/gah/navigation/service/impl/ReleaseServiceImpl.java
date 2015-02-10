package com.gah.navigation.service.impl;

import java.util.List;

import com.gah.navigation.bean.ReleaseMan;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.dao.ReleaseDao;
import com.gah.navigation.service.ReleaseService;

public class ReleaseServiceImpl implements ReleaseService {

	public ReleaseDao releaseDao;
	
	@Override
	public void saveOrUpdate(ReleaseMan releaseMan) {
		releaseDao.saveRelease(releaseMan);
	}

	@Override
	public ReleaseMan findReleaseByName(String name) {
		ReleaseMan releaseMan = releaseDao.findReleaseByName(name);
		return releaseMan;
	}

	public ReleaseDao getReleaseDao() {
		return releaseDao;
	}

	public void setReleaseDao(ReleaseDao releaseDao) {
		this.releaseDao = releaseDao;
	}

	@Override
	public PageBean queryForPage(int pageSize, int pageNo) {
		int allRow = releaseDao.getAllRowCount();// 总记录数    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// 总页数    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from ReleaseMan as a order by a.id desc";
		List<?> list = releaseDao.queryForPage(pageNo, pageSize, hql);// "一页"的记录    
		
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
	public void delReleaseById(int rId) {
		this.releaseDao.delReleasebyId(rId);
	}

	@Override
	public ReleaseMan findreReleaseById(int rid) {
		return releaseDao.findReleaseById(rid);
	}

	
}
