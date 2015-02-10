package com.gah.navigation.service;

import com.gah.navigation.bean.Manager;
import com.gah.navigation.common.bean.PageBean;

public interface ManagerService {
	
	public Manager findManager(String name,String password);
	
	/**   
	�� * �������ķ�ҳ��ѯ   
	�� * @param pageNo  ��ǰ�ڼ�ҳ   
	�� * @param pageSize ÿҳ��С   
	�� * @param hql 		��ѯ����
	��* @return ����˷�ҳ��Ϣ(������¼��list)��Bean   
	��*/   
	public PageBean queryForPage(int pageSize, int pageNo);

	public void delManagerById(int string);

	public Manager findManagerById(int mid);

	public void saveOrUpdate(Manager man);

}
