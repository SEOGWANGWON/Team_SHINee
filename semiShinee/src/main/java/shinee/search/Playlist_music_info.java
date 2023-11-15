package shinee.search;

public class Playlist_music_info {
	
	int playlist_id;
	String song_id;
	
	public Playlist_music_info() {}

	
	//Getter & Setter ---------------------------
	public int getPlaylist_id() {
		return playlist_id;
	}

	public String getSong_id() {
		return song_id;
	}
	
	public void setPlaylist_id(int playlist_id) {
		this.playlist_id = playlist_id;
	}

	public void setSong_id(String song_id) {
		this.song_id = song_id;
	}
	
}