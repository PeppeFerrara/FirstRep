package it.overnet.contatti;

import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.paradisogiuseppe.model.ContactModel;
import it.paradisogiuseppe.model.dao.ContactDAO;

/**
 * Servlet implementation class ListContact
 */
@WebServlet("/list")
public class ListContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private List<ContactModel> listContacts;
    private static final Logger logger = Logger.getLogger(ListContact.class.getName());
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("list.jsp").forward(request, response);
		listContacts=new ContactDAO().getContacts();
		HttpSession session=request.getSession();
		session.setAttribute("listContacts", listContacts);
		response.sendRedirect("save");
	}


}
