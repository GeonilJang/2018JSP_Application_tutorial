<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.io.*"%>
    
<%
	/*
		1. 공지파일을 일기 위해서 오늘 날짜를 구한다.
		2. 날짜.html --> 파일명을 만든다.
		3. 파일명과 파일을 읽는 토드스트림을 연결한다.
		4. 필터링
		5. 스트림을 통해서 읽어오기
		6. 읽어온 내용을 브라우저에 출력하기
		7. 스트림 close
	*/
	
	Calendar cal = Calendar.getInstance();
		int yy = cal.get(Calendar.YEAR);
		int mm = cal.get(Calendar.MONTH)+1;
		int dd = cal.get(Calendar.DAY_OF_MONTH);
	
		out.println(yy+"년"+mm+"월"+dd+"일");
		
		String fname =yy+"";
		if(mm<10)
			fname+=("0"+mm);
		else
			fname+=mm;
		if(dd<10)
			fname+=("0"+dd);
		else
			fname+=dd;
		
		fname +=".html";
		
		String rFile = config.getServletContext().getRealPath("/notice/saveFolder");
		rFile+="/"+fname;
		out.println(rFile);
		
		
	FileReader fr = null;
	BufferedReader br = null;
	
	try{
		
		fr = new FileReader(rFile); // inputStream을 만들어서 읽어 오고
		br = new BufferedReader(fr); // 읽어온 내용을 버퍼에 담고
		String contents ="";
		while((contents = br.readLine()) != null){
			out.println(contents);
		}
		out.println("<a href='javascript:self.close();'>close</a>");
		
	}catch(FileNotFoundException e){
		out.println("오늘은 공지사항이 없습니다.");
		out.println("<a href='javascript:self.close();'>close</a>");
	}catch(IOException e){
		e.printStackTrace();
	}finally{
		br.close();
		fr.close();
	}

%>    
