package servlet.pack;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.codejava.ws.User;
import net.codejava.ws.UserDAO;

/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ADD_VIEW = "WEB-INF/AddPage.jsp" ;
	public  String firstName ="", lastName= "";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
   
    String messageR = "your login or your passWord isn't  correct";
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//I retrieve the values entered in the form
		String login = request.getParameter("login");
		String pass = request.getParameter("pass");
		 boolean statut = UserDAO.CkeckUser(login, pass);//this function checks if the user exists
		 if(statut == true) 
		 {
			 firstName= UserDAO.firstName;
			 lastName = UserDAO.lastName;
			 User u = new User(firstName,lastName);
			 request.setAttribute("user", u);
			 request.getRequestDispatcher(ADD_VIEW).forward(request, response);
		 }
		 else 
		 {
			 request.setAttribute("ErrorMessage", messageR); 
			 request.getRequestDispatcher("login.jsp").forward(request, response);
		 }
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
