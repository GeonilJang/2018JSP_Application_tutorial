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
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	
	아이디 : <%=id %><br>
	비밀번호 :<%=pw %><br>
	<hr width=300 size=10 color="red"><br>
	
	아이디 : ${param.id}<br>
	비밀번호 : ${param.pw}<br>
	<h3>배열로 표시</h3>
	아이디 : ${param["id"]}<br>
	비밀번호 : ${param["pw"]}<br>
	
	<hr width=300 size=10 color="green"><br>
	
	applicationScope : ${applicationScope.appName }<br>
	sessionScope : ${sessionScope.sessionName }<br>
	pageScope : ${ pageScope.pageName}<br>
	requestScope : ${reuqest.reqName }<br>
	
	
	<hr width=300 size=10 color="blue"><br>
	
		- context 초기화 파라미터 <br>
		${initParam.con1 }<br>
		${initParam.con2 }<br>
		
	
	
	
</div>	
</body>
</html>