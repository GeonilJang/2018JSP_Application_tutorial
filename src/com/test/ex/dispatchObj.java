package com.test.ex;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/redirectEx/dispatchObj")
public class dispatchObj extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public dispatchObj() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDO");
		
		request.setAttribute("aa", "abcde");
		request.setAttribute("xy", "12345");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/redirectEx/dispatch.jsp");
		dispatcher.forward(request,response);
		
		
		
		
	}

}
