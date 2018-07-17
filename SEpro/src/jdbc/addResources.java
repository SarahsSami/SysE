package jdbc;
import java.util.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addResources
 */
@WebServlet("/addResources")
public class addResources extends HttpServlet {
	 ResultSet resultSet = null;
	 ResultSet resultSet2 = null;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addResources() {
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
		// TODO Auto-generated method stub
		try {
//            String pID = projID.substring(0, projID.indexOf(' '));
//			int prID= Integer.parseInt(pID);
			
			
			PrintWriter out = response.getWriter(); //to check connection
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/marketing", "root", ""); //server num and db name
			
			
//			
			String proj = request.getParameter("projects"); //get pro id 
			String sql2 = "SELECT idp FROM project where proName='"+proj+"'";
			PreparedStatement ps2 = conn.prepareStatement(sql2); 
			resultSet2 = ps2.executeQuery();
			resultSet2.next();
			
			int pro9= Integer.parseInt(resultSet2.getString(1));
			out.println(pro9);
			
			
			String user = request.getParameter("SE"); //get user by type
			String sql = "SELECT ID FROM users where Name='"+user+"'";
			PreparedStatement ps = conn.prepareStatement(sql); 
			resultSet = ps.executeQuery();
			resultSet.next();
			int uID= Integer.parseInt(resultSet.getString(1));
			out.println(uID);
			

			String user3 = request.getParameter("cus"); //get user by type
			String sql3 = "SELECT ID FROM users where Name='"+user3+"'";
			PreparedStatement ps3 = conn.prepareStatement(sql3); 
			resultSet = ps3.executeQuery();
			resultSet.next();
			int uID3= Integer.parseInt(resultSet.getString(1));
			out.println(uID3);
			
			
//
//			String user = request.getParameter("productM"); //get user by type
//			String sql = "SELECT ID FROM users where Name='"+user+"'";
//			PreparedStatement ps = conn.prepareStatement(sql); 
//			resultSet = ps.executeQuery();
//			resultSet.next();
//			int uID= Integer.parseInt(resultSet.getString(1));
//			out.println(uID);
//			
//			
//
//			String user = request.getParameter("programM"); //get user by type
//			String sql = "SELECT ID FROM users where Name='"+user+"'";
//			PreparedStatement ps = conn.prepareStatement(sql); 
//			resultSet = ps.executeQuery();
//			resultSet.next();
//			int uID= Integer.parseInt(resultSet.getString(1));
//			out.println(uID);
//			
//			
//
//			String user = request.getParameter("imp"); //get user by type
//			String sql = "SELECT ID FROM users where Name='"+user+"'";
//			PreparedStatement ps = conn.prepareStatement(sql); 
//			resultSet = ps.executeQuery();
//			resultSet.next();
//			int uID= Integer.parseInt(resultSet.getString(1));
//			out.println(uID);
//			
//			
//
//			String user = request.getParameter("tester"); //get user by type
//			String sql = "SELECT ID FROM users where Name='"+user+"'";
//			PreparedStatement ps = conn.prepareStatement(sql); 
//			resultSet = ps.executeQuery();
//			resultSet.next();
//			int uID= Integer.parseInt(resultSet.getString(1));
//			out.println(uID);
//			
//			
//
//			String user = request.getParameter("designer"); //get user by type
//			String sql = "SELECT ID FROM users where Name='"+user+"'";
//			PreparedStatement ps = conn.prepareStatement(sql); 
//			resultSet = ps.executeQuery();
//			resultSet.next();
//			int uID= Integer.parseInt(resultSet.getString(1));
//			out.println(uID);
//			
//			
//
//			String user = request.getParameter("Leader"); //get user by type
//			String sql = "SELECT ID FROM users where Name='"+user+"'";
//			PreparedStatement ps = conn.prepareStatement(sql); 
//			resultSet = ps.executeQuery();
//			resultSet.next();
//			int uID= Integer.parseInt(resultSet.getString(1));
//			out.println(uID);
//			
//
//			String user = request.getParameter("cm"); //get user by type
//			String sql = "SELECT ID FROM users where Name='"+user+"'";
//			PreparedStatement ps = conn.prepareStatement(sql); 
//			resultSet = ps.executeQuery();
//			resultSet.next();
//			int uID= Integer.parseInt(resultSet.getString(1));
//			out.println(uID);
//			
//			
//
//			String user = request.getParameter("quality"); //get user by type
//			String sql = "SELECT ID FROM users where Name='"+user+"'";
//			PreparedStatement ps = conn.prepareStatement(sql); 
//			resultSet = ps.executeQuery();
//			resultSet.next();
//			int uID= Integer.parseInt(resultSet.getString(1));
//			out.println(uID);

			
//
			String sql8 = "insert into resources (iduser,idproj) values(?, ?)"; //insert to db
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn8 = DriverManager.getConnection("jdbc:mysql://localhost:3306/marketing", "root", ""); //server num and db name
			PreparedStatement ps8 = conn8.prepareStatement(sql8); 

			ps8.setInt(1, uID);
			ps8.setInt(2, pro9);
			ps8.executeUpdate(); 		
	}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		}

}
