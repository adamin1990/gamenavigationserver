package com.gah.navigation.dao;

import java.util.List;

import com.gah.navigation.bean.Store;

public interface StoreDao {

	public void saveStore(Store store);
	
	public void deleteStore(Store store);
	
	public Store findStoreById(int sId);
	
	public void updateStore(Store store);
	/**
	 * �������е�Ӧ���̵�
	 * @return
	 */
	public List<Store> findAllStore();
	
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
	
	public void saveUpdate(Store store);
}
