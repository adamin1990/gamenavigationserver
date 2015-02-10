package com.gah.navigation.service;

import com.gah.navigation.bean.ReleaseMan;
import com.gah.navigation.common.bean.PageBean;

public interface ReleaseService {
	public void saveOrUpdate( ReleaseMan releaseMan);
	
	public ReleaseMan findReleaseByName(String name);
	/**   
	�� * �������ķ�ҳ��ѯ   
	�� * @param pageNo  ��ǰ�ڼ�ҳ   
	�� * @param pageSize ÿҳ��С   
	�� * @param hql 		��ѯ����
	��* @return ����˷�ҳ��Ϣ(������¼��list)��Bean   
	��*/   
	public PageBean queryForPage(int pageSize, int pageNo);
	
	public void delReleaseById(int rId);
	
	public ReleaseMan findreReleaseById(int rid);
	
}
