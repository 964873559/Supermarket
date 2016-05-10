package daoImpl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.SaleDAO;
import entity.Data;

public class SaleDAOImpl extends HibernateDaoSupport implements SaleDAO{
	public Data sale(int code){
		Data goods = null;
		goods = (Data)getHibernateTemplate().find("from entity.Data where id =" + code);
		 System.out.println(goods);
		 if(goods != null) { 
			 return goods;
		 }
		 return null;
	}
}
