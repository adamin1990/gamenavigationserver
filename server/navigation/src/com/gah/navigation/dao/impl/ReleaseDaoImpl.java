package com.gah.navigation.dao.impl;

import java.util.List;

import com.gah.navigation.bean.ReleaseMan;
import com.gah.navigation.common.dao.impl.BaseDaoImpl;
import com.gah.navigation.dao.ReleaseDao;

public class ReleaseDaoImpl extends BaseDaoImpl implements ReleaseDao {

	@Override
	public void saveRelease(ReleaseMan releaseMan) {
		this.saveOrUpdate(releaseMan);
	}
	@Override
	public void deleteRelease(ReleaseMan releaseMan) {
		this.getHibernateTemplate().delete(releaseMan);
	}
	@Override
	public ReleaseMan findReleaseById(int rId) {
		return (ReleaseMan) this.loadById(ReleaseMan.class, rId);
	}
	@Override
	public void updateRelease(ReleaseMan releaseMan) {
		
	}
	@Override
	public ReleaseMan findReleaseByName(String name) {
		String hql = "from ReleaseMan where name = '"+name+"'";
		return (ReleaseMan) this.loadObject(hql);
	}
	@Override
	public List<?> queryForPage(int pageNo, int pageSize, String hql) {
		return this.query(hql, pageNo, pageSize);
	}
	@Override
	public int getAllRowCount() {
		return this.countAll("ReleaseMan");
	}
	@Override
	public void delReleasebyId(int rId) {
		this.delById(ReleaseMan.class, rId);
	}
}
