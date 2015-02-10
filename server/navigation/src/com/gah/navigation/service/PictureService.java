package com.gah.navigation.service;

import java.util.List;

import com.gah.navigation.bean.Picture;
import com.gah.navigation.common.bean.PageBean;

public interface PictureService {
	/**
	 * ��ȡ���е�ͼƬ
	 * @param pAGE_SIZE
	 * @param page
	 * @return
	 */
	PageBean queryForPage(int pAGE_SIZE, int page);

	void delPictureById(int string);

	Picture findPictureById(int pid);

	void saveOrUpdate(Picture picture);

	/**
	 * ��ȡ�Ƽ���Ϸ��ͼ��
	 * @param pageSize
	 * @param pageNo
	 * @return
	 */
	public PageBean mqueryForPage(int pageSize, int pageNo,String belong); 
	/**
	 * 
	 * @param pageSize
	 * @param pageNo
	 * @return
	 */
	public PageBean mqueryAllForPage(int pageSize, int pageNo);
	
	public List<Picture> findPictureByGameId(String gameid);
	
	public PageBean mqueryAllForPageByCateRecon(int pageSize,int pageNo ,int cid);
	/**
	 * ��ȡĳ������е���Ϸ
	 * @param pageSize
	 * @param pageNo
	 * @param cid
	 * @return
	 */
	public PageBean mqueryAllForPageByCate(int pageSize,int pageNo,int cid);
	
	public PageBean queryForPage_sp(int pAGE_SIZE, int page);
	
	public PageBean queryByConditon(int pageSize,int pageNo,String condition);

	PageBean queryForPageByGame(int pAGE_SIZE, int page ,int gid);

	PageBean mqueryForPage_sp(int i, int page,String belong);
	/**
	 * �������еı��Ƽ�����Ϸ��ͼƬ
	 * 
	 * @return
	 */
	public PageBean findReconPictures(int pageSize,int pageNo,String belong ,String type);

}
