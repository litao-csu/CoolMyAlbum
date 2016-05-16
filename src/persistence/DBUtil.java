package persistence;

/**
 * 
 * @author 李涛
 * 2016-4-4
 * 连接数据库
 *
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBUtil {
	private static String driverString = "com.mysql.jdbc.Driver";                      
	private static String connectionString = "jdbc:mysql://localhost:3306/coolmyalbum"; //获取工程路径
	private static String username = "root";                                            //数据库连接的用户名和密码
	private static String password = "root";
	
	public static Connection getConnection() throws Exception {
		Connection connection = null;
		try {
			Class.forName(driverString);                                  //装载JDBC驱动
			connection = DriverManager.getConnection(connectionString,username,password);//获得Connection对象
		} catch (Exception e) {
			throw e;
		}
		return connection;
	}
	public static void closeStatement(Statement statement) throws Exception {
		statement.close();
	}
	public static void closePreparedStatement(PreparedStatement pStatement)
			throws Exception {
		pStatement.close();
	}
	public static void closeResultSet(ResultSet resultSet) throws Exception {
		resultSet.close();
	}
	public static void closeConnection(Connection connection) throws Exception {
		connection.close();
	}
	
	/*test the connection
	public static void main(String[] args) throws Exception {
		Connection conn = DBUtil.getConnection();
		System.out.println(conn);
	}
	*/
}
