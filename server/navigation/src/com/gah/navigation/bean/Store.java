package com.gah.navigation.bean;

import java.io.Serializable;

/**
 * 应用商店
 * @author Gaoahui
 *
 */
public class Store implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id; 
	/**应用商店地址	 */
	private String url;
	/**应用商店名称	 */
	private String name;
	 
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
