package com.gah.navigation.action;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.gah.navigation.bean.Category;
import com.gah.navigation.bean.Game;
import com.gah.navigation.bean.Picture;
import com.gah.navigation.common.action.BaseAction;
import com.gah.navigation.common.bean.PageBean;
import com.gah.navigation.common.utils.Constant;
import com.gah.navigation.service.CategoryService;
import com.gah.navigation.service.GameService;
import com.gah.navigation.service.ManagerService;
import com.gah.navigation.service.PictureService;
import com.googlecode.jsonplugin.annotations.JSON;

public class PictureAction extends BaseAction{
	
	private static final long serialVersionUID = 2493865902416391929L;
	public Picture picture;
	public PageBean pageBean;
	public int page ;
	public int cid;
	public String pid;
	public int gid;
	public PictureService pictureService;
	public CategoryService categoryService;
	private File image; //上传文件
	private String imageFileName;//上传文件名称 
	public GameService gameService;
	public String result;
	public String gamename;
	public ArrayList<Picture> piclist = new ArrayList<Picture>();
	public ArrayList<Category> catlist = new ArrayList<Category>();
	public ArrayList<Game> gamelist = new ArrayList<Game>();
	/**
	 * 查找所有的图片的信息
	 * @return
	 */
	public String findAllPicture(){
		catlist = (ArrayList<Category>) categoryService.findAllCate();
		if(cid == 0){
			gamelist = null;
		}else{
			gamelist = (ArrayList<Game>) gameService.findGameByCate(Integer.valueOf(cid));
		}
		pageBean = pictureService.queryForPage(Constant.PAGE_SIZE, page) ;
		return SUCCESS;
	}
	/**
	 * 根据传回的ids来删除游戏
	 * @return
	 */
	public String deleteByIds(){
		String no[] = getRequest().getParameterValues("no");
		for(int i = 0; i<no.length;i++){
			pictureService.delPictureById(Integer.valueOf(no[i]));
		}
		catlist = (ArrayList<Category>) categoryService.findAllCate();
		if(cid == 0){
			gamelist = null;
		}else{
			gamelist = (ArrayList<Game>) gameService.findGameByCate(Integer.valueOf(cid));
		}
		pageBean = pictureService.queryForPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	}
	public String findPictureById(){
		picture = pictureService.findPictureById(Integer.valueOf(pid));
		if(picture.getGameid()!=null){
			Game game = gameService.findGameById(Integer.valueOf(picture.getGameid().getId()));
			gamename = game.getName();
		}
		return SUCCESS;
	}
	public String checkGameName(){
		Game game = gameService.findGameByName(gamename);
		if(game==null||gamename.equals(""))
			result = "error"; 
		return SUCCESS;
	}
	public String search(){ 
		catlist = (ArrayList<Category>) categoryService.findAllCate();
		if(cid == 0){
			gamelist = null;
		}else{
			gamelist = (ArrayList<Game>) gameService.findGameByCate(Integer.valueOf(cid));
		} 
		pageBean = pictureService.queryForPage(Constant.PAGE_SIZE, page);
		return SUCCESS;
	} 
	public String findPictureByGame(){
		catlist = (ArrayList<Category>) categoryService.findAllCate();
		if(gid != 0)
			gamelist = (ArrayList<Game>) gameService.findGameByCate(Integer.valueOf(cid));
		pageBean = pictureService.queryForPageByGame(Constant.PAGE_SIZE, page,Integer.valueOf(gid));
		return SUCCESS;
	}
	public String saveOrUpdate(){
		try {
			Game game = gameService.findGameByName(gamename);
			if(game!=null){
				picture.setGameid(game);
			}
			if(image!=null){
				File filepath = new File(getRequest().getRealPath("/pic/"+imageFileName));
				if(!filepath.getParentFile().exists()) filepath.getParentFile().mkdir();
				FileUtils.copyFile(image, filepath);
				URL url = new URL(getRequest().getScheme() + "://"+ getRequest().getHeader("Host") +"/navigation/pic"+ "/"+ imageFileName);
				
				picture.setUrl(url.toString());
			}
			pictureService.saveOrUpdate(picture);
			catlist = (ArrayList<Category>) categoryService.findAllCate();
			if(cid == 0){
				gamelist = null;
			}else{
				gamelist = (ArrayList<Game>) gameService.findGameByCate(Integer.valueOf(cid));
			}
			if(gid==0){
				pageBean = pictureService.queryForPage(Constant.PAGE_SIZE, page);
			}else{
				pageBean = pictureService.queryForPageByGame(Constant.PAGE_SIZE, page,Integer.valueOf(gid));
			}
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	} 
	/**
	 * 跳转到添加页面
	 * @return
	 */
	public String add(){
		return SUCCESS;
	}
	/**
	 * 查找所有的游戏推荐
	 * @return
	 */
	public String findAllRecon(){
		
		
		return null;
	}
	
	public Picture getPicture() {
		return picture;
	}
	public void setPicture(Picture picture) {
		this.picture = picture;
	}
	public PageBean getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	@JSON(serialize=false)
	public PictureService getPictureService() {
		return pictureService;
	}
	public void setPictureService(PictureService pictureService) {
		this.pictureService = pictureService;
	}
	public File getImage() {
		return image;
	}
	public void setImage(File image) {
		this.image = image;
	}
	public String getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}
	@JSON(serialize=false)
	public GameService getGameService() {
		return gameService;
	}
	public void setGameService(GameService gameService) {
		this.gameService = gameService;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getGamename() {
		return gamename;
	}
	public void setGamename(String gamename) {
		this.gamename = gamename;
	}
	 
	@JSON(serialize=false)
	public CategoryService getCategoryService() {
		return categoryService;
	}
	
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	public ArrayList<Picture> getPiclist() {
		return piclist;
	}
	public void setPiclist(ArrayList<Picture> piclist) {
		this.piclist = piclist;
	}
	 
	public ArrayList<Category> getCatlist() {
		return catlist;
	}
	public void setCatlist(ArrayList<Category> catlist) {
		this.catlist = catlist;
	} 
	public ArrayList<Game> getGamelist() {
		return gamelist;
	}
	public void setGamelist(ArrayList<Game> gamelist) {
		this.gamelist = gamelist;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	
}
