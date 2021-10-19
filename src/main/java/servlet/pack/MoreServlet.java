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
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import net.codejava.ws.Movie;

 
public class MoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String VIEW_PAGE = "WEB-INF/InformationM.jsp";
	private static String baseURI = "http://localhost:8080/ApiRest/rest/movies/";
 
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
         
		ClientConfig config = new ClientConfig();
        String id = request.getParameter("id");
 		int ids = Integer.parseInt(id);
    	javax.ws.rs.client.Client client = ClientBuilder.newClient(config);
    	String urlTarget= baseURI+ids;
    	WebTarget target = client.target(urlTarget);
    	String responses = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
    	
    	ObjectMapper objectMapper = new ObjectMapper();
        TypeReference<Movie> mapType = new TypeReference<Movie>() {};
        Movie jsonToList = objectMapper.readValue(responses, mapType);   
    	request.setAttribute("movie", jsonToList);
    	request.getRequestDispatcher(VIEW_PAGE).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		this.doGet(request, response);
	}
}
