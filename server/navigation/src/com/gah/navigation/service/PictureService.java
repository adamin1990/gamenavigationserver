package com.gah.navigation.service;

import java.util.List;

import com.gah.navigation.bean.Picture;
import com.gah.navigation.common.bean.PageBean;

public interface PictureService {
	/**
	 * 获取所有的图片
	 * @param pAGE_SIZE
	 * @param page
	 * @return
	 */
	PageBean queryForPage(int pAGE_SIZE, int page);

	void delPictureById(int string);

	Picture findPictureById(int pid);

	void saveOrUpdate(Picture picture);

	/**
	 * 获取推荐游戏的图标
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
	 * 获取某类的所有的游戏
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
	 * 查找所有的被推荐的游戏，图片
	 * 
	 * @return
	 */
	public PageBean findReconPictures(int pageSize,int pageNo,String belong ,String type);

}
