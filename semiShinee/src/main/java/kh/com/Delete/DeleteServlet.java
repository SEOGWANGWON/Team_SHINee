package kh.com.Delete;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.com.playlist.PlayList;
import kh.com.playlist.PlayListDAO;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String jdbcUser="shinee";
	private static final String jdbcPW="shinee";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int playlistId =Integer.parseInt(request.getParameter("playlistId"));
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection conn = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPW);
			String sql = "DELETE FROM playlist_info WHERE playlist_id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1,playlistId);
			
			int rowsDeleted = ps.executeUpdate();
			if (rowsDeleted >0) {
				System.out.println("플레이리스트 삭제 됨");
				
			}else {
				System.out.println("플레이리스트 삭제 실패");;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

        response.sendRedirect("playList.jsp");
	}

}
