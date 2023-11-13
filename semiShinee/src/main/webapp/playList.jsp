<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
    <%@page import ="kh.com.playlist.PlayList" %>
    <%@page import = "kh.com.playlist.PlayListDAO" %>
    
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
         
                <table border = "0">
		<tr>
			<th></th>
			<th></th>
			<th> </th>
			
		</tr>
	</table>
	<%
		PlayListDAO playlistDAO = new PlayListDAO();
		List<PlayList> playlists = playlistDAO.getAllPlaylists();
		
		for(PlayList p : playlists){
			%>
			<tr>
				<td><a href = "playListDetail.jsp?playlistId=<%=p.getPlaylistId()%>"><%=p.getPlaylistId() %>"</a></td>
				<td><%=p.getPlaylistName() %></td>
				<td><button class = "btn btn-default pull right" type=button" onclick="getPlaylist_name">X</button></td>
			</tr>
			<br>
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
            
            function
            
        </script>

</body>
</html>