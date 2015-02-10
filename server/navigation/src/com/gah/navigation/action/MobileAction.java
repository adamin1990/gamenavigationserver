package com.gah.navigation.action;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

import com.gah.navigation.bean.Category;
import com.gah.navigation.bean.Game;
import com.gah.navigation.bean.Picture;
import com.gah.navigation.common.action.BaseAction;
import com.gah.navigation.common.bean.CateAndGames;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.common.utils.Constant;
import com.gah.navigation.service.CategoryService;
import com.gah.navigation.service.GameService;
import com.gah.navigation.service.PictureService;
import com.googlecode.jsonplugin.annotations.JSON;

public class MobileAction extends BaseAction {
	
	private static final long serialVersionUID = 4820601986830433592L;
	public PageBean pageBean;
	public GameService gameService;
	public PictureService pictureService;
	public CategoryService categoryService;
	public List<Game> list = new ArrayList<Game>();
	public List<Picture> plist = new ArrayList<Picture>();
	public List<Category> clist = new ArrayList<Category>();
	public String jsonstr;
	public int page;
	public String cid;//类别id
	public String gameid;
	public String searchText;
	public String belong ;
	public List<CateAndGames> cateAndGameslist = new ArrayList<CateAndGames>() ;
	/**
	 *  手机端获取第几页的游戏
	 * @return
	 */
	@JSON(serialize=false)
	@SuppressWarnings("unchecked")
	public String getGameForPage(){
		this.pageBean = pictureService.mqueryAllForPage(Constant.PAGE_SIZE, page);
		plist = (List<Picture>) pageBean.getList();
		JSONArray jsonObject = JSONArray.fromObject(plist);
		jsonstr = jsonObject.toString();
		return SUCCESS;
	}
	/**
	 * 获取推荐游戏
	 * @return
	 */
	@JSON(serialize=false)
	@SuppressWarnings("unchecked")
	public String getGamePictureForPage(){
		this.pageBean = pictureService.mqueryForPage(9, page,belong);
		plist = (List<Picture>) pageBean.getList();
		JSONArray jsonObject = JSONArray.fromObject(plist);
		jsonstr = jsonObject.toString();
		return SUCCESS;
	}
	 /**
	  * 首页滑动推荐
	  * @return
	  */
	@JSON(serialize=false)
	public String getGamePictureForPage_SP(){
		this.pageBean = pictureService.mqueryForPage_sp(6, page,belong);
		plist = (List<Picture>) pageBean.getList();
		JSONArray jsonObject = JSONArray.fromObject(plist);
		jsonstr = jsonObject.toString();
		return SUCCESS;
	}
	
	
	/**
	 * 根据类别id获取游戏列表
	 * @return
	 */
	@JSON(serialize=false)
	@SuppressWarnings("unchecked")
	public String getGameForPageByCate(){
		this.pageBean = pictureService.mqueryAllForPageByCate(Constant.PAGE_SIZE, page, Integer.valueOf(cid));
		list = (List<Game>) pageBean.getList();
		JSONArray jsonObject = JSONArray.fromObject(list);
		jsonstr = jsonObject.toString();
		return SUCCESS;
	} 
	/**
	 * 获取本类别中的代表的游戏
	 * @return
	 */
	@JSON(serialize=false)
	@SuppressWarnings("unchecked")
	public String getExampleGameByCate(){
		this.pageBean = pictureService.mqueryAllForPageByCateRecon(3, page, Integer.valueOf(cid));
		plist = (List<Picture>) pageBean.getList();
		JSONArray jsonObject = JSONArray.fromObject(plist);
		jsonstr = jsonObject.toString();
		return SUCCESS; 
	}
	/**
	 * 获取游戏的详细信息
	 * @return
	 */
	@JSON(serialize=false)
	public String getGameById(){
		Game game = new Game();
		game = gameService.findGameById(Integer.valueOf(gameid));
		JSONArray jsonOArray = JSONArray.fromObject(game);
		jsonstr = jsonOArray.toString();
		return SUCCESS;
	}
	/**
	 * 根据游戏id获取游戏信息
	 * @return
	 */
	@JSON(serialize=false)
	public String getGamePictureById(){
		plist = pictureService.findPictureByGameId(gameid);
		JSONArray jsonObject = JSONArray.fromObject(plist);
		jsonstr = jsonObject.toString();
		return SUCCESS;
	}
	/**
	 * 获取所有的游戏种类
	 * @return
	 */
	@JSON(serialize=false)
	public String getAllCategory(){
		clist = categoryService.findAllCate();
		JSONArray jsonObject = JSONArray.fromObject(clist);
		jsonstr = jsonObject.toString();
		return SUCCESS;
	}  
	/**
	 * 根据查询条件来查询所有的游戏
	 * @return
	 */
	@JSON(serialize=false)
	public String searchGameByCondition(){
		this.pageBean = pictureService.queryByConditon(Constant.PAGE_SIZE, page,searchText );
		plist = (List<Picture>) pageBean.getList();
		JSONArray jsonObject = JSONArray.fromObject(plist);
		jsonstr = jsonObject.toString();
		return SUCCESS; 
	}
	public String findCateAndGames(){
		clist = categoryService.findAllCate();
		for(Category category : clist){
			CateAndGames cateAndGames = new CateAndGames();
			this.pageBean = pictureService.mqueryAllForPageByCate(3, page,category.getId());
			List<Picture> simplelist = new ArrayList<Picture>();
			plist = (List<Picture>) pageBean.getList(); 
			for(Picture pic:plist){
				 Picture picture = new Picture();
				 Game game = new Game();
				 picture.setUrl(pic.getUrl());
				 game.setId(pic.getGameid().getId());
				 game.setName(pic.getGameid().getName()); 
				 picture.setGameid(game);
				 simplelist.add(picture);
			} 
			cateAndGames.setCategory(category);
			cateAndGames.setGames(simplelist);
			cateAndGameslist.add(cateAndGames);  
		} 
		JSONArray jsonObject = JSONArray.fromObject(cateAndGameslist);
		jsonstr = jsonObject.toString();
		return SUCCESS;
	}  
	@JSON(serialize=false)
	public PageBean getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}
	@JSON(serialize=false)
	public GameService getGameService() {
		return gameService;
	}
	public void setGameService(GameService gameService) {
		this.gameService = gameService;
	}
	@JSON(serialize=false)
	public List<Game> getList() {
		return list;
	}
	public void setList(List<Game> list) {
		this.list = list;
	}
	public String getJsonstr() {
		return jsonstr;
	}   
	public void setJsonstr(String jsonstr) {
		this.jsonstr = jsonstr;
	}
	@JSON(serialize=false)
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	@JSON(serialize=false)
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	@JSON(serialize=false)
	public PictureService getPictureService() {
		return pictureService;
	}
	public void setPictureService(PictureService pictureService) {
		this.pictureService = pictureService;
	}
	@JSON(serialize=false)
	public List<Picture> getPlist() {
		return plist;
	}
	public void setPlist(List<Picture> plist) {
		this.plist = plist;
	}
	@JSON(serialize=false)
	public String getGameid(){
		return gameid;
	}
	public void setGameid(String gameid) {
		this.gameid = gameid;
	}
	@JSON(serialize=false)
	public CategoryService getCategoryService() {
		return categoryService;
	}
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	@JSON(serialize=false)
	public List<Category> getClist() {
		return clist; 
	}
	public void setClist(List<Category> clist) {
		this.clist = clist;
	}
	@JSON(serialize=false)
	public String getSearchText() {
		return searchText;
	}
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	@JSON(serialize=false)
	public List<CateAndGames> getCateAndGameslist() {
		return cateAndGameslist;
	}
	public void setCateAndGameslist(List<CateAndGames> cateAndGameslist) {
		this.cateAndGameslist = cateAndGameslist;
	}
	@JSON(serialize=false)
	public String getBelong() {
		return belong;
	}
	public void setBelong(String belong) {
		this.belong = belong;
	}
	
	
}
