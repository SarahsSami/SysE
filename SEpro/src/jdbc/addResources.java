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
			out.println("project"+pro9);
			
			
			String user = request.getParameter("SE"); //get user by type SE
			String sql = "SELECT ID FROM users where Name='"+user+"'";
			PreparedStatement ps = conn.prepareStatement(sql); 
			resultSet = ps.executeQuery();
			resultSet.next();
			int uID= Integer.parseInt(resultSet.getString(1));
			out.println("SE"+uID);
			

			String user3 = request.getParameter("cus"); //get user by type customer 
			String sql3 = "SELECT ID FROM users where Name='"+user3+"'";
			PreparedStatement ps3 = conn.prepareStatement(sql3); 
			resultSet = ps3.executeQuery();
			resultSet.next();
			int uID3= Integer.parseInt(resultSet.getString(1));
			out.println("customer"+uID3);
			
		
		
//
			String user4 = request.getParameter("programM"); //get user by type program manager
			String sql4 = "SELECT ID FROM users where Name='"+user4+"'";
			PreparedStatement ps4 = conn.prepareStatement(sql4); 
			resultSet = ps4.executeQuery();
			resultSet.next();
			int uID4= Integer.parseInt(resultSet.getString(1));
			out.println("program"+uID4);
//
//			
			String user5 = request.getParameter("imp"); //get user by type implementer 
			String sql5 = "SELECT ID FROM users where Name='"+user5+"'";
			PreparedStatement ps5 = conn.prepareStatement(sql5); 
			resultSet = ps5.executeQuery();
			resultSet.next();
			int uID5= Integer.parseInt(resultSet.getString(1));
			out.println("implementer"+uID5);
//
//
			String user6 = request.getParameter("tester"); //get user by type tester
			String sql6 = "SELECT ID FROM users where Name='"+user6+"'";
			PreparedStatement ps6 = conn.prepareStatement(sql6); 
			resultSet = ps6.executeQuery();
			resultSet.next();
			int uID6= Integer.parseInt(resultSet.getString(1));
			out.println("tester"+uID6);
//			
//						
//
			String user7 = request.getParameter("designer"); //get user by type designer
			String sql7 = "SELECT ID FROM users where Name='"+user7+"'";
			PreparedStatement ps7 = conn.prepareStatement(sql7); 
			resultSet = ps7.executeQuery();
			resultSet.next();
			int uID7= Integer.parseInt(resultSet.getString(1));
			out.println("designer"+uID7);
////			
////			
////
			String user8 = request.getParameter("leader"); //get user by type leader
			String sql8 = "SELECT ID FROM users where Name='"+user8+"'";
			PreparedStatement ps8 = conn.prepareStatement(sql8); 
			resultSet = ps8.executeQuery();
			resultSet.next();
			int uID8= Integer.parseInt(resultSet.getString(1));
			out.println("leader"+uID8);
////			
////
			String user9 = request.getParameter("cm"); //get user by type cm
			String sql9 = "SELECT ID FROM users where Name='"+user9+"'";
			PreparedStatement ps9 = conn.prepareStatement(sql9); 
			resultSet = ps9.executeQuery();
			resultSet.next();
			int uID9= Integer.parseInt(resultSet.getString(1));
			out.println("cm"+uID9);
////			
////			
////
			String user10 = request.getParameter("quality"); //get user by type quality
			String sql10 = "SELECT ID FROM users where Name='"+user10+"'";
			PreparedStatement ps10 = conn.prepareStatement(sql10); 
			resultSet = ps10.executeQuery();
			resultSet.next();
			int uID10= Integer.parseInt(resultSet.getString(1));
			out.println("quality"+uID10);
//			
////			
			String user11 = request.getParameter("productM"); //get user by type product manager
			String sql11 = "SELECT ID FROM users where Name='"+user11+"'";
			PreparedStatement ps11 = conn.prepareStatement(sql11); 
			resultSet = ps11.executeQuery();
			resultSet.next();
			int uID11= Integer.parseInt(resultSet.getString(1));
			out.println("product"+uID11);

			
///////////////////////////////////INSERT///////////////////////////////////////////
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn8 = DriverManager.getConnection("jdbc:mysql://localhost:3306/marketing", "root", ""); //server num and db name
			
			
			
			
			String sqlN1 = "insert into resources (iduser,idproj) values(?, ?)"; //insert to db  SE			
			PreparedStatement psN1 = conn8.prepareStatement(sqlN1); 
			psN1.setInt(1, uID);
			psN1.setInt(2, pro9);
			psN1.executeUpdate(); 	
			
			
			
			String sqlN2 = "insert into resources (iduser,idproj) values(?, ?)"; //insert to db CUSTOMER 
			PreparedStatement psN2 = conn8.prepareStatement(sqlN2); 
			psN2.setInt(1, uID3);
			psN2.setInt(2, pro9);
			psN2.executeUpdate(); 	
//			
//			
//
			String sqlN3 = "insert into resources (iduser,idproj) values(?, ?)"; //insert to db PROGREM MANAGER
			PreparedStatement psN3 = conn8.prepareStatement(sqlN3); 
			psN3.setInt(1, uID4);
			psN3.setInt(2, pro9);
			psN3.executeUpdate(); 	
//			
//			
//
			String sqlN4 = "insert into resources (iduser,idproj) values(?, ?)"; //insert to db implementer
			PreparedStatement psN4 = conn8.prepareStatement(sqlN4); 
			psN4.setInt(1, uID5);
			psN4.setInt(2, pro9);
			psN4.executeUpdate(); 	
//			
//			
//
			String sqlN5 = "insert into resources (iduser,idproj) values(?, ?)"; //insert to db tester
			PreparedStatement psN5 = conn8.prepareStatement(sqlN5); 
			psN5.setInt(1, uID6);
			psN5.setInt(2, pro9);
			psN5.executeUpdate(); 	
//			
//			
//
			String sqlN6 = "insert into resources (iduser,idproj) values(?, ?)"; //insert to db designer
			PreparedStatement psN6 = conn8.prepareStatement(sqlN6); 
			psN6.setInt(1, uID7);
			psN6.setInt(2, pro9);
			psN6.executeUpdate(); 	
//			
//			
			String sqlN7 = "insert into resources (iduser,idproj) values(?, ?)"; //insert to db leader 
			PreparedStatement psN7 = conn8.prepareStatement(sqlN7); 
			psN7.setInt(1, uID8);
			psN7.setInt(2, pro9);
			psN7.executeUpdate(); 	
//			
//			
			String sqlN8 = "insert into resources (iduser,idproj) values(?, ?)"; //insert to db cm 
			PreparedStatement psN8 = conn8.prepareStatement(sqlN8); 
			psN8.setInt(1, uID9);
			psN8.setInt(2, pro9);
			psN8.executeUpdate(); 	
//			
//			
			String sqlN9 = "insert into resources (iduser,idproj) values(?, ?)"; //insert to db quality 
			PreparedStatement psN9 = conn8.prepareStatement(sqlN9); 
			psN9.setInt(1, uID10);
			psN9.setInt(2, pro9);
			psN9.executeUpdate(); 	
//			
//			
			String sqlN10 = "insert into resources (iduser,idproj) values(?, ?)"; //insert to db product M 
			PreparedStatement psN10 = conn8.prepareStatement(sqlN10); 
			psN10.setInt(1, uID11);
			psN10.setInt(2, pro9);
			psN10.executeUpdate(); 	
			
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
