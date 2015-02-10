package com.gah.navigation.bean;

import java.io.Serializable;

/**
 * 发布人，单位
 * @author Gaoahui
 *
 */
public class ReleaseMan implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id; 
	/**	发布人或单位名称 */
	private String name ;
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
}
