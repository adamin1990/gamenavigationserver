package com.gah.navigation.bean;

import java.io.Serializable;

/**
 * ��Ϸ���
 * @author Gaoahui
 *
 */
public class Category implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	//��Ϸ�������
	private String name;
	//��Ϸ�Ƿ�����
	private int net;// 1 ����   0 ����
	 
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
