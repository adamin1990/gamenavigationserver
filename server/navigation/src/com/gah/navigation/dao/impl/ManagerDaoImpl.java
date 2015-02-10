package com.gah.navigation.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.gah.navigation.bean.Manager;
import com.gah.navigation.common.dao.impl.BaseDaoImpl;
import com.gah.navigation.dao.ManagerDao;

public class ManagerDaoImpl extends BaseDaoImpl implements ManagerDao {

	@Override
	public void saveManager(Manager manager) {
	}

	@Override
	public void deleteManager(Manager manager) {
	}

	@Override
	public Manager findManagerById(int mId) {
		return (Manager) this.loadById(Manager.class, mId);
	}
	@Override
	public void updateManager(Manager manager) {
		
	}
 	@Override
	public Manager findManager(String name, String password) {
		String sql = "select * from manager where name = '"+name+"' and password = '"+password+"' and flag = 1";
		Query query = this.getSession().createSQLQuery(sql);
		List<?> list = query.list();
		if(list.size()==0){
			return null;
		}else{
			List<Manager> mans = this.getHibernateTemplate().find("from Manager where name = '"+name+"' and password ='"+password+"'");
			return mans.get(0);
		} 
	}

	@Override
	public List<?> queryForPage(int pageNo, int pageSize, String hql) {
		return this.query(hql, pageNo, pageSize);
	}

	@Override
	public int getAllRowCount() {
		return this.countAll("Manager");
	}

	@Override
	public void delManagerById(int string) {
		this.delById(Manager.class, string);
	}

	@Override
	public void saveUpdate(Manager man) {
		this.saveOrUpdate(man);
	}

}
