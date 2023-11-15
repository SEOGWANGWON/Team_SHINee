<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<%@ page import = "java.util.ArrayList" %>
<%@ page import = "shinee.search.SearchDAO" %>
<%@ page import = "shinee.insert.InsertDAO" %>
<%@ page import = "shinee.search.Music_info" %>
<%@ page import = "shinee.search.Playlist_info" %>

<!DOCTYPE html>
<html>
	<head>
	<!-- 음악을 어디 플레이리스트에 추가할지 고르는 창 -->
		<meta charset="UTF-8">
		<title>플레이리스트에 음악 추가</title>
		<link rel="stylesheet" type="text/css" href="css/search.css">
        <link rel="stylesheet" type="text/css" href="css/all.css">
	</head>
	<body>
		<div class="container" style="margin-top:30px;">
            <aside>
                <button id="gotoMyPageButton" style="margin-top: 250px;">
                    <img src="img/mypage.png" style="width:85px; padding:0;" alt="myPage Icon">
                    <p><strong>mypage</strong></p>
                </button>
                <button style="margin-top: 50px;">
                    <img id="gotoMyPlaylistButton" src="img/lookaround.png" style="width:85px; padding:0;" alt="lookaround Icon">
                    <p><strong>my<br>Playlist</strong></p>
                </button>
                <button id="gotoSearchButton" style="margin-top: 50px;">
                    <img src="img/pixel_search.png" style="width:85px; padding:0;" alt="Search Icon">
                    <p><strong>search</strong></p>
                </button>
            </aside>
            <section>
                <div class="bluetop" style="margin-top:20px; width:1200px;">
                    <p style="margin-top:5px">log in</p>
                </div>
                <div style="width:1200px; height:30px; background-color: gray;">
                </div>
                <article><!-- 내용작성 -->
                    <div style="text-align: center; margin-top: 20%;">
                        <p>플레이리스트 선택</p>
                        <select name="playlistFiled">
                        	<%
                        		InsertDAO insertDAO = new InsertDAO();
                        		ArrayList<Playlist_info> myplaylists = insertDAO.getAllPlaylist((String)session.getAttribute("user_id"));
                        		
                        		for(Playlist_info p : myplaylists) {
                        	%>
                        		<option value=<%=p.getPlaylist_name()%>><%=p.getPlaylist_name()%></option>
                        	<%
                        		};
                        	%>
                        		
                        </select>
                        <button id="addMusic">저장</button>
                    </div>
                </article>
            </section>
        </div><!--container-->
        <script>
        	
      		//=================================창이동=========================================
      		
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