package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.do")
public class FrontCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FrontCon() {
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		try {
			actionDo(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		try {
			actionDo(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		System.out.println("actionDo");
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring(conPath.length());
		
		
		if(command.equals("/frontCon/studentAll.do")) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter writer = response.getWriter();
			writer.println("<html><head></head><body>");
			
			Service svc = new StudentAllService();
			
			
			ArrayList<StudentDTO> sdtos = svc.excute(request, response); 
			
			for (int i = 0 ; i < sdtos.size(); i++) {
				StudentDTO sdto = sdtos.get(i);
				String no = sdto.getHakbun();
				String pw = sdto.getPw();
				String name = sdto.getName();
				String hp = sdto.getHp();
				
				writer.println(no+pw+name+hp);
			}
			
			writer.println("</body></html>");
			
			
		}
	
	}

}
