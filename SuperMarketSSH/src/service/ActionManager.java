package service;

import dao.SaleDAO;
import dao.UserDAO;
import entity.Data;

public interface ActionManager {
	public String Login(String username , String password);
    public UserDAO getUserDAO();
    public void setUserDAO(UserDAO userDAO);
    public Data sale(int code);
    public SaleDAO getSaleDAO();
    public void setSaleDAO(SaleDAO saleDAO);
}
