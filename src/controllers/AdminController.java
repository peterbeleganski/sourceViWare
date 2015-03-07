package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

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

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;
	private Connection conn; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
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
		HttpSession session = request.getSession(true);
		
		
				if(action.equals("stats")){
					request.getRequestDispatcher("/admin-list-videos.jsp").forward(request, response);
				}else if(action.equals("add")){
					request.getRequestDispatcher("/admin-add-course.jsp").forward(request, response);
				}else if(action.equals("user-stats")){
					request.getRequestDispatcher("/admin-users.jsp").forward(request, response);
				}else if(action.equals("delete")){
					request.getRequestDispatcher("/admin-delete-course.jsp").forward(request, response);
				}else if(action.equals("edit")){
					request.getRequestDispatcher("/admin-edit-course.jsp").forward(request, response);
				}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String instructor = request.getParameter("instructor");
		String image = request.getParameter("course-image");
		String url = request.getParameter("url");
		String info = request.getParameter("video-info");
		String message = "";
		String action = request.getParameter("action");
		String id = request.getParameter("course-id");
	/*	PrintWriter out = response.getWriter();
		out.println("Title-"+title+" ");
		out.println("instructor -"+instructor+" ");
		out.println("IMage- "+image+" ");
		out.println("URl - "+url+" ");
		out.println("Information -"+info+" ");*/
		
		try {
			conn = ds.getConnection();
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		
		Admin course = new Admin(conn);
		
		
		if(action.equals("edit")){
			
			try {
				course.editCourse(title, instructor, image, url, info, id);
				request.setAttribute("status", "Course Edited!");
				request.getRequestDispatcher("/admin-edit-course.jsp").forward(request, response);
			} catch (SQLException e) {
				request.setAttribute("status", "Error");
				request.getRequestDispatcher("/admin-edit-course.jsp").forward(request, response);
				e.printStackTrace();
			}
		}else if(action.equals("add")){
		
			try {
				course.addCourse(title, instructor, image, url, info);
				request.setAttribute("status", message);
				request.getRequestDispatcher("/admin-add-course.jsp").forward(request, response);
			} catch (SQLException e) {
				message = "error";
				request.setAttribute("status", message);
				request.getRequestDispatcher("/admin-add-course.jsp").forward(request, response);
				e.printStackTrace();
			}
		}else{
			try {
				course.deleteCourse(id);
				request.setAttribute("status", "ok");
				request.getRequestDispatcher("/admin-delete-course.jsp").forward(request, response);
			} catch (SQLException e) {
				request.setAttribute("status", "error");
				request.getRequestDispatcher("/admin-delete-course.jsp").forward(request, response);
				e.printStackTrace();
			}
		}
	}

}
