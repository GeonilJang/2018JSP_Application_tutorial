<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 변수 선언 -->
<c:set var="num1" value="10"/>
<c:set var="num2" value="20"/>
<c:set var="res" value="${num1 * num2 }"/>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

${num1 }와 ${num2 }의 곱은 ${res }입니다.
<c:out value="${res }"/><br>
<hr>
<c:catch var="exception">
	<%= 10/0 %>
</c:catch>
<c:out value="${exception }"/><br>
<hr>



<c:if test="${10+10==100 }">
	조건식이 맞으면 보여준다.
</c:if>

<c:if test="${10+10 != 100 }">
	거짓 : 조건식이 맞으면 보여준다.
</c:if>

<br>
<hr>
<c:forEach var ="a" begin="0" end="10" step="1">
	<font size=${a }>안녕</font><br>
</c:forEach>
<hr>







</body>
</html>