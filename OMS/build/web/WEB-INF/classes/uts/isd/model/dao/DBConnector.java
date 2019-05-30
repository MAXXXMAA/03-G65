package uts.isd.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Initiate connection with the jdbc derby database and initialize the super class conn field
 * 
 * @author difeima
 */
public class DBConnector extends DB{

    public DBConnector() throws ClassNotFoundException, SQLException {
        Class.forName(driver);
        conn = DriverManager.getConnection(URL, dbuser, dbpass);
    }

    public Connection openConnection(){
        return this.conn;
    }
    
    public void closeConnection() throws SQLException {
        this.conn.close();
    }
}
