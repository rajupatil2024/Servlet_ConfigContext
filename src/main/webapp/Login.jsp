<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    

    * {
      margin: 0;
      padding: 0;
      font-family: "Poppins";
      box-sizing: border-box;
    }

    body {
      display: flex;
      justify-content: center;
      align-items: center;
      background: #1f291f;
      min-height: 100vh;
    }

    .login-box {
      position: absolute;
      width: 400px;
      background: #1f293a;
      padding: 50px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 1);
    }

    h2 {
      font-size: 2em;
      color: #00FFFF;
      text-align: center;
    }

    .input-box {
      position: relative;
      margin: 25px 0;
    }

    .input-box input {
      width: 100%;
      height: 50px;
      background: transparent;
      border: 2px solid #2c4766;
      outline: none;
      border-radius: 40px;
      font-size: 1em;
      color: #fff;
      padding: 0 20px;
      transition: 0.5s;
    }

    .input-box input:focus,
    .input-box input:valid {
      border-color: #0ef;
    }

    .input-box label {
      position: absolute;
      top: 50%;
      left: 20px;
      transform: translateY(-50%);
      font-size: 1em;
      color: #fff;
      pointer-events: none;
      transition: 0.5s ease;
    }

    .input-box input:focus ~ label,
    .input-box input:valid ~ label {
      top: 1px;
      font-size: 0.8em;
      background-color: #1f293a;
      padding: 0 6px;
      color: #0ef;
    }

    .btn {
      width: 100%;
      height: 45px;
      border-radius: 45px;
      background: #0ef;
      border: none;
      outline: none;
      cursor: pointer;
      font-size: 1em;
      color: #1f293a;
      font-weight: 600;
      margin-top: 20px;
    }

    .signup-link {
      margin-top: 20px;
      text-align: center;
      color: #fff;
    }

    .signup-link a {
      color: #0ef;
      text-decoration: none;
    }

    .signup-link a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
<br>
<%@include file="Links.jsp" %>
<form action="./LoginServlet1" class="login-box" method="get">
    <div class="input-box">
      <h2>Login Here</h2><br>
      <input type="text" name="uname" placeholder="Username" required>
    </div>
    <div class="input-box">
      <input type="password" name="pass" placeholder="Password" required>
    </div>
    <input type="submit" value="Login" class="btn">
  </form>

</body>
</html>