package com.gah.navigation.bean;

import java.io.Serializable;

/**
 * �����ˣ���λ
 * @author Gaoahui
 *
 */
public class ReleaseMan implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id; 
	/**	�����˻�λ���� */
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
