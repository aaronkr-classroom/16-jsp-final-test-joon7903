<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- UT-NodeJS 중간고사 -->
<!DOCTYPE html>
<html lang="en">
  <head>
<script type = "text/javascript">
    function checkMember(){
    	
    	var regExpID=/^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
    	var regExpName=/^[가-힣]*$/;
    	var regExpPasswd=/^[0-9]*$/;
    	var regExpPhone=/^\d{3}-\d{3,4}-\d{4}$/;
    	var regExpEmail=/^[0-9a-zA-z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
    	
    	var form=document.Member;
    	
    	var id=form.id.value;
    	var name = form.name.value;
    	var passwd = form.passwd.value;
    	var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
    	var email = form.email.value;
    	
    	if(!regExpId.test(id)) {
    		alert("아이디는 문자로 시작해주세요!");
    		form.id.select();
    		return;
    	}
    	if(!regExpname.text(name)){
    		alert("이름은 한글만 입력해주세요!");
    		return;
    	}
    	if(!regEmail.text(email)){
    		alert("이메일 입력을 확인해주세요!");
    		return;
    	}
   		form.submit();
	    
    }
    </script>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>UT-NodeJS 중간고사 | Register</title>

    <!-- 학생 이름과 학번 -->
    <meta name="author" content="???" />
    <meta name="description" content="???" />

    <!-- CSS 파일에 대한 link 태그를 수정하십시오 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
    <link
      rel="stylesheet"
      media="(max-width: 768px)"
      href="${pageContext.request.contextPath}/public/css/style.small.css"
      />
   <link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/confetti.css" />

    <!-- JS 파일에 대한 script 태그를 수정하십시오 -->
 <script defer src="${pageContext.request.contextPath}/public/js/functions.js"></script>
 </head>

  <body>
     <!-- HEADER -->

    <jsp:include page="header.jsp"></jsp:include>

    <!-- MAIN 페이지 내용 -->
    <main class="">
      <div class="container col-xl-10 col-xxl-8 px-4 py-5">
      <div class="container col-md-6 mx-auto mt-4">
    <h2 class="text-center mb-3">Login</h2>
 	<form class="p-4 border rounded bg-light" action="login.jsp" method="POST">
    <div class="form-floating mb-3">
      <input
        type="text"
        class="form-control"
        id="loginUsername"
        name="username"
        placeholder="Username"
        required
      />
      <label for="loginUsername">name</label>
    
    
</div>

<div class="form-floating mb-3">
      <input
        type="password"
        class="form-control"
        id="loginPassword"
        name="password"
        placeholder="Password"
        required
      />
      
	<label for="loginPassword">Password</label>
	</div>  
	<button class="w-100 btn btn-primary" type="submit">Login</button>
</form>
</div>
            <!-- action 속성에서 맞는 파일 경로 입력하세요 -->
            <form
              class="p-4 p-md-5 border rounded-3 bg-light"
              action="./thanks.jsp"
              method="POST"
            >
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control"
                  id="floatingName"
                  placeholder="Name"
                />
                <label for="floatingName">Name</label>
              </div>

              <div class="form-floating mb-3">
                <input
                  type="email"
                  class="form-control"
                  id="floatingEmail"
                  name="email"
                  placeholder="name@example.com"
                  required
                />
                <label for="floatingEmail">Email address</label>
              </div>

              <div class="form-floating mb-3">
                <input
                  type="tel"
                  class="form-control"
                  id="floatingPhone"
                  name="phone"
                  placeholder="Phone"
                  required
                />
                <label for="floatingPhone">Phone</label>
              </div>

              <hr>

              <div class="mb-3">
                <label>Gender</label><br>
                <input type="radio" id="male" name="gender" value="Male" />
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="Female" />
                <label for="female">Female</label>
              </div>

              <div class="mb-3">
                <label>Hobbies</label><br>
                <input type="checkbox" id="cricket" name="hobbies" value="Cricket" />
                <label for="cricket">Cricket</label>
                <input type="checkbox" id="football" name="hobbies" value="Football" />
                <label for="football">Football</label>
                <input type="checkbox" id="chess" name="hobbies" value="Chess" />
                <label for="chess">Chess</label>
              </div>

              <div class="row mb-3">
                <div class="col">
                  <input type="password" class="form-control" name="password" placeholder="Password" required />
                </div>
              </div>

              <button class="w-100 btn btn-lg btn-primary ut-red" type="submit">
                Submit
              </button>
              <hr />
            </form>

          </div>
        </div>
      </div>
    </main>

    <!-- FOOTER -->

	<jsp:include page="footer.jsp"></jsp:include>

    <!-- Bootstrap의 JS -->
    <script src="${pageContext.request.contextPath}/public/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
