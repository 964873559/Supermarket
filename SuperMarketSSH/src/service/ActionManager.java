package service;

import dao.UserDAO;

public interface ActionManager {
	public String Login(String username , String password);
    public UserDAO getUserDAO();
    public void setUserDAO(UserDAO userDAO);
}
