package com.gah.navigation.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 游戏
 * @author Gaoahui
 *
 */
public class Game implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 91007685121305778L;
	private Integer id;
	//游戏名称
	private String name;
	//商店
	private Store store;
	//类别
	private Category category;
	//发布人
	private ReleaseMan releaseMan;
	//发布时间
	private Date releasetime;
	//版本
	private String versions;
	//描述
	private String description;
	//游戏大小
	private String size;
	//推荐标志        
	/**
	 * 0不推荐     1 普通推荐   2 首页滑动推荐   3 类别推荐
	 */
	private String flag;
	//下载量
	private String loadnum;
	//下载地址
	private String loadurl;
	private String belong;
	 
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	 
	 
	public Date getReleasetime() {
		return releasetime;
	}
	public void setReleasetime(Date releasetime) {
		this.releasetime = releasetime;
	}
	public String getVersions() {
		return versions;
	}
	public void setVersions(String versions) {
		this.versions = versions;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getLoadnum() {
		return loadnum;
	}
	public void setLoadnum(String loadnum) {
		this.loadnum = loadnum;
	}
	public String getLoadurl() {
		return loadurl;
	}
	public void setLoadurl(String loadurl) {
		this.loadurl = loadurl;
	} 
	public String getBelong() {
		return belong;
	}
	public void setBelong(String belong) {
		this.belong = belong;
	} 
	 
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Store getStore() {
		return store;
	}
	public void setStore(Store store) {
		this.store = store;
	}
	public ReleaseMan getReleaseMan() {
		return releaseMan;
	}
	public void setReleaseMan(ReleaseMan releaseMan) {
		this.releaseMan = releaseMan;
	}
	
}
