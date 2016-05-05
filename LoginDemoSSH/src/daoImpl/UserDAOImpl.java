package daoImpl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.UserDAO;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {
	public String login(String username, String password) {
		 @SuppressWarnings("rawtypes")
		List list = getHibernateTemplate().find("select * from entity.Users");
		 System.out.println(list.get(0).toString());
		 if(list.get(0).toString() == username && list.get(1).toString() == password) { 
			 return list.get(0).toString();
		 }
		 return null;	  
	}
}
