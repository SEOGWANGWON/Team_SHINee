package shinee.insert;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import shinee.search.Music_info;
import shinee.search.Playlist_info;
import shinee.search.Playlist_music_info;
import shinee.search.User_info;

public class InsertDAO {
	
	private static final String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String jbdcUsername = "shinee";
	private static final String jdbcPassword = "shinee";
	
	Connection connection = null;

	//플레이리스트id 입력받고, 해당목록에 추가하는...메서드
	public Music_info insertMusictoPlaylist(int playlist_id, String song_id) {
		
		String searchSQL = null;

		Connection connection = null;
		PreparedStatement insertState = null;
		ResultSet resultSet = null;
		
		String insertSQL = "INSERT INTO playlist_music VALUES(?,?)";
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			connection = DriverManager.getConnection(jdbcURL, jbdcUsername, jdbcPassword);
			
			insertState = connection.prepareStatement(insertSQL);
			
			insertState.setString(1,"%"+playlist_id+"%");
			insertState.setString(2,"%"+song_id+"%");
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	//유저 id로 유저의 전체 플레이리스트 조회 메서드
	public ArrayList<Playlist_info> getAllPlaylist(String user_id){
		
		String searchSQL = null;

		Connection connection = null;
		PreparedStatement searchState = null;
		ResultSet resultSet = null;
		
		//2. 배열 만들러왓습니다 총총
		ArrayList<Playlist_info> myplaylists = new ArrayList<>();
		
		try {
			
			searchSQL = "SELECT playlist_id, playlist_name FROM playlist_info WHERE user_id=?";
			
			Class.forName("oracle.jdbc.OracleDriver");
			connection = DriverManager.getConnection(jdbcURL, jbdcUsername, jdbcPassword);
			
			searchState = connection.prepareStatement(searchSQL);
			
			searchState.setString(1,user_id);
			
			resultSet = searchState.executeQuery();
	
			
			while(resultSet.next()) {
				
				Playlist_info playlist_info = new Playlist_info();
				
				playlist_info.setPlaylist_id(resultSet.getInt("playlist_id"));
				playlist_info.setPlaylist_name(resultSet.getString("playlist_name"));

				//1. 배열에 객체 담고싶은디 일단 배열 만들고올게용
				//3. 만들고왓습니다 담아줄게요
				myplaylists.add(playlist_info);
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return myplaylists;
		
	}
}