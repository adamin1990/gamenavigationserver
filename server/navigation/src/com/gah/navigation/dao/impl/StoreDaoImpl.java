package com.gah.navigation.dao.impl;

import java.util.List;

import com.gah.navigation.bean.Category;
import com.gah.navigation.bean.Store;
import com.gah.navigation.common.dao.impl.BaseDaoImpl;
import com.gah.navigation.dao.StoreDao;

public class StoreDaoImpl extends BaseDaoImpl implements StoreDao {

	@Override
	public void saveStore(Store store) {
		
	}

	@Override
	public void deleteStore(Store store) {
		
	}

	@Override
	public Store findStoreById(int sId) {
		return (Store) this.loadById(Store.class, sId);
	}

	@Override
	public void updateStore(Store store) {
	}

	@Override
	public List<Store> findAllStore() {
		String hql ="from Store as a order by a.id desc";
		List<Store> list = this.query(hql);
		return list;
	}

	@Override
	public List<?> queryForPage(int pageNo, int pageSize, String hql) {
		return this.query(hql, pageNo, pageSize);
	}

	@Override
	public int getAllRowCount() {
		return this.countAll("Store");
	}

	@Override
	public void delReleasebyId(int rId) {
		this.delById(Store.class, rId);
	}

	@Override
	public void saveUpdate(Store store) {
		this.saveOrUpdate(store);
	}
}
