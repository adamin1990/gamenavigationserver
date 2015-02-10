package com.gah.navigation.service.impl;

import java.util.List;

import com.gah.navigation.bean.Picture;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.dao.PictureDao;
import com.gah.navigation.service.PictureService;

public class PictureServiceImpl implements PictureService {

	public PictureDao pictureDao;
	@Override
	public PageBean queryForPage(int pAGE_SIZE, int page) {
		int allRow = pictureDao.getAllRowCount();// �ܼ�¼��    
		int totalPage = PageBean.countTotalPage(pAGE_SIZE, allRow);// ��ҳ��    
		final int currentPage = PageBean.countCurrentPage(page);  
		String hql = null;
		hql = "from Picture as a  order by a.id  desc";
		List<?> list = pictureDao.queryForPage(page, pAGE_SIZE, hql);// "һҳ"�ļ�¼    
		
		// �ѷ�ҳ��Ϣ���浽Bean��    
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
	public PageBean mqueryForPage(int pageSize, int pageNo,String belong) {    
		int allRow = pictureDao.getAllRowCount();// �ܼ�¼��    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// ��ҳ��    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from Picture as a  where type = 0 and a.gameid.id <> null and a.gameid.flag ='1' and a.gameid.belong = '"+belong+"'order by a.id desc ";
		List<?> list = pictureDao.queryForPage(pageNo, pageSize, hql);// "һҳ"�ļ�¼    
		
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
	public PageBean mqueryForPage_sp(int pageSize, int pageNo,String belong) {
		int allRow = pictureDao.getAllRowCount();// �ܼ�¼��    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// ��ҳ��    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from Picture as a  where type = 2 and a.gameid.id <> null and a.gameid.flag ='2' and a.gameid.belong = '"+belong+"' order by a.id desc ";
		List<?> list = pictureDao.queryForPage(pageNo, pageSize, hql);// "һҳ"�ļ�¼    
		
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
	/**
	 * ��ȡ������Ϸ��ͼ��
	 */
	public PageBean mqueryAllForPage(int pageSize, int pageNo) {
		int allRow = pictureDao.getAllRowCount();// �ܼ�¼��    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// ��ҳ��    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from Picture as a  where type = 0 and a.gameid.id <> null order by a.id  desc";
		List<?> list = pictureDao.queryForPage(pageNo, pageSize, hql);// "һҳ"�ļ�¼    
		
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
	public void delPictureById(int string) {
		this.pictureDao.delPictureById(string);
	}

	@Override
	public Picture findPictureById(int pid) {
		return pictureDao.findPictureById(pid);
	}

	@Override
	public void saveOrUpdate(Picture picture) {
		pictureDao.Updateorsave(picture);
	}

	public PictureDao getPictureDao() {
		return pictureDao;
	}

	public void setPictureDao(PictureDao pictureDao) {
		this.pictureDao = pictureDao;
	}

	@Override
	public List<Picture> findPictureByGameId(String gameid) {
		List<Picture> list = pictureDao.findPicturesByGameId(gameid);
		
		return list;
	}

	@Override
	public PageBean mqueryAllForPageByCateRecon(int pageSize, int pageNo,
			int cid) {
		int allRow = pictureDao.getAllRowCount();// �ܼ�¼��    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// ��ҳ��    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from Picture as a  where type = 0 and a.gameid.id <> null and a.gameid.flag ='3'  and  a.gameid.category.id = "+cid+"order by a.id desc";
		List<?> list = pictureDao.queryForPage(pageNo, pageSize, hql);// "һҳ"�ļ�¼    
		
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
	public PageBean mqueryAllForPageByCate(int pageSize, int pageNo, int cid) {
		int allRow = pictureDao.getAllRowCount();// �ܼ�¼��    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// ��ҳ��    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from Picture as a  where type = 0 and a.gameid.id <> null and a.gameid.category.id ="+cid+" order by a.id desc";
		List<?> list = pictureDao.queryForPage(pageNo, pageSize, hql);// "һҳ"�ļ�¼    
		
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
	public PageBean queryForPage_sp(int pAGE_SIZE, int page) {
		int allRow = pictureDao.getAllRowCount();// �ܼ�¼��    
		int totalPage = PageBean.countTotalPage(pAGE_SIZE, allRow);// ��ҳ��    
		final int currentPage = PageBean.countCurrentPage(page);  
		String hql = null;
		hql = "from Picture as a  where type = 0 and a.gameid.id <> null and a.gameid.flag ='2'  order by a.id desc ";
		List<?> list = pictureDao.queryForPage(page, pAGE_SIZE, hql);// "һҳ"�ļ�¼    
		
		// �ѷ�ҳ��Ϣ���浽Bean��    
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
	public PageBean queryByConditon(int pageSize, int pageNo, String condition) { 
		if(condition.equals("null")){
			condition = "%";
		}
		int allRow = pictureDao.getAllRowCount();// �ܼ�¼��     
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// ��ҳ��     
		final int currentPage = PageBean.countCurrentPage(pageNo);   
		String hql = null; 
		hql = "from Picture as a  where type = 0 and a.gameid.id <> null and  a.gameid.name like '%"+condition+"%'  order by a.id desc";    
		List<?> list = pictureDao.queryForPage(pageNo, pageSize, hql);// "һҳ"�ļ�¼     
		
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
	public PageBean queryForPageByGame(int pAGE_SIZE, int page, int gid) {
		String hql1 = "select count(*) from Picture as a where a.gameid.id = "+gid;
		int allRow = pictureDao.getAllRowCountByHql(hql1);// �ܼ�¼��    
		int totalPage = PageBean.countTotalPage(pAGE_SIZE, allRow);// ��ҳ��    
		final int currentPage = PageBean.countCurrentPage(page);  
		String hql = null;
		hql = "from Picture as a where a.gameid.id = "+gid;
		List<?> list = pictureDao.queryForPage(page, pAGE_SIZE, hql);// "һҳ"�ļ�¼    
		
		// �ѷ�ҳ��Ϣ���浽Bean��    
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
	public PageBean findReconPictures(int pageSize, int pageNo, String belong,
			String type) {
		// TODO  ���������ĸ��ͻ��˵ģ��ĸ����͵��Ƽ���Ϸ��ͼƬ
		 
		
		return null;
	}
 
}
