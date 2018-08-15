<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!-- 파일 저장 처리 과정 -->
<% 
/*
	1. 사용자가 입력한 글제목, 내용, 파일명 얻어오는과정
	2. 파일명과 FileWriter와 스트림연결
	3. 스트림을 통해서 글제목과 내용을 파일에 쓴다.
	4. 스르림 닫기
	5. 파일에 쓰기가 완료되었으면 메시지 띄우기.
*/

request.setCharacterEncoding("utf-8");
String title = request.getParameter("title");
String content = request.getParameter("info");
String fileName = request.getParameter("filename");

//파일 이름 확인.
if(fileName == null || fileName.trim().equals("")){
	response.sendRedirect("notice_write.jsp");
}

//파일 전달 내용 확인.
if(title == null || content == null || title.trim().equals("") || content.trim().equals("")){
	out.println("공지 내용과 제목을 입력하세요!!<br>");
	out.println("<a href=notice_write.jsp>돌아가기</a>");
}

//파일 절대경로 구하기
//request객체에 getRealPath("/notice/saveFolder");
//참고1: config 내장 객체에 getServletContext() 메소드를 이용해서 
//     ServletContext ctx = config.getServletContext();
String allPath = request.getRealPath("/notice/saveFolder");
out.println("공지사항 저장될 경로 : "+allPath);

//참고1 내용

ServletContext ctx = config.getServletContext();
String ctxPath = ctx.getRealPath("/notice/saveFolder");
out.println("<hr>공지사항 저장될 경로 : "+ctxPath);

//파일이 저장될 경로를 구한다.
String allFname = allPath+"/"+fileName;

FileWriter fw = null; //파일에 출력할 스트림.
PrintWriter pw = null;// 웹 브라우저에 출력할 스트림.

try{
	fw = new FileWriter(allFname); //저장될 파일 경로 + 파일 객체 생성
	pw = new PrintWriter(fw, true); // 출력 스트림 + 자동 flush() 를 사용한 OutputStream()객체를 사용! ★ fw는 OutputStream 객체를 리턴 하나 보구나.
	pw.println("<body>");
	pw.println("<h2>"+title+"</h2><br>");
	pw.println(content);
	pw.println("</body>");
	
	pw.close();
	fw.close();
	
}catch(Exception e){
	e.printStackTrace();
	return;
}
%>

<script type="text/javascript">
	alert("<%= fileName%> 파일에 쓰기 작업 완료!!!");
	location.href="<%=request.getContextPath()%>/notice/notice_main.jsp";
</script>















