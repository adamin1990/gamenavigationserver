package com.gah.navigation.service;

import java.util.List;

import com.gah.navigation.bean.Game;
import com.gah.navigation.common.bean.PageBean;

public interface GameService {

	/**   
	�� * �������ķ�ҳ��ѯ   
	�� * @param pageNo  ��ǰ�ڼ�ҳ   
	�� * @param pageSize ÿҳ��С   
	�� * @param hql 		��ѯ����
	��* @return ����˷�ҳ��Ϣ(������¼��list)��Bean   
	��*/   
	public PageBean queryForPage(int pageSize, int pageNo);
	
	public void delete(int id);
	/**
	 * ��ȡ���������е���Ϸ
	 * @param pageSize
	 * @param pageNo
	 * @param cid
	 * @return
	 */
	public PageBean queryForPageByCate(int pageSize,int pageNo,String cid);
	
	public Game findGameById(int gameid);
	
	public void updateOrAdd(Game game);
	
	public Game findGameByName(String name);
	
	public void saveGame(Game game);
	/**
	 * ��ȡ������е������Ƽ�����Ϸ
	 * @param pageSize
	 * @param pageNo
	 * @param cid
	 * @return
	 */
	public PageBean queryForPageByCateRecon(int pageSize,int pageNo,String cid);
	
	public List<Game> findGameByCate(int catid);
	
	
}
