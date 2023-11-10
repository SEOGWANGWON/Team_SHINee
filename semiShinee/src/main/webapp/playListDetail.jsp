<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%@page import ="kh.com.playlist.PlayList" %>
    <%@page import = "kh.com.playlist.PlayListDAO" %>
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
               
                  </button>

            </aside>
            <section>
                <div class="bluetop" style="margin-top:20px; width:1200px;">
                    <p style="margin-top:5px;" ><img src="./img/Save.png" style="height: 28px; float: left; margin-top: -8px; "><strong>My_PlayList</strong></p>
                </div>
                <div style="width:1200px; height:30px; background-color: gray;">
                <button id="new">NEW</button>
                
                
            </div>
            <article id="articleP">
                    <div style="text-align: center; margin-top: 0%;">
                    
<h1>노래 목록</h1>
<%
	//String=id 값을 가져오겠다.
	String playlistIdValue = request.getParameter("playlistId");
	int playlistId = Integer.parseInt(playlistIdValue);
	
	//DAO작업
	
	PlayListDAO playlistDAO = new PlayListDAO();
	PlayList playlist = playlistDAO.getPlaylistID(playlistId);
	
%>
<p>플레이리스트 id : <%=playlist.getPlaylistId() %>
<p>플레이리스트 제목 : <%=playlist.getPlaylistName() %>

</body>
</html>