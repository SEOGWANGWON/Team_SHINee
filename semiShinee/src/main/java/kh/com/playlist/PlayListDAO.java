package kh.com.playlist;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.Part;

public class PlayListDAO {
	private static final String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String jdbcUsername = "shinee";
	private static final String jdbcPassword = "shinee";
	
	public PlayListDAO() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public List<PlayList> getAllPlaylists(){
		List<PlayList> playlists = new ArrayList<>();
		
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			String sql = "SELECT * FROM playlist_info";
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet resultSet = ps.executeQuery();
			
			while(resultSet.next()) {
				int playlistId = resultSet.getInt("playlist_id");
				String playlistName = resultSet.getString("playlist_name");
				String user_id = resultSet.getString("user_id");
				Blob Image = resultSet.getBlob("image");
				byte[] imageData = Image.getBytes(1, (int) Image.length());
				String imageBase64 = Base64.getEncoder().encodeToString(imageData);
				String image = "data:image/jpeg;base64," + imageBase64;
				
				
			    
				PlayList playlist = new PlayList(playlistId,playlistName,user_id,image);
				playlists.add(playlist);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return playlists;

	}
	public PlayList getPlaylistID(int playlistId) {
		PlayList playlist = null;
		//select해서 하나씩 보기
		Connection connection;
		try {
			connection =DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			String sql = "SELECT * FROM playlist_info WHERE playlist_id=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ps.setInt(1,playlistId);
			ResultSet resultSet = ps.executeQuery();
			
			//new playlist 이용해서 값 가져오기
			if(resultSet.next()) {
				playlistId = resultSet.getInt("playlist_id");
				String playlistName = resultSet.getString("playlist_name");
				String user_id = resultSet.getString("user_id");
				Blob Image = resultSet.getBlob("Image");
				byte[] imageData = Image.getBytes(1, (int) Image.length());
				String imageBase64 = Base64.getEncoder().encodeToString(imageData);
				String image = "data:image/jpeg;base64," + imageBase64;
				playlist = new PlayList(playlistId, playlistName,user_id,image);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return playlist;
	}

	

	

}
