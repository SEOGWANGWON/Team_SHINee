<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%@page import ="kh.com.playlist.PlayList" %>
    <%@page import = "kh.com.playlist.PlayListDAO" %>
    <%@ page import = "shinee.search.SearchDAO" %>
	<%@ page import = "shinee.search.Music_info" %>
	<%@ page import = "shinee.search.Playlist_info" %>
	<%@page import= "music.MusicList" %>
	<%@page import= "music.MusicListDAO" %>
	<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 목록</title>
<link rel="stylesheet" type="text/css" href="all.css">
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
<div class="container" style="margin-top:30px;">
            <aside>
                <button style="margin-top: 50px;">
                    <img src="./img/mypage.png" style="width:85px; padding:0;" alt="myPage Icon">
                    <p><strong>mypage</strong></p>
                </button>
                <button style="margin-top: 250px;">
                    <img src="./img/pixel_search.png" style="width:85px; padding:0;" alt="Search Icon">
                    <p><strong>search</strong></p>
                </button>
                <button style="margin-top: 50px;">
                    <img src="./img/lookaround.png" style="width:85px; padding:0;" alt="lookaround Icon">
                    <p><strong>My<br>PlayList</strong></p>
                </button>
               
                  

            </aside>
            <section>
                
           
                    <div class="bluetop" style="margin-top:20px; width:1200px;">
                    <p style="margin-top:5px;" ><img src="./img/Save.png" style="height: 28px; float: left; margin-top: -8px; "><strong>My_PlayList</strong></p>
                </div>
                <div style="width:1200px; height:30px; background-color: gray;">
                <button id="backToList"><a href="playList.jsp">Back</a></button>
                </div>
                
                <article id="articleP">
                <div style="text-align: center; margin-top: 0%;">
                </div>
         
              
				<%
	//String=id 값을 가져오겠다.
				String playlistIdValue = request.getParameter("playlistId");
				int playlistId = Integer.parseInt(playlistIdValue);
				
				//String ImageValue = request.getParameter("Image");
				//String Image = ImageValue;
			
				
				//DAO작업
				
				PlayListDAO playlistDAO = new PlayListDAO();
				PlayList playlist = playlistDAO.getPlaylistID(playlistId);
				
			%>
			<form>
			<h2 style="text-align: center; "><%=playlist.getPlaylistName() %> </h2>
			<br>
			<img src = "<%=playlist.getImage()%>" style="width:200px; height: 200px; margin-left:42%;">
			</form>
			<br>
			
			<p style="text-align: center;"> 노래들 : </p>
			<br>
			<% 
			String musiclistIdValue = request.getParameter("playlistId");
			int musiclistId = Integer.parseInt(musiclistIdValue);
			
			MusicListDAO musiclistDAO = new MusicListDAO();
			List<MusicList> musiclist = musiclistDAO.getAllMusiclists(musiclistId);
			for(MusicList m: musiclist){
				%>
				<div><tr>
					<th><Strong><%=m.getTitle()%></Strong>></th>
					<th><p> - <%=m.getArtist()%></p></th>
				</tr>
				</div>
				
			
			<%
			}
			%>

				</article>
			</section>
		</div>
		<script>
			//검색버튼 누르면 검색 창으로 이동 (기본 음악검색)
			document.getElementById("gotoSearchButton").addEventListener("click",()=>{
				window.location.href = "music_search.jsp";
			});
			
			//마이페이지 버튼 누르면 이동
			document.getElementById("gotoMyPageButton").addEventListener("click",()=>{
				window.location.href = "myPage.jsp";
			});
			
			//마이플레이리스트 버튼
			document.getElementById("gotoMyPlaylistButton").addEventListener("click",()=>{
				window.location.href = "playList.jsp";
			});
			
			//검색 카테고리 이동 버튼
			document.getElementById("music_searchButton").addEventListener("click",()=>{
				window.location.href = "music_search.jsp";
			});
			
			document.getElementById("playlist_searchButton").addEventListener("click",()=>{
				window.location.href = "playlist_search.jsp";
			});
			
			document.getElementById("user_searchButton").addEventListener("click",()=>{
				window.location.href = "user_search.jsp";
			});
			</script>
</body>
</html>