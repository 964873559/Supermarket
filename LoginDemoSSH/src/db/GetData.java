package db;

import java.sql.ResultSet;
import java.sql.SQLException;

import entity.User;

public class GetData {
	
	 
    public String sql = null;  
    public Database db = null;  
    public ResultSet ret = null;  
    public String uname = null;
    public String upassword = null;
  
    public  GetData(User user) {  
        sql = "select *from users";//SQL语句  
        db = new Database(sql);
        try {  
            ret = db.pst.executeQuery();//执行语句，得到结果集  
            while (ret.next()) {  
                String uname = ret.getString(2);  
                String upassword = ret.getString(3);  
                user.setUsername(uname);
                user.setPassword(upassword);
            }//显示数据  
            ret.close();  
            db.close();//关闭连接  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
    }  
}
