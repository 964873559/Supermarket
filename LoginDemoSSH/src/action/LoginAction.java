package action;

import java.util.Map;

import service.ActionManager;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected ActionManager mgr;     //该对象采用 Spring 依赖注入
    private String username;
    private String password;

    @SuppressWarnings({ "unchecked", "rawtypes" })
	public String execute() throws Exception {
        System.out.println("点击登录执行该方法123");
        if(username.equals(" ") || username == null){
            return "ERROR";
        }
       
        String name = mgr.Login(username, password);

        if (name != null) {
        	Map session = ActionContext.getContext().getSession();
			session.put("username", name);
			System.out.println("登陆成功！");
            return "SUCCESS";
        } else {
            addActionError("用户名/密码不匹配");
            System.out.println("非法用户");
            return "ERROR";
        }
    }
 
    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsername(String username) {
        this.username = username;
    }
   
    //Spring依赖注入的对象必须有get、set方法。方法命名规则：get+变量名。为了便于记忆，变量名第一个字母可以大写。
    public void setMgr(ActionManager mgr)   
    {
        this.mgr = mgr;
    }
    
    public ActionManager getmgr()
    {
        return mgr;
    }
}
