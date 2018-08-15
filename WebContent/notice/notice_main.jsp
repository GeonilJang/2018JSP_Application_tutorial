<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<script type="text/javascript">
	function readNotice(){
		window.open("notice_read.jsp", "notice","width=250,height=300");
	}
</script>
</head>
<body>

<!-- 공지사항 읽기, 쓰기 메뉴  -->

<a href="javascript:readNotice()">공지 읽기</a>
<a href="notice_write.jsp">공지작성</a>

</body>
</html>