package uts.isd.model.dao;

import java.sql.Connection;

/**
 * set up database url, database name, password, driver etc.
 * @author difeima
 */
public abstract class DB {
    protected String URL = "jdbc:derby://localhost:1527/studentsdb";//replace empty-string with jdbc:derby local host url
    protected String db = "studentsdb";//name of the database
    protected String dbuser = "isduser";//db root user
    protected String dbpass = "admin"; //db root password
    protected String driver = "org.apache.derby.jdbc.ClientDriver"; //jdbc client driver - built in with NetBeans
    protected Connection conn; //connection null-instance to be initialized in sub-classes
}