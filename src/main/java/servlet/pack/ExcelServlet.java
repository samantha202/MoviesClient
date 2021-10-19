package servlet.pack;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Workbook;
import net.codejava.ws.Movie;


public class ExcelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExcelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		Movie m; 
		try {
		    HSSFWorkbook workbook = new  HSSFWorkbook();
		    HSSFSheet movieSheet = workbook.createSheet("T_movies datas");
		    HSSFRow row = movieSheet.createRow(0);
		    HSSFCell cell;
		    
		    //definition of some cell styles
			CellStyle hearderCellStype = workbook.createCellStyle();
			HSSFFont font = workbook.createFont();
			font.setBold(true);
			hearderCellStype.setFont(font);
			hearderCellStype.setAlignment(HorizontalAlignment.CENTER);
			
			//Export T_Movies_Town table
		    cell = row.createCell(0);
		    cell.setCellStyle(hearderCellStype);
		    cell.setCellValue("title");
		    
		    cell = row.createCell(1);
		    cell.setCellStyle(hearderCellStype);
		    cell.setCellValue("language");
		    
		    cell = row.createCell(2);
		    cell.setCellStyle(hearderCellStype);
		    cell.setCellValue("duration");
		    
		    cell = row.createCell(3);
		    cell.setCellStyle(hearderCellStype);
		    cell.setCellValue("Author");
		    
		    cell = row.createCell(4);
		    cell.setCellStyle(hearderCellStype);
		    cell.setCellValue("King");
		    
		    cell = row.createCell(5);
		    cell.setCellStyle(hearderCellStype);
		    cell.setCellValue("MinAge");
		    
		    cell = row.createCell(6);
		    cell.setCellStyle(hearderCellStype);
		    cell.setCellValue("Actors");
		    
		    cell = row.createCell(7);
		    cell.setCellStyle(hearderCellStype);
		    cell.setCellValue("Ville");
		    
		    int rowIndex = 1;
		    for(Movie mv: Movie.ExportList) 
			{
				row = movieSheet.createRow(rowIndex++);
				cell = row.createCell(0);
				cell.setCellValue(mv.title);
				cell = row.createCell(1);
				cell.setCellValue(mv.getLanguages());
				cell = row.createCell(2);
				String duration = mv.getDuration().hour+":"+mv.getDuration().min;
				cell.setCellValue( duration);
				cell = row.createCell(3);
				cell.setCellValue(mv.getAuthor());
				cell = row.createCell(4);
				cell.setCellValue(mv.getKing());
				cell = row.createCell(5);
				cell.setCellValue(mv.getMinAge());
				cell = row.createCell(6);
				cell.setCellValue(mv.getActors().get(1).fisrtName);
				cell = row.createCell(7);
				cell.setCellValue(mv.getV());	
			}
		    response.setContentType("application/vnd.ms-excel");
		    OutputStream out = response.getOutputStream();
           workbook.write(out);
		  }
		  catch(Exception e){}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
