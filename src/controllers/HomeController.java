package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		
		if (action.equals("login")) {
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}else if (action.equals("Sign-up")) {
			request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
		}else if (action.equals("home")) {
				request.getRequestDispatcher("/home.jsp").forward(request, response);
		}else if (action.equals("contact")) {
			request.getRequestDispatcher("/contact.jsp").forward(request, response);
		}else if(action.equals("logout")){
			session.invalidate();
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
