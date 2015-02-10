package com.gah.navigation.service;

import java.util.List;

import com.gah.navigation.bean.Store;
import com.gah.navigation.common.bean.PageBean;

public interface StoreService {
	/**
	 * �������е�Ӧ���̵�
	 * @return
	 */
	public List<Store> findAllStore();

	public PageBean queryForPage(int pAGE_SIZE, int page);

	public void delStoreById(int integer);

	public Store findreStoreById(int sid);

	public void saveOrUpdate(Store store);

}
