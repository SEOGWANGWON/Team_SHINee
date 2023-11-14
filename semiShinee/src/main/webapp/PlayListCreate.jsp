<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
    <head>
        <title>SHINee Music_create</title>
        <link rel="stylesheet" href="all.css">
        <link rel="stylesheet" href="main.css">
        
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
                <button id="backToList"><a href="playList.jsp">Back To PlayList</a></button>
                
                </div>
              
                <article id="create">
                  
                <div style="text-align: center; margin-top: 5%;">
           <form action="UploadServlet" method="post" enctype="multipart/form-data">  
                        <label for = "PlaylistID">
                        <label for = "title" style="font-size: 20px;">PlayList_Name : </label> 
                        <input type="text" name = "title" required>
                      
                        <br><br><br><br><br>
                        <p style="text-align: center;">플레이리스트 대표사진 </p>
                        
                       
                        <label for ="image">이미지 : </label>
						<input type="file" name="image" id="image" required><br>
                       
                        
                        <br>
                        <button id = "saveButton" type = "submit" style="margin-top: 20%;">생성하기</button>  
                   </form>
                    </div>
                </article>
            
            </section>

        </div><!--container-->
        <script>
          
            
            //생성하기 버튼 스크립트
            document.getElementById("saveButton").addEventListener("click", function(){
                const playlistContent = document.getElementById("ListPost").value;
                if(playlistContent.trim() !==""){
                    const timestamp=new Date().getTime();
                    const ListPost ={
                        id: timestamp,
                        content: playlistContent
                    };
                    const savedPosts = JSON.parse(localStorage.getItem("ListPosts"))||[];
                    savedPosts.push(ListPost);
                    localStorage.setItem("ListPosts", JSON.stringify(savedPosts));

                    alert("플레이리스트가 생성되었습니다.");

                    window.location.href="playList.jsp";
                }else{
                    alert("플레이리스트 내용을 다시 입력해주세요.");
                }
            });
            
        </script>
    </body>
</html>