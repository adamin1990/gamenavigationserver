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
	　　 * 带条件的分页查询   
	　　 * @param pageNo 当前开始页   
	　　 * @param pageSize 一次查询几条记录   
	　　 * @param hql 	查询条件
	　　 * @return   
	　　 */   
	public List<?> queryForPage(final int pageNo, final int pageSize, final String hql); 
	/**
	 * 查询总记录数
	 * @return
	 */
	public int getAllRowCount();
	/**
	 * 带查询条件的总记录数
	 * @return
	 */
	public int getQueryCount(final String hql);
	
	public void updateOrAdd(Game game);
	
	public List<Game> findGameByCate(int catid);
}
