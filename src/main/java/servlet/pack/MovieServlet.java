package servlet.pack;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import org.glassfish.jersey.client.ClientConfig;
import org.glassfish.jersey.client.ClientResponse;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import net.codejava.ws.Movie;

/**
 * Servlet implementation class MovieServlet
 */
public class MovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String baseURI = "http://localhost:8080/ApiRest/rest/movies/vil/";
	public static final String HOME_PAGE = "WEB-INF/Home.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ville = request.getParameter("search");
		ClientConfig config = new ClientConfig();
		
    	javax.ws.rs.client.Client client = ClientBuilder.newClient(config);
    	String urlTarget = baseURI+ville;
    	WebTarget target = client.target(urlTarget);
    	String responses = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
    	//I convert the Json result to a Arraylist in order to be able to display it on the view.
    	ObjectMapper objectMapper = new ObjectMapper();
        TypeReference<ArrayList<Movie>> mapType = new TypeReference<ArrayList<Movie>>() {};
        ArrayList<Movie> jsonToList = objectMapper.readValue(responses, mapType);
    	request.setAttribute("movies", jsonToList);
    	Movie.ExportList = jsonToList; 
    	request.getRequestDispatcher(HOME_PAGE).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}

