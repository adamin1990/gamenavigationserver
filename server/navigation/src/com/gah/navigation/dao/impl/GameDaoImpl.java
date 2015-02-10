package com.gah.navigation.dao.impl;

import java.util.List;

import org.hibernate.Transaction;

import com.gah.navigation.bean.Game;
import com.gah.navigation.common.dao.impl.BaseDaoImpl;
import com.gah.navigation.dao.GameDao;

public class GameDaoImpl extends BaseDaoImpl implements GameDao {

	@Override
	public void saveGame(Game game) {
	}
	@Override
	public void deleteGame(Game game) {
		this.getHibernateTemplate().delete(game);
	}
	@Override
	public Game findGameById(Integer gameId) {
		return (Game) this.getHibernateTemplate().get(Game.class, gameId);
	}
	@Override
	public void updateGame(Game game) {
	}
	@Override
	public List<?> queryForPage(int pageNo, int pageSize, String hql) {
		return this.query(hql, pageNo, pageSize);
	}
	@Override
	public int getAllRowCount() {
		return this.countAll("Game");
	}
	@Override
	public int getQueryCount(String hql) {
		return this.countQuery(hql);
	}
	@Override
	public void updateOrAdd(Game game) {
		this.saveOrUpdate(game); 
	}
	
	
	@Override
	public Game findGameByName(String name) {
		String hql = "from Game where name ='"+name+"'" ;
		List<Game> list = this.getHibernateTemplate().find(hql);
		Game game = null;
		if(list.size()>0)game=list.get(0);	
		return game;
	}
	@Override
	public List<Game> findGameByCate(int catid) {
		 String hql = "from Game as a  where a.category.id = '"+catid+"'";
		 List<Game> list = this.getHibernateTemplate().find(hql);
		 return list;
	} 
}
