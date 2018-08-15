package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/redirectEx/RequestObj")
public class RequestObj extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RequestObj() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo");
		
		String aa = (String) request.getAttribute("aa");
		String xy = (String) request.getAttribute("xy");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter pw = response.getWriter();
		
		pw.print("<html><head></head><body>");
		pw.print("RequestObj : <br>");
		pw.print("aa : "+aa+"<br>");
		pw.print("xy : "+xy+"<br>");
		pw.print("</body></html>");
		
		
		
		
		
		
		
		
		
	}

}
