<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
    <!-- http://localhost/webPro/javascript/days04/ex06_ok.jsp
     ?
     subject=eng -->
     <%
        //jsp 스크립트 요소 : 스크립트 릿
        String subject = request.getParameter("subject");
     %>
     >전송된 과목 : <%=subject%><br>
     <input type="radio" name="subject" value="kor">
        <lable>국어</lable>
     </input><input type="radio" name="subject" value="eng">
        <lable>영어</lable>
     </input><input type="radio" name="subject" value="mat">
        <lable>수학</lable>
     </input><input type="radio" name="subject" value="pe">
        <lable>체육</lable>
     </input>
     <br>
     <!--BOM windoews/document/history  -->
     <a href="javascript:history.back()">뒤로가기</a>
     <br>
     <a href="javascript:location.href='ex06.html'">뒤로가기</a>
<script>

   //  $(`input[name=subject][value=<%=subject%>]`).prop("checked", true);
    let s = "<%=subject%>";
    $(`input[name=subject][value=\${s}]`).prop("checked", true);
    
</script>      
<hr>
    <select name="selSubject" id="selSubject">
      <option value="">선택하세요</option>
      <option value="kor">국어</option>
      <option value="eng">영어</option>
      <option value="mat">수학</option>
      <option value="pe">체육</option>
    </select>   
</body>

<script>
   $("#selSubject").val("<%=subject%>");

   
</script>
</html>