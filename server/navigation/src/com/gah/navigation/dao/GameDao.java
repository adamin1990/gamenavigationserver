package com.gah.navigation.dao;

import java.util.List;

import com.gah.navigation.bean.Game;

public interface GameDao {
	
	public void saveGame(Game game);
	
	public void deleteGame(Game game);
	
	public Game findGameById(Integer gameId);
	
	public Game findGameByName(String name);
	
	public void updateGame(Game game);
	
	
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
	/**
	 * ����ѯ�������ܼ�¼��
	 * @return
	 */
	public int getQueryCount(final String hql);
	
	public void updateOrAdd(Game game);
	
	public List<Game> findGameByCate(int catid);
}
