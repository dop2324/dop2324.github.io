<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
     <%@ include file="includes/header.jsp" %>
  <style>
	label{
    display: block;
    margin-top: 10px;
    margin-bottom: 10px;
}
#regiTitle{
    font-size: 20px;
    font-weight: bold;
}
.contact-wrap{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    background-color: whitesmoke;
    padding: 0px 50px 50px 50px;
    width: 600px;
}
.contact-wrap-bg{
    background-color: rgba(0, 0, 0, 0.589);
    display: flex;
    flex-direction:column;
    justify-content: center;
    align-items: center;
    top:0px;
    width:100%;
}
.R-container{
    width: 400px;
}
.cancel{
    width: 100%;
    font-size: 60px;
    text-align: end;
}

a {
    text-decoration: none;
    color: black;
}


.out{
    font-size: 60px;
    font-weight: bold;
    text-align: right;
}
.btnfield{
	display:flex;
	justify-content: flex-end;
	margin-top:20px;
}
footer{
	margin-top:0px;
}
#registerform{
	padding-left: 30px;
}
.R-head p{
	padding-left: 30px;
}

</style>
     <div class="contact-wrap-bg">
 <div class=contact-wrap>
   <div id="contaner">


		<div class="R-container">
		<div class="R-head">
		<div class="out"><a href="/main/home">x</a></div>
		<p id=regiTitle>회원가입</p>
		</div>
		<form name="registerform" action="/main/register" method="post" id="registerform" >
		
				<!-- 아이디 -->
				<div class="fieldlabel"><label for="userId" class="regTextColor">아이디</label></div>
				<div class="formfield"><input type="text" id="userId" name="id" maxlength="20" value="" autocomplete="off">
				 <!-- <span ><input type="button" name="idCheck" value="중복검사" id="idCheck"></span> -->
				
				</div>
				<span class="error_next_box" id="idMsg">5~20자의 영문 소문자,숫자만 사용 가능합니다.</span>
				<!-- 비밀번호 -->
				<div class="fieldlabel"><label for="userPw" class="regTextColor">패스워드</label></div>
				<div class="formfield">
		<input type="password" id="userPw" name="password" maxlength="16" autocomplete="off">
		
		</div>
		<span class="error_next_box" id="pwMsg">8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.</span>
				<!-- 비밀번호 확인 -->
				<div class="fieldlabel"><label for="userPwCheck" class="regTextColor">패스워드확인</label></div>
				<div class="formfield">
		<input type="password" id="userPwCheck" name="userPwCheck" maxlength="16" autocomplete="off">
		</div>
		<span class="error_next_box" id="pwCheckMsg">패스워드를 다시한번 확인해주세요</span>
		<!-- 성별 둘 중에 하나만 선택하여야 하므로 type=radio -->
				<div class="fieldlabel"><label class="regTextColor">성별</label></div>
				<div class="formfield">
					<input type="radio" name="gender" value="남" alt="남자" checked >남자
					<input type="radio" name="gender" value="여" alt="여자" >여자
				</div>  
				<!-- 이름 -->
				<div class="fieldlabel"><label for="userName" class="regTextColor">이름</label></div>
				<div class="formfield"><input type="text" id="userName" name="name" maxlength="20" autocomplete="off"></div>
				<!-- 닉네임 -->
				<div class="fieldlabel"><label for="nickName" class="regTextColor">닉네임</label></div>
				<div class="formfield"><input type="text" id="nickName" name="nickname" maxlength="20" value="" autocomplete="off"></div>
				<!-- 이메일 입력창  -->
				<div class="fieldlabel"><label for="email01" class="regTextColor">이메일</label></div>
			   <div class="formfield">
			   <input type="email" id="emailaddress" name="email" placeholder="example@naver.com" value="" autocomplete="off">
			   
			   
			   
				<!-- 가입하기 버튼  -->
				<div class="btnfield">
					<input type="submit" id="apply" value="가입하기" class="btn pull-right btn-warning" style="color:white;">
				</div>
			
			
			</form>
			
			</div>
	</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	$('.error_next_box').hide();
</script>
 
 <%@include file="includes/footer.jsp" %>