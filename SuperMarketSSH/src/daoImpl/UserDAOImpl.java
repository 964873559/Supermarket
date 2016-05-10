package daoImpl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.UserDAO;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {
	public String login(String username, String password) {
		 @SuppressWarnings("rawtypes")
		 List list = getHibernateTemplate().find("select id from entity.User where username='"
				 + username + "'and password='" + password +"'");
		 System.out.println(list.get(0));
		 if(list.size()>0) { 
			 System.out.println(username);
			 return username;
		 }
		 return null;	  
	}
	
}
