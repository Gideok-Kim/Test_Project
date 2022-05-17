<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/join.jsp</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	checkPassResult = false
	
	function checkPass(pass) {
		var spanElem = document.getElementById("checkPassResult");
		
		var lengthRegex = /^[A-Za-z0-9!@#$%]{8,16}$/; 
		var engUpperRegex = /[A-Z]/; 
		var engLowerRegex = /[a-z]/; 
		var numRegex = /[0-9]/; 
		var specRegex = /[!@#$%]/; 
		
		var count = 0; 
		
		if(lengthRegex.exec(pass)) { 
			
			if(engUpperRegex.exec(pass)) count++;
			if(engLowerRegex.exec(pass)) count++;
			if(numRegex.exec(pass)) count++;
			if(specRegex.exec(pass)) count++;
			
			switch (count) {
				case 4 : 
					spanElem.innerHTML = "우수";
					checkPassResult = true;
					break;
				case 3 : 
					spanElem.innerHTML = "보통";
					checkPassResult = true;
					break;
				case 2 : 
					spanElem.innerHTML = "위험";
					checkPassResult = true;
					break;
				default:
					spanElem.innerHTML = "사용 불가능한 패스워드";
					checkPassResult = false;
			}
			
		} else {
			spanElem.innerHTML = "8 ~ 16자리 영문자, 숫자, 특수문자 필수!";
			spanElem.style.color = "RED";
			checkPassResult = false;
		}
		
	}

	
	
</script>
</head>
<body>
	<div id="wrap">
		<!-- 헤더 들어가는곳 -->
		<jsp:include page="../inc/top.jsp"></jsp:include>
		<!-- 헤더 들어가는곳 -->
		  
		<!-- 본문들어가는 곳 -->
		  <!-- 본문 메인 이미지 -->
		  <div id="sub_img_member"></div>
		  <!-- 왼쪽 메뉴 -->
		  <nav id="sub_menu">
		  	<ul>
		  		<li><a href="#">Join us</a></li>
		  		<li><a href="#">Privacy policy</a></li>
		  	</ul>
		  </nav>
		  <!-- 본문 내용 -->
		  <article>
		  	<h1>Join Us</h1>
		  	<form action="joinPro.jsp" method="post" id="join" name="fr" onsubmit="return checkSubmit()">
		  		<fieldset>
		  			<legend>Basic Info</legend>
		  			<label>User Id</label>
		  			<input type="text" name="id" class="id" id="id" required="required" ><br>
		  			
		  			<label>Password</label>
		  			<input type="password" name="pass" id="pass" required="required" placeholder="영문,숫자,특수문자 8~16글자"
		  						onkeyup="checkPass(this.value)">			
		  			<span id="checkPassResult"><!-- 패스워드 규칙 판별 결과 표시 영역 --></span><br>
		  			
		  			
		  			<label>Name</label>
		  			<input type="text" name="name" id="name" required="required"><br>
		  			
		  			<label>E-Mail</label>
		  			<input type="email" name="email" id="email" required="required"><br>
		  		</fieldset>
		  		
		  		<fieldset>
		  			<legend>Optional</legend>
		  			<label>Address</label>
		  			<input type="text" name="address" id="address"><br>
		  			<label>Phone Number</label>
		  			<input type="text" name="phone" ><br>
		  			<label>Mobile Phone Number</label>
		  			<input type="text" name="mobile" ><br>
		  		</fieldset>
		  		<div class="clear"></div>
		  		<div id="buttons">
		  			<input type="submit" value="Submit" class="submit">
		  			<input type="reset" value="Cancel" class="cancel">
		  		</div>
		  	</form>
		  </article>
		  
		  
		<div class="clear"></div>  
		<!-- 푸터 들어가는곳 -->
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
		<!-- 푸터 들어가는곳 -->
	</div>
</body>
</html>


