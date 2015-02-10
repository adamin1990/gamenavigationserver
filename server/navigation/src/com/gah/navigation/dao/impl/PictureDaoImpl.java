package com.gah.navigation.dao.impl;

import java.util.List;

import com.gah.navigation.bean.Picture;
import com.gah.navigation.common.dao.impl.BaseDaoImpl;
import com.gah.navigation.dao.PictureDao;

public class PictureDaoImpl extends BaseDaoImpl implements PictureDao {

	@Override
	public void savePicture(Picture picture) {
		
	}

	@Override
	public void deletePicture(Picture picture) {
		
	}

	@Override
	public Picture findPictureById(Integer pId) {
		return (Picture) this.loadById(Picture.class, pId);
	}

	@Override
	public void updatePicture(Picture picture) {
		
	}

	@Override
	public List<?> queryForPage(int pageNo, int pageSize, String hql) {
		return this.query(hql, pageNo, pageSize);
	}
	
	

	@Override
	public int getAllRowCount() {
		return this.countAll("Picture");
	}

	@Override
	public void delPictureById(int string) {
		this.delById(Picture.class, string);
	}

	@Override
	public void Updateorsave(Picture picture) {
		this.saveOrUpdate(picture);
		
	}

	@Override
	public List<Picture> findPicturesByGameId(String gameid) {
		String hql = "from Picture as a where a.gameid.id = '"+gameid+"' order by a.id desc";
		List<Picture> list = this.query(hql);
		return list;
	}

	@Override
	public int getAllRowCountByHql(String hql) {
		return this.countQuery(hql);
	}

	@Override
	public List<Picture> findReconPictures(int pageNo, int pageSize, String hql) {
		return this.query(hql, pageNo, pageSize);
	} 
}
