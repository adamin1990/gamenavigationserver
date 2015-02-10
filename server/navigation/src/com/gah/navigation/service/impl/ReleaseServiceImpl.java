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
		int allRow = releaseDao.getAllRowCount();// �ܼ�¼��    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// ��ҳ��    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from ReleaseMan as a order by a.id desc";
		List<?> list = releaseDao.queryForPage(pageNo, pageSize, hql);// "һҳ"�ļ�¼    
		
		// �ѷ�ҳ��Ϣ���浽Bean��    
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
