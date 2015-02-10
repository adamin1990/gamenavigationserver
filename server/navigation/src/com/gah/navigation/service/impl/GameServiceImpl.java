package com.gah.navigation.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.gah.navigation.bean.Game;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.dao.GameDao;
import com.gah.navigation.service.GameService;

public class GameServiceImpl implements GameService {

	
	public GameDao gameDao;
	@Override
	public PageBean queryForPage(int pageSize, int pageNo) {
		int allRow = gameDao.getAllRowCount();// 总记录数    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// 总页数    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from Game as a order by a.id desc";
		List<?> list = gameDao.queryForPage(pageNo, pageSize, hql);// "一页"的记录    
		
		// 把分页信息保存到Bean中    
		PageBean pageBean = new PageBean();    
		pageBean.setPageSize(pageSize);  
		pageBean.setCurrentPage(currentPage);    
		pageBean.setAllRow(allRow);    
		pageBean.setTotalPage(totalPage);    
		pageBean.setList(list);    
		pageBean.init(); 
		
		return pageBean;
	} 
	@Override
	public void delete(int id) {
		Game game = gameDao.findGameById(id);
		gameDao.deleteGame(game);
	} 
	/**
	 * 获取本类别的所有游戏
	 */
	@Override
	public PageBean queryForPageByCate(int pageSize, int pageNo, String cid) {
		String hqll ;
		if(cid==null){
			hqll = "select count(*) from Game";
		}else{
			hqll = "select count(*) from Game as a  where a.category.id = '"+cid+"'";
		} 
		int allRow = gameDao.getQueryCount(hqll);// 总记录数    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// 总页数    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		if(cid==null){
			hql = "from Game as a  order by a.id desc ";
		}else{
			hql = "from Game as a  where a.category.id = '"+cid+"' order by a.id desc";
		}
		List<?> list = gameDao.queryForPage(pageNo, pageSize, hql);// "一页"的记录    
		
		// 把分页信息保存到Bean中    
		PageBean pageBean = new PageBean();    
		pageBean.setPageSize(pageSize);  
		pageBean.setCurrentPage(currentPage);    
		pageBean.setAllRow(allRow);    
		pageBean.setTotalPage(totalPage);    
		pageBean.setList(list);    
		pageBean.init(); 
		
		return pageBean;
	}
	@Override
	public Game findGameById(int gameid) {
		return gameDao.findGameById(Integer.valueOf(gameid));
	} 
	
	public GameDao getGameDao() {
		return gameDao;
	}
	public void setGameDao(GameDao gameDao) {
		this.gameDao = gameDao;
	}

	@Override
	@Transactional
	public void updateOrAdd(Game game) {
		gameDao.updateOrAdd(game);
	}

	@Override
	public Game findGameByName(String name) {
		return gameDao.findGameByName(name);
	}
	@Override
	public void saveGame(Game game) {
		gameDao.saveGame(game);
	}
	@Override
	public PageBean queryForPageByCateRecon(int pageSize, int pageNo, String cid) {
		String hqll ; 
			hqll = "select count(*) from Game as a  where a.category.id = '"+cid+"'"; 
		int allRow = gameDao.getQueryCount(hqll);// 总记录数    
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// 总页数    
		final int currentPage = PageBean.countCurrentPage(pageNo);  
		String hql = null;
		hql = "from Game as a  where a.category.id = '"+cid+"' and a.flag = 3 order by a.id desc";
		List<?> list = gameDao.queryForPage(pageNo, pageSize, hql);// "一页"的记录    
		   
		// 把分页信息保存到Bean中    
		PageBean pageBean = new PageBean();    
		pageBean.setPageSize(pageSize);  
		pageBean.setCurrentPage(currentPage);    
		pageBean.setAllRow(allRow);    
		pageBean.setTotalPage(totalPage);    
		pageBean.setList(list);    
		pageBean.init(); 
		
		return pageBean;
	}
	@Override
	public List<Game> findGameByCate(int catid) {
		List<Game> list = new ArrayList<Game>();
		list = gameDao.findGameByCate(catid);
		return list;
	} 
}