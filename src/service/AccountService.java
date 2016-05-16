package service;

import java.util.ArrayList;

import domain.Account;
import persistence.AccountDAO;
/**
 * 作者：李涛，2016-4-5
 * Account业务逻辑
 *
 */
public class AccountService {
	
	private AccountDAO accountDAO;
	
	public AccountService(){
		this.accountDAO = new AccountDAO();
	}
	//获取登录用户的账户信息
	public Account login(Account loginAccount){
		return accountDAO.getAccountByUsernameAndPassword(loginAccount);
	}
	//获取所有账户信息
	public ArrayList<Account> getAllAccountsInfo(){
		return accountDAO.getAllAccounts();
	}
	//处理注册用户信息
	public Account register(Account account){
		return accountDAO.insert(account);
	}
	//判断用户名是否存在
	public boolean usernameIsExist(Account account){
		return accountDAO.getAccountByUsername(account);
	}
	//验证用户
	public void verifyUser(Account account) throws Exception{
		String password = accountDAO.getPassword(account);
		if (!usernameIsExist(account))
			throw new Exception("该用户名不存在！");
		if (password == null)
			throw new Exception("<" + accountDAO.getAccount().getUsername() + ">不存在");
		if (!password.equals(accountDAO.getAccount().getPassword()))
			throw new Exception("密码不正确!");
			
	}
	//删除账户
	public boolean deleteAccount(String id){
		Account account = new Account();
		account.setUserID(Integer.parseInt(id));
		return accountDAO.delete(account);
	}
	//根据用户ID获取账户
	public Account getAccount(String id){
		Account account = new Account();
		account.setUserID(Integer.parseInt(id));
		return accountDAO.getAccountById(account);
	}
}
