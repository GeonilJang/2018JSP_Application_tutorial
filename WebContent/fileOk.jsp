<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import ="com.oreilly.servlet.multipart.*" %>
<%@ page import ="java.util.*" %>


<%
	String uploadPath = request.getRealPath("upload_file"); //파일을 업로드할 위치.
	int maxSize = 1024*1024 * 10; //10M 최대 저장 사이즈.
	
	String file ="";
	String originFile="";
	
	try{
		MultipartRequest multi = new MultipartRequest(request, uploadPath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		Enumeration files = multi.getFileNames();
		String names = (String)files.nextElement();
		
		file = multi.getFilesystemName(names);
		originFile = multi.getOriginalFileName(names);
		
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	

%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	file Upload 완료!
</body>
</html>