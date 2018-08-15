<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<a href="insert.do">삽입</a>
	<hr width=500/>
	<a href="http://localhost:8181<%=request.getContextPath() %>/frontCon/update.do">업데이트</a>
	<hr width=500/>
	<a href="http://localhost:8181<%=request.getContextPath() %>/frontCon/select.do">조회</a>
	<hr width=500/>
	<a href="delete.do">삭제</a>
	<hr width=500/>
</div>
</body>
</html>