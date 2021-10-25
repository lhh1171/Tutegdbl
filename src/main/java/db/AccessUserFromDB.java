package db;

import bean.User;

import java.sql.*;

public class AccessUserFromDB {
    private static  Connection conn=null;
    private static Statement stmt=null;
    //构造函数中完成对数据库进行初始化
    public AccessUserFromDB() {
        //创建连接
        conn=this.getConnection();
        try {
            //创建Statement
            stmt=conn.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    //将对象user添加到表中
    public void Add(User user) throws SQLException
    {
        String sql="INSERT INTO user(username,password) VALUES('"
                +user.getUsername()+"','"+user.getPassword()+"')";
        stmt.executeUpdate(sql);
    }
    //根据用户名（关键字）从数据库删除相应的记录
    public void Delete(String username) throws SQLException
    {
        String sql="Delete From user Where username='"+username+"'";
        stmt.executeUpdate(sql);
    }
    //修改数据库中的user
    public void Update(User user) throws SQLException
    {
        String sql="UPDATE user set password='"
                +user.getPassword()+"' where username='"+user.getUsername()+"'";
        stmt.executeUpdate(sql);
    }
    //根据用户名称（关键字）从数据库中查找记录，并将找到的记录写入对象user中返回
    public User searchByUsername(String username) throws SQLException
    {
        User user=new User();
        String sql="select * from user where username='"+username+"'";
        ResultSet rs=stmt.executeQuery(sql);
        while(rs.next())
        {
            String name=rs.getString("username");
            if(name.equals(username))
            {
                //将从数据库查找得到的记录存入对象user中
                user.setUsername(name);
                user.setPassword(rs.getString("password"));
                if(rs!=null) {
                    rs.close();
                }
                return user;
            }
        }
        return null;//查找不到返回null
    }
    //根据用户判断该记录是否存在
    public boolean exists(String username)
    {
        boolean rtn=false;
        try {
            if(searchByUsername(username)!=null) {
                rtn=true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rtn;
    }
    ///建立与数据的连接
    private Connection getConnection()
    {
        String driverClass=" com.microsoft.sqlserver.jdbc.SQLServerDriver ";
        String url=//与创建数据库的代码结合，保证访问数据库时不出现乱码
                " jdbc:sqlserver://localhost:1433;DatabaseName=test ";

        String username = "root";
        String password = "123";
        try {
            Class.forName(driverClass);// 加载数据库驱动
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            conn = DriverManager.getConnection(url, username, password);//建立连接
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print("数据库连接失败！");
        }
        return conn;
    }
    //关闭与访问数据库有关连接

    @Override
    protected void finalize()
    {
        try {
            if(stmt!=null) {
                stmt.close();
            }
            if(conn!=null) {
                conn.close();
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
