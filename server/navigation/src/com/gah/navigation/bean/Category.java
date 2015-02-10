package com.gah.navigation.bean;

import java.io.Serializable;

/**
 * 游戏类别
 * @author Gaoahui
 *
 */
public class Category implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	//游戏类别名称
	private String name;
	//游戏是否联网
	private int net;// 1 联网   0 单机
	 
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
	public int getNet() {
		return net;
	}
	public void setNet(int net) {
		this.net = net;
	}
	
}
