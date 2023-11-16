<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import ="kh.com.playlist.PlayList" %>
<%@page import = "kh.com.playlist.PlayListDAO" %>
<%@ page import = "shinee.search.SearchDAO" %>
<%@ page import = "shinee.search.Music_info" %>
<%@ page import = "shinee.search.Playlist_info" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플레이리스트 목록</title>
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
                <button id="new"><a href="PlayListCreate.jsp">NEW</a></button>
                
                
                
            </div>
                <article id="articleP">
                <div style="text-align: center; margin-top: 0%;">
                </div>
         
                <table>
		<tr>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			
		</tr>
	</table>
	<%
		PlayListDAO playlistDAO = new PlayListDAO();
		List<PlayList> playlists = playlistDAO.getAllPlaylists();
		
		for(PlayList p : playlists){
			%>
			<form action="DeleteServlet" method="post">
			<tr>
			<div class="window" style="width: 600px; height:200px; float: left; margin-left: 20%; margin-bottom: 5px; margin-top:10px;">
			<div class="title-bar">
				<div class="title-bar-text" style="margin-left:5px;">
				 MY_PlayList_♡ 
				<td><%=p.getPlaylistId() %></td>
				</div>
				<div class="title-bar-controls">
				<input type="hidden" name="playlistId" value="<%= p.getPlaylistId() %>">
				<button type="submit" class="btn btn-default pull right">X</button>
										
										
				</div></div>
	
				<td></td>

				<td><a href="playListDetail.jsp?playlistId=<%=p.getPlaylistId()%>"><img src="<%=p.getImage()%>"style="width : 150px; height: 150px; margin-left:10px; margin-top:10px; border: 3px inset lightgray;"></a></td>
				
				<td>
				<div style="float:right; width: 300px; text-align: left; margin-right:100px; ">
				<div style="background-color:white; margin-top:20px; padding-right: 20px; width:300px; height: 22px; border: 2px inset lightgray;">
				<p style="margin-left: 30px; margin-top:1px;"><%=p.getPlaylistName()%></p></div></div>
				</td>
				
				
				
				
			</tr>
			<br>
			</form>
			</div>
			<%
			
		}
	
	%>
                </article>
                </section>
                    
	
	 <script>
            const List = document.getElementById("List");
            const savedPosts = JSON.parse(localStorage.getItem("ListPosts")) || [];

            savedPosts.forEach(post => {
                const listItem = document.createElement("li");
                listItem.textContent = post.content;
                List.appendChild(listItem);
  
            });

            document.getElementById("new").addEventListener("click",function(){
                window.location.href="PlayListCreate.jsp";
            });
            
          
            
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
       
</div>
</body>
</html>