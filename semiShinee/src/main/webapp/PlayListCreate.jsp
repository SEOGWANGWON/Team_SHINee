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
                        <label for = "pl_name" style="font-size: 20px;">PlayList_Name : </label> 
                        <textarea id="ListPost" placeholder="플레이리스트 이름 생성" style="width:350px;"></textarea>
                        
                        <!--이미지, 이름 설정 생성버튼-->
                        <br><br><br><br><br>
                        <p style="text-align: center;">플레이리스트 대표사진 </p>
                        
                        <div id="imageContainer" >
                            <!--이미지 표시할 컨테이너-->
                            <img id = "uploadImage" style="max-width: 250px; max-height: 250px; margin-top: 10px;">
                        </div> 
                        <input type="file" id="fileInput" accept="image/*">
                        <button id = "uploadButton">사진 업로드</button>
                        <br>
                        <button id="saveButton" style="margin-top: 20%;">생성하기</button>  
                    </div>
                </article>
            </section>

        </div><!--container-->
        <script>
            document.getElementById("uploadButton").addEventListener("click",function(){
                var fileInput = document.getElementById("fileInput");
                var uploadImage = document.getElementById("uploadImage");
                var imageContainer=document.getElementById("imageContainer");

                if(fileInput.files.length >0){
                    var file=fileInput.files[0];
                    var reader = new FileReader();
                    reader.onload=function(e){
                        uploadImage.src = e.target.result;
                        imageContainer.style.display="block"
                    };
                    reader.readAsDataURL(file);
                }else{
                    alert("이미지 파일을 선택하세요");
                }
            });            
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