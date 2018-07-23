package jdbc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class FileUploadHandler
 */
@WebServlet(name = "FileUploadHandler", urlPatterns = { "/FileUploadHandler" })


public class FileUploadHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUploadHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String file_name = null;
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		 boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
		 if (!isMultipartContent) {
		 return;
		
		
	}

	
	 FileItemFactory factory = new DiskFileItemFactory();
	 ServletFileUpload upload = new ServletFileUpload(factory);
	 try {
	 List < FileItem > fields = upload.parseRequest(request);
	 Iterator < FileItem > it = fields.iterator();
	 if (!it.hasNext()) {
	 return;
	 }
	 while (it.hasNext()) {
	 FileItem fileItem = it.next();
	 boolean isFormField = fileItem.isFormField();
	 if (isFormField) {
	 if (file_name == null) {
	 if (fileItem.getFieldName().equals("file_name")) {
	 file_name = fileItem.getString();
	 }
	 }
	 } else {
	 if (fileItem.getSize() > 0) {
	 File f = new File("/Users/noufalsedairy/Desktop/"+fileItem.getName());
	 f.createNewFile();
	 fileItem.write(f);

	 }
	 }
	 }
	 } catch (Exception e) {
	 e.printStackTrace();
	 } finally {
	 out.println("<script type='text/javascript'>");
	 out.println("window.location.href='act.jsp?filename="+file_name+"'");
	 out.println("</script>");
	 out.close();
	 }
	 }

}
