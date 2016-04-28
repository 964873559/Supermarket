package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.GetData;
import entity.User;

public class LoginServlet extends HttpServlet {
	
	public boolean checkLogin(String name,String password, User u){
		if(u.getUsername().equals(name)&&u.getPassword().equals(password)){
			return true;
		}else{
			return false;
		}
	}
	
	protected void doGet(HttpServletRequest request,HttpServletResponse response){
		doPost(request,response);
	}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User();
		new GetData(user);
		boolean bool = checkLogin(username,password,user);
		HttpSession session = request.getSession();
		String forward;
		if(bool){
			forward = "welcome.jsp";
			session.setAttribute("user", user);
		}else{
			forward = "login_failure.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
