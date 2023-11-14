package kh.com.playlist;

import java.sql.Blob;

import javax.servlet.http.Part;

public class PlayList {
	public int playlistId;
	private String playlistName;
	private String Image;
	private String user_id;

	

	public PlayList(int playlistId, String playlistName, String user_id ,String Image) {
		this.playlistId = playlistId;
		this.playlistName = playlistName;
		this.user_id = user_id;
		this.Image = Image;
	}

	public int getPlaylistId() {
		return playlistId;
	}

	public void setPlaylistId(int playlistId) {
		this.playlistId = playlistId;
	}

	public String getPlaylistName() {
		return playlistName;
	}

	public void setPlaylistName(String playlistName) {
		this.playlistName = playlistName;
	}
	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	
}

