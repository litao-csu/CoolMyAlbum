package web;

import java.util.ArrayList;
import java.util.Map;

import service.AccountService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import domain.Account;
/**
 * 作者：李涛，2016-5-1
 * Action处理用户请求
 *
 */
public class AccountAction extends ActionSupport{

	
	private static final long serialVersionUID = 1111L;
	private AccountService service;
	private ArrayList<Account> accountlist;
	private Account account;
	private Map<String, Object> session;
	private String parametersMsg;
	private String confirmPassword;

	public AccountAction(){
		this.service = new AccountService();
	}
	
	@Override
	public String execute() throws Exception {
		accountlist = service.getAllAccountsInfo();
		return SUCCESS;
	}
	
	public String login() throws Exception {
		
		if (!validation(account)){
			addActionError(parametersMsg);
			return LOGIN;
		}
			
	//	 System.out.println(account.getUsername() + account.getPassword());
		 account = service.login(account);
		
		 
		if(account == null)
		{
			addActionError("用户名或密码错误");
			return LOGIN;
		}
		else 
		{
			ActionContext actionContext = ActionContext.getContext();
			 
		    session = actionContext.getSession();
			session.put("loginAccount",account);
			return SUCCESS;
		}
		
	}
	
	public String register() throws Exception {
		if(!registerValidation(account))
		{
			addActionError(parametersMsg);;
			return INPUT;
		}
		else 
		{
			//service = new AccountService();
			if(service.usernameIsExist(account)){
				addActionError("用户名已存在");
				return INPUT;
			}
			else{
				System.out.println(account.getUsername() + account.getPassword());
				account = service.register(account);
				if(account == null){
					addActionError("请先注册");
					return INPUT;
				}
				else{
					parametersMsg = "注册成功";
					ActionContext actionContext = ActionContext.getContext();
					 
				    session = actionContext.getSession();
					session.put("registerAccount",account);
					return SUCCESS;
				}
			}
			
		}
	}
	
	private boolean validation(Account loginAccount){
		
		if (loginAccount.getUsername() == null || loginAccount.getUsername().equals("")){
			parametersMsg = "请输入用户名";
			return false;
		}
		
		if (loginAccount.getPassword() == null || loginAccount.getPassword().equals("")){
			parametersMsg = "请输入密码";
			return false;
		}
			return true;
	}
	
	private boolean registerValidation(Account registerAccount)
	{
		if(registerAccount.getUsername() == null || registerAccount.getUsername().equals(""))
		{
			parametersMsg = "请输入用户名";
			return false;
		}
		if(registerAccount.getPassword() == null || registerAccount.getPassword().equals(""))
		{
			parametersMsg = "请输入密码";
			return false;
		}
		if(!registerAccount.getPassword().equals(confirmPassword))
		{
			parametersMsg = "密码错误，请重新输入";
			return false;
		}
		return true;
	}
	public String loginForm() throws Exception {
		return INPUT;
	}
	
	public String registerForm() throws Exception {
		return INPUT;
	}

	public ArrayList<Account> getAccountlist() {
		return accountlist;
	}

	public void setAccountlist(ArrayList<Account> accountlist) {
		this.accountlist = accountlist;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

/*	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
*/
}
