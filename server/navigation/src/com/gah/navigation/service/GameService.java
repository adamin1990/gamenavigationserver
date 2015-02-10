package com.gah.navigation.service;

import java.util.List;

import com.gah.navigation.bean.Game;
import com.gah.navigation.common.bean.PageBean;

public interface GameService {

	/**   
	　 * 带条件的分页查询   
	　 * @param pageNo  当前第几页   
	　 * @param pageSize 每页大小   
	　 * @param hql 		查询条件
	　* @return 封闭了分页信息(包括记录集list)的Bean   
	　*/   
	public PageBean queryForPage(int pageSize, int pageNo);
	
	public void delete(int id);
	/**
	 * 获取本类别的所有的游戏
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
	 * 获取本类别中的特殊推荐的游戏
	 * @param pageSize
	 * @param pageNo
	 * @param cid
	 * @return
	 */
	public PageBean queryForPageByCateRecon(int pageSize,int pageNo,String cid);
	
	public List<Game> findGameByCate(int catid);
	
	
}
