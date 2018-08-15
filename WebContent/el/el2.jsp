<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="person" class="jsp2018Ex04_A.Person" scope="page"/>
<jsp:setProperty name="person" property="name" value="홍길동"/>
<jsp:setProperty name="person" property="id" value="test"/>
<jsp:setProperty name="person" property="pw" value="1234"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:getProperty name="person" property="name"/>
	<jsp:getProperty name="person" property="id"/>
	<jsp:getProperty name="person" property="pw"/>
</body>
</html>