package user.persistance;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcUtil {
	
	static {
		 try {
			 Class.forName("oracle.jdbc.OracleDriver");
				
			 }catch (ClassNotFoundException e) {
				e.printStackTrace();
		 }
		
	 }
	
	public static Connection getConnection () {
		
		try {
			String url= "jdbc:oracle:thin:@localhost:1521:xe";
			String user= "c##java";
			String password = "12345";
			Connection con = DriverManager.getConnection(url,user,password);
			//java is default auto commit poniendo este codigo lo cancelamos 
			con.setAutoCommit(false);
			 return con;
			 
		}catch (SQLException e) {
			e.printStackTrace();
		}
		 return null;
	}
	
	//commit
	
	public static void commit(Connection con) {
		try {
			con.commit();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	
	//rollback
	
	public static void rollback(Connection con) {
		try {
			con.rollback();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	public static void  close (PreparedStatement pstmt) {
		if (pstmt!=null) {
			try {
				pstmt.close();
			
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	
		public static void  close (ResultSet rs) {
			if (rs!=null) {
				try {
					rs.close();
			
				}catch (SQLException e) {
					e.printStackTrace();
				}
				}
		}
}
		
	
