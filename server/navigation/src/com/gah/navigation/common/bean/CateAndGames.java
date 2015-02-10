package com.gah.navigation.common.bean;

import java.util.List;

import com.gah.navigation.bean.Category;
import com.gah.navigation.bean.Game;
import com.gah.navigation.bean.Picture;

public class CateAndGames {
	
	public Category category ;
	public List<Picture> games ;
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public List<Picture> getGames() {
		return games;
	}
	public void setGames(List<Picture> games) {
		this.games = games;
	}
}
