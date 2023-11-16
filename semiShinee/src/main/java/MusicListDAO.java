import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kh.com.playlist.PlayList;

public class MusicListDAO {
	private static final String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String jdbcUsername = "shinee";
	private static final String jdbcPassword = "shinee";
	
	public MusicListDAO() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public List<MusicList> getAllMusiclists(int playlistId){
		MusicList musiclist = null;
		List<MusicList> musiclists = new ArrayList<>();
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			String sql = "SELECT * FROM playlist_song "
					+ "INNER JOIN music_info ON playlist_song.song_id = music_info.song_id"
					+ "INNER JOIN playlist_info ON playlist_song.playlist_id= playlist_info.playlist_id"
					+ "WHERE playlist_song.playlist_id=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ps.setInt(1, playlistId);
			ResultSet resultSet = ps.executeQuery();
			
			while(resultSet.next()) {
				playlistId = resultSet.getInt("playlist_id");
				String title = resultSet.getString("song_name");
				String artist = resultSet.getString("artist_name");
				
				musiclist = new MusicList(playlistId,title,artist);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return musiclists;
	}
}
