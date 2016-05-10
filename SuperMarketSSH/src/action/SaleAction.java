package action;

import java.util.Map;

import service.ActionManager;

import com.opensymphony.xwork2.ActionContext;

import entity.Data;
import entity.User;

public class SaleAction {
	protected ActionManager mgr2;     //该对象采用 Spring 依赖注入
    private int code;

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String execute() throws Exception {
        System.out.println("action成功执行——防伪标识By黄运智");
        Data goods = mgr2.sale(code);
        if (goods != null) {
        	Map session = ActionContext.getContext().getSession();
        	session.put("username", new User().getUsername());
			session.put("code", goods.getId());
			session.put("goodname", goods.getName());
			session.put("goodprice", goods.getSalePrice());
			session.put("goodcount", goods.getSaleAmount());
			System.out.println("登陆成功！——防伪标识By黄运智");
            return "success";
        } else {
            System.out.println("非法用户——防伪标识By黄运智");
            return "error";
        }
    }

	public ActionManager getMgr2() {
		return mgr2;
	}

	public void setMgr2(ActionManager mgr) {
		this.mgr2 = mgr;
	}
}
