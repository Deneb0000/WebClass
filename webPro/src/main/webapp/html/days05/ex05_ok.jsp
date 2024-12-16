<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
http://localhost/webPro/html/days05/ex05_ok.jsp
?
id=admin
&
passwd=1234
-->
<%
//서버에서 처리되는 스크립트 : 스크립트 릿, 표현 식
//자바코딩
//jsp에 내장된 9가지 객체 중에 리퀘스트 객체
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
%> 
입력한 아이디 : <%=id %> <br>
입력한 비밀번호 : <%=passwd %> <br>
</body>
</html>