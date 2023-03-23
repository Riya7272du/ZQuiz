package com.quiz;
import com.database.modules.studentDao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.database.modules.admin;
import com.database.modules.adminDao;
import com.database.modules.student;

/**
 * Servlet implementation class Main
 */
@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Main() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String action=request.getParameter("action");
		
		//login module....
		if(action.equals("adminlogin"))
		{String username=(request.getParameter("username"));
		String password=(request.getParameter("password"));
		
		admin ob=new admin(username,password);
		try {
			if(adminDao.isadmin(ob))
			{	out.println("<html><body bgcolor='cyan'");
				
				out.println("<h1>successfully login.........</h1>");
				out.println("</body></html>");
			}
			else
			{
				out.println("invalid username and password");
			}
		} catch (SQLException e) {e.printStackTrace();}}
		
		//signup module....
		
		
		
		else if(action.equals("studentlogin"))
		{
			String username=(request.getParameter("username"));
			String password=(request.getParameter("password"));
			
			admin ob=new admin(username,password);
			try {
				if(studentDao.isadmin(ob))
				{	response.sendRedirect("studentPage.jsp");}
				else
				{response.sendRedirect("login.jsp?registerationStatus="+".....**invalid username and password**....");
					out.println("invalid username and password");
				}
			} catch (SQLException e) {e.printStackTrace();}
		}
		
		
		else if(action.equals("studentsignup"))
		{	String registration="";
			try {
			registration = "MCA2023"+studentDao.getstudentid();
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			
			String email=request.getParameter("email");
			String name=request.getParameter("name");
			String password=request.getParameter("password");
			String repassword=request.getParameter("repassword");
			student ob =new student(registration,email,name,password);
			if(password.equals(repassword))
			{	try {
				if(studentDao.checkEmail(ob))
				{	response.sendRedirect("login.jsp?registerationStatus="+"Email already exist....");
					out.println("Email already exist....");
				}
				else
				{
					boolean insertStatus=studentDao.insertData(ob);
					if(insertStatus==true)
					{	 
						response.sendRedirect("login.jsp?registerationStatus="+"Susccessfully registered......");
						}
					else
					{	response.sendRedirect("login.jsp?registerationStatus="+"Something went wrong....");
						out.println("Something went wrong....");}
				}
				} catch (SQLException e) {e.printStackTrace();}
				
				
			}
			else
			{	response.sendRedirect("login.jsp?registerationStatus="+"password didn't match....");
				out.println("password didn't match....");}
			
		}
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
