<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
    let subject = "<%=subject%>";
    <%-- jsp ${EL 표현언어}  `${변수}` --%>
    document.querySelector(`input[name=subject][value=\${subject}]`).checked = true;
    
    /*
    document.querySelector("input[name=subject][value=<%=subject%>]").checked = true;
    */

    /*
    const rdbs = document.querySelectorAll("[name=subject]");
    // alert(rdbs.length);
    for (let i = 0; i < rdbs.length; i++) {
       if(rdbs[i].value == subject ){
        rdbs[i].setAttribute("checked","checked");
        break;
       }   
    }
    */
</script>         
</body>

</html>