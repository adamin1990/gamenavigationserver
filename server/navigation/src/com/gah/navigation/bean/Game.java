package com.gah.navigation.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * ��Ϸ
 * @author Gaoahui
 *
 */
public class Game implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 91007685121305778L;
	private Integer id;
	//��Ϸ����
	private String name;
	//�̵�
	private Store store;
	//���
	private Category category;
	//������
	private ReleaseMan releaseMan;
	//����ʱ��
	private Date releasetime;
	//�汾
	private String versions;
	//����
	private String description;
	//��Ϸ��С
	private String size;
	//�Ƽ���־        
	/**
	 * 0���Ƽ�     1 ��ͨ�Ƽ�   2 ��ҳ�����Ƽ�   3 ����Ƽ�
	 */
	private String flag;
	//������
	private String loadnum;
	//���ص�ַ
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
