package com.gah.navigation.dao;

import java.util.List;

import com.gah.navigation.bean.ReleaseMan;

public interface ReleaseDao {

	public void saveRelease(ReleaseMan releaseMan);
	
	public void deleteRelease(ReleaseMan releaseMan);
	
	public ReleaseMan findReleaseById(int rId);
	
	public void updateRelease(ReleaseMan releaseMan);
	/**
	 * ���ݷ��������Ʋ��ҷ�������Ϣ
	 * @return
	 */
	public ReleaseMan findReleaseByName(String name);
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
	
	public void delReleasebyId(int rId);
}
