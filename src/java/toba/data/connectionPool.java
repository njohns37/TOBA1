package toba.data;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class connectionPool {
    private static connectionPool pool = null;
    private static DataSource dataSource = null;

    private connectionPool() {
        try {
            InitialContext ic = new InitialContext();
            dataSource = (DataSource) ic.lookup("java:/comp/env/jdbc/toba");
        } catch (NamingException e) {
            System.out.println(e);
        }
    }

    public static synchronized connectionPool getInstance() {
        if (pool == null) {
            pool = new connectionPool();
        }
        return pool;
    }

    public Connection getConnection() {
        try {
            return dataSource.getConnection();
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }
    }

    public void freeConnection(Connection c) {
        try {
            c.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
}
