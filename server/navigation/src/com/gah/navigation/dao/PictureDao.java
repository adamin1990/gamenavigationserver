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
	���� * �������ķ�ҳ��ѯ   
	���� * @param pageNo ��ǰ��ʼҳ   
	���� * @param pageSize һ�β�ѯ������¼   
	���� * @param hql 	��ѯ����
	���� * @return   
	���� */   
	public List<?> queryForPage(final int pageNo, final int pageSize, final String hql); 
	/**
	 * ��ѯ�ܼ�¼��
	 * @return
	 */
	public int getAllRowCount();
	
	public int getAllRowCountByHql(String hql);
	void delPictureById(int string);

	void Updateorsave(Picture picture);
	
	public List<Picture> findPicturesByGameId(String gameid);
	/**
	 * �������еı��Ƽ�����Ϸ
	 * @return
	 */
	public List<Picture> findReconPictures(final int pageNo, final int pageSize, final String hql);
	
	
}
