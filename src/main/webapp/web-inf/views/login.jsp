<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="${ctx}/res/css/login.css">
</head>
<body>


<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="data:image/png;base64,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" id="icon" alt="User Icon" />
    </div>
	<div class="alert alert-danger" >
		<p>${message}</p> 
	</div>
	<p>${message}</p> 
    <!-- Login Form -->
    <form action="${ctx}/access" method="">
      <input type="text" name="username" class="fadeIn second" name="login" placeholder="login" >
      <input type="password" name="password" class="fadeIn third" name="login" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>

  </div>
</div>
</body>
</html>