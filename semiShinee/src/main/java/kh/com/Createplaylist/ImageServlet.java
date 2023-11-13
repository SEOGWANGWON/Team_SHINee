package kh.com.Createplaylist;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.sql.BLOB;

/**
 * Servlet implementation class ImageServlet
 */
@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jdbcURL="jdbc:oracle:thin:@localhost:1521:xe";
		String jdbcUser ="shinee";
		String jdbcPW = "shinee";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection conn =DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPW);
			String imageId = request.getParameter("image_id");
			//sql
			String sql = "SELECT image From playlist_song";
			PreparedStatement ps = conn.prepareStatement(sql);
			 ps.setString(1, imageId);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				Blob blob = rs.getBlob("image");
				byte[] imageData = blob.getBytes(1,(int)blob.length());
				
				response.setContentType("image/jpeg");
				response.getOutputStream().write(imageData);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
