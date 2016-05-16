package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import domain.Account;

/**
 * 作者：李涛，2016-4-5
 * Account数据持久化
 *
 */
public class AccountDAO {
	//SQL语句进行增删改查
	String registeAccountSql = "insert into account (username,password) values (?,?)";
	String deleteAccountSql = "delete from account where id=?";
	String updateAccountSql = "update account set username=?,password=?,gender=?,email=?,phone=?,pwdQuestion=?,pwdAnswer=? where id=?";
	String getAccountByUsernameAndPasswordSql = "select * from account where username=? and password=?";
	String getAccountByUsernameSql = "select * from account where username=?";
	String getPasswordByUsernameSql = "select password from account where username=?";
	String getAccountByIdSql = "select * from account where id=?";
	String getAllAccountsSql = "select * from account";
	String getRegisteAccountIdSql = "select last_insert_id()";	
	
	private Account account;
	//获取账户
	public Account getAccount(){
		return account;
	}
	
	//增添账户
	public Account insert(Account account){
		Account registeAccount = null;
		
		try {
			Connection connection = DBUtil.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(registeAccountSql);
			setRegisterAccountToPreparedStatement(pStatement, account);
			int result = pStatement.executeUpdate();
			if (result == 1) {
				pStatement.close();
				pStatement = connection.prepareStatement(getRegisteAccountIdSql);
				ResultSet resultSet = pStatement.executeQuery();
				if (resultSet.next()) {
					int id = resultSet.getInt(1);
					registeAccount = account;
					registeAccount.setUserID(id);
				}
				DBUtil.closeResultSet(resultSet);
			}
			DBUtil.closePreparedStatement(pStatement);
			DBUtil.closeConnection(connection);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return registeAccount;
	}
	//删除账户
	public boolean delete(Account account) {
		boolean deleteResult = false;
		
		try {
			Connection connection = DBUtil.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(deleteAccountSql);
			pStatement.setInt(1, account.getUserID());
			int result = pStatement.executeUpdate();
			if (result == 1) {
				deleteResult = true;
			}
			DBUtil.closePreparedStatement(pStatement);
			DBUtil.closeConnection(connection);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return deleteResult;
	}
	//修改更新账户
	public boolean update(Account account) {
		boolean updateResult = false;
		
		try {
			Connection connection = DBUtil.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(updateAccountSql);
			setAccountToPreparedStatement(pStatement, account);
			pStatement.setInt(10, account.getUserID());

			int result = pStatement.executeUpdate();
			if (result == 1) {
				updateResult = true;
			}
			DBUtil.closePreparedStatement(pStatement);
			DBUtil.closeConnection(connection);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return updateResult;
	}
	//根据用户名、密码得到相应账户信息
	public Account getAccountByUsernameAndPassword(Account account) {
		Account selectAccount = null;
		
		try {
			Connection connection = DBUtil.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(getAccountByUsernameAndPasswordSql);
			pStatement.setString(1, account.getUsername());
			pStatement.setString(2, account.getPassword());
			ResultSet resultSet = pStatement.executeQuery();
			if (resultSet.next()) {
				selectAccount = getAccountFromResultSet(resultSet);
			}
			DBUtil.closeResultSet(resultSet);
			DBUtil.closePreparedStatement(pStatement);
			DBUtil.closeConnection(connection);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectAccount;
	}

	//根据用户名查询用户信息
	public boolean getAccountByUsername(Account account) {
		boolean selectResult = false;
		
		try {
			Connection connection = DBUtil.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(getAccountByUsernameSql);
			pStatement.setString(1, account.getUsername());
			ResultSet resultSet = pStatement.executeQuery();
			if (resultSet.next()) {
				selectResult = true;
			}
			DBUtil.closeResultSet(resultSet);
			DBUtil.closePreparedStatement(pStatement);
			DBUtil.closeConnection(connection);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectResult;
	}
	
	//根据用户名查询相应账户的密码
	public String getPassword(Account account) throws Exception {
			String selectResult = null;
		
		try {
			Connection connection = DBUtil.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(getPasswordByUsernameSql);
			pStatement.setString(1, account.getUsername());
			ResultSet resultSet = pStatement.executeQuery();
			if (resultSet.next()) {
				selectResult = resultSet.getString("password");
			}
			DBUtil.closeResultSet(resultSet);
			DBUtil.closePreparedStatement(pStatement);
			DBUtil.closeConnection(connection);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectResult;
	}
	
	//根据用户ID查询账户
	public Account getAccountById(Account account){
		Account selectAccount = null;
		
		try {
			Connection connection = DBUtil.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(getAccountByIdSql);
			pStatement.setInt(1, account.getUserID());
			ResultSet resultSet = pStatement.executeQuery();
			if (resultSet.next()) {
				selectAccount = getAccountFromResultSet(resultSet);
			}
			DBUtil.closeResultSet(resultSet);
			DBUtil.closePreparedStatement(pStatement);
			DBUtil.closeConnection(connection);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectAccount;
	}
	//得到所有账户信息
	public ArrayList<Account> getAllAccounts() {
		ArrayList<Account> accountList = new ArrayList<Account>();
		
		try {
			Connection connection = DBUtil.getConnection();
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(getAllAccountsSql);
			while (resultSet.next()) {
				Account account = getAccountFromResultSet(resultSet);
				accountList.add(account);
			}
			DBUtil.closeResultSet(resultSet);
			DBUtil.closeStatement(statement);
			DBUtil.closeConnection(connection);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return accountList;
	}
	//对账户进行预处理
	public void setAccountToPreparedStatement(PreparedStatement pStatement,
			Account account) throws SQLException {
		pStatement.setString(1, account.getUsername());
		pStatement.setString(2, account.getPassword());
		pStatement.setString(3, account.getGender());
		pStatement.setString(4, account.getEmail());
		pStatement.setString(5, account.getPhone());
		pStatement.setString(6, account.getPwdQuestion());
		pStatement.setString(7, account.getPwdAnswer());
		pStatement.setInt(8, (account.getStatus() == true ? 1 : 0));

	}
	
	public void setRegisterAccountToPreparedStatement(PreparedStatement pStatement,
			Account account) throws SQLException {
		pStatement.setString(1, account.getUsername());
		pStatement.setString(2, account.getPassword());
	}
	//从用户输入数据得到账户信息
	public Account getAccountFromResultSet(ResultSet resultSet)
			throws SQLException {
		Account account = new Account();
		account.setUserID(resultSet.getInt(1));
		account.setUsername(resultSet.getString(2));
		account.setPassword(resultSet.getString(3));
		account.setGender(resultSet.getString(4));
		account.setEmail(resultSet.getString(5));
		account.setPhone(resultSet.getString(6));
		account.setPwdQuestion(resultSet.getString(7));
		account.setPwdAnswer(resultSet.getString(8));
		account.setStatus(resultSet.getInt(9) == 1 ? true : false);
		return account;
	}
	

}
