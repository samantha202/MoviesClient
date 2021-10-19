package servlet.pack;
import java.io.IOException;
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

public class UpdateViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String HOME_PAGE = "WEB-INF/UpdateView.jsp";
	private static String baseURI = "http://localhost:8080/ApiRest/rest/movies/";
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
         
		ClientConfig config = new ClientConfig();
        String id = request.getParameter("id");
 		int ids = Integer.parseInt(id);
    	javax.ws.rs.client.Client client = ClientBuilder.newClient(config);
    	String URLtarget = baseURI+ids;
    	WebTarget target = client.target(URLtarget );
    	String responses = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
    	
    	ObjectMapper objectMapper = new ObjectMapper();
        TypeReference<Movie> mapType = new TypeReference<Movie>() {};
        Movie jsonToList = objectMapper.readValue(responses, mapType);
    	request.setAttribute("movie", jsonToList);
    	request.getRequestDispatcher(HOME_PAGE).forward(request, response);
	}
}
