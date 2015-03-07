package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import models.Admin;
import models.Login_Register;

/**
 * Servlet implementation class SignController
 */
@WebServlet("/welcome")
public class SignController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;
	private Connection conn;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignController() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init(ServletConfig config) throws ServletException {
		try {
			
			InitialContext ic = new InitialContext();
			Context ctx = (Context) ic.lookup("java:comp/env");
			ds = (DataSource) ctx.lookup("jdbc/webshop");
		
		
		//InitialContext initContext = new InitialContext();

			//Context env = (Context) initContext.lookup("java:comp/env");
	
		//	ds = (DataSource) env.lookup("jdbc/MySQLDS");
			//ds = (DataSource) env.lookup("jdbc/team");

		} catch (NamingException e) {
			e.printStackTrace();
//			throw new ServletException();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		Map<String, String> actionMap = new HashMap<String, String>();
		actionMap.put("image", "/video.jsp");
		actionMap.put("home", "/home.jsp");
		
		if(action == null || !actionMap.containsKey(action)) action = "home";
		
		request.getRequestDispatcher(actionMap.get(action)).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String message = "";
		HttpSession session = request.getSession(true);
		
		String action = request.getParameter("action");
		
		try {
			conn = ds.getConnection();
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		
		////////////////////	/* Login Code */ /////////////////////////////////////
		if (action.equals("login")) {
			Login_Register User = new Login_Register(conn);
			Admin admin = new Admin(conn);
			session.setAttribute("email", email);
			
			try {
				if (User.login(email,password)) {
					request.getRequestDispatcher("/home.jsp").forward(request, response);
				}else if(admin.login(email, password)){
					request.getRequestDispatcher("/admin-list-videos.jsp").forward(request, response);
				}
				else{
					request.setAttribute("message", "Invalid Information");
					request.getRequestDispatcher("/Login.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//////////////// /* Register Code */ ////////////////////////////////////
		
		if (action.equals("SignUp")) {
			Login_Register User = new Login_Register(conn);
			
			try {
				User.create(email, password,username);
				session.setAttribute("email", email);
				request.getRequestDispatcher("/home.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
