package servlet.pack;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation.Builder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import org.aopalliance.intercept.Invocation;
import org.glassfish.jersey.client.ClientConfig;
import net.codejava.ws.Actors;
import net.codejava.ws.Adresse;
import net.codejava.ws.JourWeek;
import net.codejava.ws.Movie;
import net.codejava.ws.Programes;


public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public static ArrayList<Actors> act1 = new ArrayList<Actors>(); //list of actors
    public static ArrayList<JourWeek> dayListS  = new ArrayList<JourWeek>();//list of projection days and time
    public  Date parsed1,parsed2;
    public   Date date = new Date();
    public   Date date1 = new Date();
    public  Date date2 = new Date();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//extraction of the different values entered in the form
		String title = request.getParameter("title");
		String language = request.getParameter("language");
		String author = request.getParameter("author");
		String kind = request.getParameter("kind");
		String minAge = request.getParameter("minAge");
		int minAgeI = Integer.parseInt(minAge); 
		String duration = request.getParameter("duration");
		String actors1 = request.getParameter("actors1");
		String actors2 = request.getParameter("actors2");
		act1.add(new Actors(actors1));
		act1.add(new Actors(actors2));
		String description = request.getParameter("description");
		//-----------------------adress---------------------
		String numb = request.getParameter("numb");
		int numI = Integer.parseInt(numb); 
		String street = request.getParameter("street");
		String postCode = request.getParameter("postCode");
		int postalCodeI = Integer.parseInt(postCode); 
		String country = request.getParameter("country");
		String city = request.getParameter("city");
		
		//---------------------Programs------------------
		
		String startingDate = request.getParameter("startingDate");
		String endingDate = request.getParameter("endingDate");
		String day1 = request.getParameter("day1");
		String day2 = request.getParameter("day2");
		String day3 = request.getParameter("day3");
		String time1 = request.getParameter("tim1");
		String time2 = request.getParameter("tim2");
		String time3 = request.getParameter("tim3");
		
		//date conversion
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
		try {
			 parsed1 = format.parse(startingDate);
		} catch (ParseException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		
		try {
			 parsed2 = format.parse(endingDate);
		} catch (ParseException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
	    JourWeek JW1 = ConvertTime(time1);
	    JW1.setDaysOfweek(day1);
	    
	    JourWeek JW2 = ConvertTime(time2);
	    JW1.setDaysOfweek(day2);
	    
	    JourWeek JW3 = ConvertTime(time3);
	    JW1.setDaysOfweek(day3);
	    JourWeek durat = ConvertTime(duration);
	    dayListS.add(JW1);
	    dayListS.add(JW2);
	    dayListS.add(JW3);
	    
	    ClientConfig config = new ClientConfig();
	    javax.ws.rs.client.Client client = ClientBuilder.newClient(config);
	    Movie m = new Movie(title,language,durat,kind,new Adresse(numI,street,postalCodeI,city,country),minAgeI,description,new Programes(parsed1,parsed2,dayListS,startingDate,endingDate),author,act1,city);
	    WebTarget webTarget = client.target("http://localhost:8080/ApiRest/rest/movies/add/");
	    Response resp = webTarget.request().post(Entity.entity(m, MediaType.APPLICATION_JSON));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
   public static JourWeek ConvertTime(String tim) 
   {
	   String[] t = tim.split(":");
	    int hour = Integer.parseInt(t[0]);
	    int min = Integer.parseInt(t[1]);
	    JourWeek j = new JourWeek(hour,min);
	    return j;     
   }
}
