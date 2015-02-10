package com.gah.navigation.action;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

import com.gah.navigation.bean.Category;
import com.gah.navigation.bean.Game;
import com.gah.navigation.bean.ReleaseMan;
import com.gah.navigation.bean.Store;
import com.gah.navigation.common.action.BaseAction;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.common.utils.Constant;
import com.gah.navigation.service.CategoryService;
import com.gah.navigation.service.GameService;
import com.gah.navigation.service.ReleaseService;
import com.gah.navigation.service.StoreService;
import com.googlecode.jsonplugin.annotations.JSON;

public class GameAction extends BaseAction {
 
	private static final long serialVersionUID = 8225344333953642484L;
	public int page; //第几页
	public GameService gameService;
	public CategoryService categoryService;
	public StoreService storeService;
	public ReleaseService releaseService;
	public PageBean pageBean; //包含分布信息的Bean
	public List<Game> list = new ArrayList<Game>();
	public String jsonstr ;//向手机端传递的数据
	public String cid;//类别id
	public String condition;//查询条件
	public Game game;
	public String gameid;
	public String releaseMan;
	public String result;
	
	public List<Category> categorylist = new ArrayList<Category>();
	public List<Store> storelist = new ArrayList<Store>(); 
	
	
	/**
	 * 电脑端获取第几页的游戏
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String findAllGame(){
		categorylist = categoryService.findAllCate();
		this.pageBean = gameService.queryForPage(Constant.PAGE_SIZE, page);
		list = (List<Game>) pageBean.getList(); 
		return SUCCESS;
	}
	/**
	 * 根据传回的ids来删除游戏
	 * @return
	 */
	public String deleteByIds(){
		String no[] = getRequest().getParameterValues("no");
		for(int i = 0; i<no.length;i++){
			gameService.delete(Integer.valueOf(no[i]));
		} 
		categorylist = categoryService.findAllCate();
		pageBean = gameService.queryForPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	}
	/**
	 * 查询游戏的详细信息
	 * @return
	 */
	public String findGameById(){
		categorylist = categoryService.findAllCate();
		storelist = storeService.findAllStore();
		game = gameService.findGameById(Integer.valueOf(gameid));
		return SUCCESS;
	}
	/**
	 * 发布新游戏
	 * @return
	 */
	public String add(){
		categorylist = categoryService.findAllCate();
		storelist = storeService.findAllStore();
		return SUCCESS;
	}
	/**
	 * 根据游戏类别查找游戏
	 * @return
	 */
	public String search(){
		categorylist = categoryService.findAllCate();
		pageBean = gameService.queryForPageByCate(Constant.PAGE_SIZE, page, cid);
		list = (List<Game>) pageBean.getList(); 
		return SUCCESS;
	}
	
	public String updateOrAdd(){
		if(game.getReleaseMan().getName()==null||game.getReleaseMan().getName().trim().equals("")){
			game.setReleaseMan(null);
			gameService.updateOrAdd(game);
			categorylist = categoryService.findAllCate();
			this.pageBean = gameService.queryForPageByCate(Constant.PAGE_SIZE, page, cid);
		}else{
			ReleaseMan rl = releaseService.findReleaseByName(game.getReleaseMan().getName());
			if(rl==null){ 
				releaseService.saveOrUpdate(rl);
				gameService.updateOrAdd(game);
				categorylist = categoryService.findAllCate();
				this.pageBean = gameService.queryForPageByCate(Constant.PAGE_SIZE, page, cid);
			}else{  
				game.setReleaseMan(rl);
				gameService.updateOrAdd(game);
				categorylist = categoryService.findAllCate();
				this.pageBean = gameService.queryForPageByCate(Constant.PAGE_SIZE, page, cid);
			}
		}
		return SUCCESS; 
	}
	
	public String checkReleaseName(){
		if(releaseMan==null||releaseMan.trim().equals("")){
			result = "ok"; 
		}else{
			ReleaseMan rl = releaseService.findReleaseByName(releaseMan);
			if(rl==null){
				result = "confirm";
			}else{
				result = "ok";
			}
		}
		return SUCCESS;
	}
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	@JSON(serialize=false)
	public GameService getGameService() {
		return gameService;
	}
	public void setGameService(GameService gameService) {
		this.gameService = gameService;
	}

	public PageBean getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}
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
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public Game getGame() {
		return game;
	}
	public void setGame(Game game) {
		this.game = game;
	}
	public String getGameid() {
		return gameid;
	}
	public void setGameid(String gameid) {
		this.gameid = gameid;
	}
	 
	@JSON(serialize=false)
	public StoreService getStoreService() {
		return storeService;
	}
	public void setStoreService(StoreService storeService) {
		this.storeService = storeService;
	}
	public List<Category> getCategorylist() {
		return categorylist;
	}
	public void setCategorylist(List<Category> categorylist) {
		this.categorylist = categorylist;
	}
	public List<Store> getStorelist() {
		return storelist;
	}
	public void setStorelist(List<Store> storelist) {
		this.storelist = storelist;
	}
	@JSON(serialize=false)
	public CategoryService getCategoryService() {
		return categoryService;
	}
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	@JSON(serialize=false)
	public ReleaseService getReleaseService() {
		return releaseService;
	}
	public void setReleaseService(ReleaseService releaseService) {
		this.releaseService = releaseService;
	} 
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getReleaseMan() {
		return releaseMan;
	}
	public void setReleaseMan(String releaseMan) {
		this.releaseMan = releaseMan;
	}
}
