package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.PostDao;
import com.Dao.UserDao;
import com.Db.DBConnect;
import com.user.Post;
import com.user.UserDetails;

/**
 * Servlet implementation class AddNotesServlet
 */
@WebServlet("/AddNotesServlet")
public class AddNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNotesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int uid=Integer.parseInt(request.getParameter("uid"));
		String title = request.getParameter("title");
		String content =request.getParameter("content");


		
		PostDao dao = new PostDao(DBConnect.getConn());
		boolean f= dao.addNotes(title, content, uid);
		HttpSession session;
		

		if (f) {
			System.out.println("<h2>Data inserted Successfully</h2>");
							
		}
		else {
			System.out.println("<h2>Data not inserted</h2>");
		
		}

		
	}

}
