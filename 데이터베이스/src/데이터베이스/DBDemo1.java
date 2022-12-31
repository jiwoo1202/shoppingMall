package 데이터베이스;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBDemo1 {
	public static Connection getcoConnection() {
	String url = "jdbc:mysql://localhost/javabase?serverTimeZone=Asia/Seoul";
	Connection con = null;
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("데이터베이스 연결중");
		con = DriverManager.getConnection(url,"root","admin1234");
		System.out.println("데이터베이스 연결성공");
	} catch(ClassNotFoundException e) {
		System.out.println("드라이버를 찾지 못했습니다.");
		e.printStackTrace();
	}	catch(SQLException e) {
		System.out.println("데이터 베이스 연결 실패");
		e.printStackTrace();
	}

	return con;
	
}
	
	public static void main(String[] args) {
		Connection con = getcoConnection();
		
		try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}

	}
}

