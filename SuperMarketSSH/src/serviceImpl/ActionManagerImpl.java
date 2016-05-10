package serviceImpl;

import service.ActionManager;
import dao.SaleDAO;
import dao.UserDAO;
import entity.Data;

public class ActionManagerImpl implements ActionManager {
	private UserDAO userDAO;
	private SaleDAO saleDAO;

    public SaleDAO getSaleDAO() {
		return saleDAO;
	}

	public void setSaleDAO(SaleDAO saleDAO) {
		this.saleDAO = saleDAO;
	}

	public UserDAO getUserDAO() {
       return this.userDAO;
    }

    public void setUserDAO(UserDAO userDAO) {
       this.userDAO = userDAO;
    }
 
    public String Login(String username, String password){
            try {
                  String name = userDAO.login(username, password);
                  if (name!= null)
                  {
                     return name;
                  }
            }
            catch (Exception e)
            {
                   System.out.println(e.getMessage());
            }
            return null;
    }
    
    public Data sale(int code) {
    	try {
            Data goods = saleDAO.sale(code);
            if (goods!= null)
            {
               return goods;
            }
      }
      catch (Exception e)
      {
             System.out.println(e.getMessage());
      }
      return null;
    }

}
