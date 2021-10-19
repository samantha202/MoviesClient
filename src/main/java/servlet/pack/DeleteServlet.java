package servlet.pack;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import org.glassfish.jersey.client.ClientConfig;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import net.codejava.ws.Movie;

public class DeleteServlet extends HttpServlet {
	
	private static String baseURI = "http://localhost:8080/ApiRest/rest/movies/";
	public static final String HOME_PAGE = "WEB-INF/Home.jsp";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		ClientConfig config = new ClientConfig();
		javax.ws.rs.client.Client client = ClientBuilder.newClient(config);
		String id = request.getParameter("id");
		String ConUrl = baseURI+id;
		WebTarget target = client.target(ConUrl);
    	Response responses = target.request().delete(Response.class);
    	System.out.println(responses);
    	request.getRequestDispatcher(HOME_PAGE).forward(request, response);
	}
}
