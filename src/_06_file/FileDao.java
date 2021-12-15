package _06_file;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FileDao {

	private FileDao() {}
	private static FileDao instance = new FileDao();
	public static FileDao getInstance() {
		return instance;
	}
	
	private Connection conn         = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs            = null;
	
	public Connection getConnection() {
		
		String dbURL = "jdbc:mysql://localhost:3306/file_ex?serverTimezone=UTC";
		String dbID = "root";
		String dbPassword = "1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
		
	}
	
	
	
	public void insertFile(FileDto fdto) {
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement("INSERT INTO FILE VALUES(?, ?, ?, ?, ?, NOW())");
			pstmt.setString(1, fdto.getUserName());
			pstmt.setString(2, fdto.getTitle());
			pstmt.setString(3, fdto.getOriginFileName());
			pstmt.setString(4, fdto.getServerFileName());
			pstmt.setString(5, fdto.getFileType());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {try {pstmt.close();} catch (SQLException e) {}}
			if (conn != null)  {try {conn.close();}  catch (SQLException e) {}}
		}
		
	}
	
	
	public ArrayList<FileDto> getFileList() {
		
		ArrayList<FileDto> fileList = new ArrayList<FileDto>();
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM  FILE");
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				FileDto fdto = new FileDto();
				
				fdto.setUserName(rs.getString("USER_NAME"));
				fdto.setTitle(rs.getString("TITLE"));
				fdto.setOriginFileName(rs.getString("ORIGIN_FILE_NAME"));
				fdto.setServerFileName(rs.getString("SERVER_FILE_NAME"));
				fdto.setFileType(rs.getString("FILE_TYPE"));
				fdto.setFileUploadDate(rs.getDate("FILE_UPLOAD_DATE"));
				
				fileList.add(fdto);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)    {try {rs.close();} catch (SQLException e) {}}
			if (pstmt != null) {try {pstmt.close();} catch (SQLException e) {}}
			if (conn != null)  {try {conn.close();}  catch (SQLException e) {}}
		}
		
		return fileList;
		
	}
	
	
	
	
	
}
