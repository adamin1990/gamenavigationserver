package com.gah.navigation.bean;

import java.io.Serializable;
/**
 * 管理员
 * @author Gaoahui
 *
 */
public class Manager implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -876102217898219118L;
	private int id;
	/** 用户名	 */
	private String name ;
	/** 用户密码	 */
	private String password;
	/** 标志是否注销	 */
	private String flag;
	/** 用户类型	 */
	private String type;
	 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
