package serviceImpl;

import service.ActionManager;
import dao.UserDAO;

public class ActionManagerImpl implements ActionManager {
	private UserDAO userDAO;

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
}
