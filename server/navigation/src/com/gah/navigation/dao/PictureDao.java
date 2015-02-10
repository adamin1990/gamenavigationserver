package com.gah.navigation.dao;

import java.util.List;

import com.gah.navigation.bean.Manager;
import com.gah.navigation.bean.Picture;

public interface PictureDao {

	public void savePicture(Picture picture);
	
	public void deletePicture(Picture picture);
	
	public Picture findPictureById(Integer pId);
	
	public void updatePicture(Picture picture);
	
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
	
	public int getAllRowCountByHql(String hql);
	void delPictureById(int string);

	void Updateorsave(Picture picture);
	
	public List<Picture> findPicturesByGameId(String gameid);
	/**
	 * 查找所有的被推荐的游戏
	 * @return
	 */
	public List<Picture> findReconPictures(final int pageNo, final int pageSize, final String hql);
	
	
}
