<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>���̴� ���� Ȩ������</title>
        <link rel="stylesheet" type="text/css" href="./css/style_my.css">
        <link rel="stylesheet" href="https://unpkg.com/98.css" />
        
        
    </head>
    <body>
        <div class="pageColor">
            <p id="bluetop"><strong>Update My Info</strong> <button>X</button></p>
            
            
            
            <div id="createAccount">
                <div>
                    
                    <div class="box" style="background: #BDBDBD;">
                        <img class="profile" src="./img/oldicon/����.jpg">
                        
                    </div>
                    <br>
                    <input type="submit" id="updateProfile" value="������ ���� ����">
                </div>
                <br>
                <br>
                <div id="divid">
                    <label for="id">
                        <img src="./img/oldicon/user.png" style="width: 28px;height: 26px; margin-bottom: -8px;">
                    </label>
                    <input id="id" type="text" placeholder="���̵�" readonly="readonly">
                    
                </div>
                <br>
                <form onsubmit="return submitPassword()">
                    <div>
                    
                        <label for="pw">
                            <img src="./img/oldicon/password.png" style="width: 28px; height: 26px; margin-bottom: -8px;">
                        </label>
                        <input id="pw" type="password" placeholder="��й�ȣ">
                        <p id="pm" style="color: red;"></p>
                    </div>
                    <br>
                    <div>
                        <label for="checkpw">
                            <img src="./img/oldicon/passwordcheck.png" style="width: 26px; height: 26px; margin-bottom: -8px;">
                        </label>
                        <input id="checkpw" type="password" placeholder="��й�ȣ Ȯ��">
                        <input type="submit" value="��й�ȣ Ȯ��">
                        <p id="checkpm" style="color: red;"></p>
                    </div>
                </form>
                <div>
                    <label for="nickname">
                        <img src="./img/oldicon/profile.png" style="width: 28px; height: 26px; margin-bottom: -8px;">
                    </label>
                    <input id="nickname" type="text" placeholder="�г���">
                    <input type="submit" id="checkNname" value="�г��� �ߺ� Ȯ��">
                </div>
                <br>
                
                <br>
                <div>
                    <label for="emailid">
                        <img src="./img/oldicon/email.png" style="width: 28px; height: 26px; margin-bottom: -8px;">
                    </label>
                    <input id="emailid" type="text" placeholder="�̸��� �ּ�">
                    <strong>@ </strong>
                    <input id="emailLink" type="text" placeholder="naver.com">
                </div>
                <br>
                <div>
                    <label for="phoneNumber2">
                        <img src="./img/oldicon/phone.png" style="width: 28px; height: 26px; margin-bottom: -8px;">
                    </label>
                    <input id="phoneNumber1" type="text" placeholder="010">
                    <strong>-</strong>
                    <input id="phoneNumber2" type="text" placeholder="0000">
                    <strong>-</strong>
                    <input id="phoneNumber3" type="text" placeholder="0000">
                </div>
                <br>
                <br>
                <br>
                <input type="submit" id="checkNname" value="���� �Ϸ�">
            </div>
                </div>
                
                

            
        </div>
        <script src="https://code.jquery.com/jquery-3.7.1.js" 
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" 
        crossorigin="anonymous"></script>
        <script>
            function submitPassword(){
                var password = document.getElementById("#pw").value;
                var passwordCheck = document.getElementById("#checkpw").value;

                var passwordPattarn = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$/;
                var errorPW = document.getElementById("#m");
                var checkErrorPW = document.getElementById("#checkpm");

                if(!passowrd.match(passwordPattarn)){
                    errorPW.textContent = "��й�ȣ�� 8 ~ 20���� ���� �빮��, �ҹ���, Ư������, ���ڸ� �����ؾ��մϴ�.";
                    return false;
                } else{
                    errorPW.textContent = "";
                }

                if(password !== passwordCheck){
                    checkErrorPW.textContent = "��й�ȣ�� ��ġ���� �ʽ��ϴ�.";
                    return false;
                } else{
                    checkErrorPW.textContent = "";
                }
                return true;

            }
        </script>
    </body>
</html>







