package com.gah.navigation.bean;

import java.io.Serializable;
/**
 * ����Ա
 * @author Gaoahui
 *
 */
public class Manager implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -876102217898219118L;
	private int id;
	/** �û���	 */
	private String name ;
	/** �û�����	 */
	private String password;
	/** ��־�Ƿ�ע��	 */
	private String flag;
	/** �û�����	 */
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
