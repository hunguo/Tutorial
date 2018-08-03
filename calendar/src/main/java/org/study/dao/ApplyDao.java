package org.study.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.study.model.Application;
import org.study.model.User;

public class ApplyDao {

	private Connection conn;
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "CALENDAR";
	private static final String PW = "1111";
	
	public Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			return DriverManager.getConnection(URL, USER, PW);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public boolean submitApplication(Application application) {
		Connection conn = getConnection();
		PreparedStatement ps = null;
		int result;
		
		if (conn != null && application != null) {
			String sql = "insert into USERPLAN_TABLE (Id,userId, PLAN, PLANDESC,APPLY_ID_SEQ.NEXTVA) " +
					" values (APPLY_ID_SEQ.NEXTVA, ?, ?, ?)";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, application.getUserId());
				ps.setString(2, application.getPLAN());
				ps.setString(3, application.getPLANDESC());
				
				result = ps.executeUpdate();
				
				if (result == 0) {
					return false;
				} else {
					return true;
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {		
				if (ps != null) {
					try {
						ps.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
			
		return false;
	}
}
