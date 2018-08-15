<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    
<%
	Calendar cal = Calendar.getInstance();
	int yy = cal.get(Calendar.YEAR);
	int mm = cal.get(Calendar.MONTH)+1;
	int dd = cal.get(Calendar.DAY_OF_MONTH);
	
	String fname = yy+"";
	
	if(mm<10)
		fname+=("0"+mm);
	else
		fname+=mm;
	if(dd<10)
		fname+=("0"+dd);
	else
		fname+=dd;
		
	out.println("<font color=red><b>");
	out.println(fname.substring(0, 4)+"년"+fname.substring(4, 6)+"월"+fname.substring(6, 8)+"일");
	out.println("</b></font>");
	
	
	fname+=".html";

%>    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>오늘의 공지사항</h2>
<form action="notice_save.jsp" method="post">
	<table border=1 width=500>
		<tr>
			<th>제목</th><td><input type="text" name="title"></td>
		</tr>
		<tr>
			<th>공지내용</th><td><textarea name="info" rows="5" cols="50"></textarea></td>
		</tr>
		<tr>
			<th>파일명</th>
			<td>
				<input type="text" name="filename" value="<%= fname %>" disabled>
				<input type="hidden" name="filename" value="<%= fname %>">
			</td>
		</tr>
		<tr>
			<td colspan=2 align="center"><input type="submit" value="작성"><input type="reset" value="취소"></td>
		</tr>
	</table>
</form>

</body>
</html>