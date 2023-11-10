package kh.com.playlist;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PlayListServlet
 */
@WebServlet("/PlayListServlet")
public class PlayListServlet extends HttpServlet {
	private static final String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String jdbcUsername="shinee";
	private static final String jdbcPassword="shinee";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Connection connection =null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			
			//SQL쿼리
			String sql = "SELECT * FROM playlist_song";
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet resultSet = ps.executeQuery();
			
			//저장할 ArrayList
			ArrayList<PlayList> playlistList = new ArrayList<>(); 
			
			while(resultSet.next()) {
				int playlistId = resultSet.getInt("playlist_id");
				String playlistName = resultSet.getString("playlist_name");
				
				PlayList playlist = new PlayList(playlistId, playlistName);
				//하나씩 add해서 넣어줌
				playlistList.add(playlist);
				
			}
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
}
