package com.gah.navigation.bean;

import java.io.Serializable;

/**
 * Ӧ���̵�
 * @author Gaoahui
 *
 */
public class Store implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id; 
	/**Ӧ���̵��ַ	 */
	private String url;
	/**Ӧ���̵�����	 */
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
