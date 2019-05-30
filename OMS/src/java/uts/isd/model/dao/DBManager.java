package uts.isd.model.dao;

import uts.isd.model.Movie;
import uts.isd.model.User;
import uts.isd.model.Log;
import uts.isd.model.Order;

import java.sql.*;
import java.util.*;

/**
 *
 * @author difeima
 * 
 * DBManager is the primary DAO class to interact with the database and perform CRUD operations with the database.
 * It perform CRUD operations with the database for movie, user, log, and order tables.
 * it include dao for movie, user, log, order
 * 
 */
public class DBManager {

    private Statement st;

    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement(); //conn db
    }
 
// Movie dao start    
//find movie by title, genre
    public Movie findMovie(String title, String genre) throws SQLException {
        //code for search-operation
        String searchQueryString = "select * from Movies where title='" + title + "' AND genre='" + genre +"'";
        ResultSet rs = st.executeQuery(searchQueryString);
        boolean hasMovie = rs.next();
        Movie movieFromDB = null;
        
        if (hasMovie) {
            String mID = rs.getString("mid");
            String mTitle = rs.getString("title");
            String mGenre = rs.getString("genre");
            String mPrice = rs.getString("price");
            String mStock = rs.getString("stock");
            
            movieFromDB = new Movie(mID, mTitle, mGenre, mPrice, mStock);
        }
        rs.close();
        return movieFromDB;
    }
    //find movie by title
    public Movie findMovieByMovieName(String title) throws SQLException {
        //code for search-operation
        String searchQueryString = "select * from Movies where title='" + title +"'";
        ResultSet rs = st.executeQuery(searchQueryString);
        boolean hasMovie = rs.next();
        Movie movieFromDB = null;
        
        if (hasMovie) {
            String mID = rs.getString("mid");
            String mTitle = rs.getString("title");
            String mGenre = rs.getString("genre");
            String mPrice = rs.getString("price");
            String mStock = rs.getString("stock");
            
            movieFromDB = new Movie(mID, mTitle, mGenre, mPrice, mStock);
        }
        rs.close();
        return movieFromDB;
    }

    //Add moive add to table Movies
    public void addMovie(String ID, String title, String genre, String price, String stock) throws SQLException { 
        //code for add-operation
        String createQueryString = "insert into Movies" + " values ('" + ID + "', '" + title + "', '" + genre + "', '" + price + "', '" + stock + "')";
        boolean recordCreated = st.executeUpdate(createQueryString) > 0;
        
        if (recordCreated) {
            System.out.println("Create");
        } else {
            System.out.println("No create");
        }
    }

    //update a movie details in the table Movies
    public void updateMovie(String ID, String title, String genre, String price, String stock) throws SQLException {
        //code for update-operation
        String updateQueryString = "update movies set title= '" + title + "', genre= '" + genre + "', price= '" + price + "', stock = '" + stock + "' where mid ='" + ID + "'";
        boolean recordUpdated = st.executeUpdate(updateQueryString) > 0;
        
        if (recordUpdated) {
            System.out.println("record Update");
        } else {
            System.out.println("record not Update");
        }
    }
    
    //delete a movie from the table Movies
    public void deleteMovie(String ID) throws SQLException{
        //code for delete-operation
        String deleteQueryString = "delete from Movies where mid = '" + ID + "' ";
        boolean recordDelete = st.executeUpdate(deleteQueryString) > 0;
        
        if (recordDelete) {
            System.out.println("record delete");
        } else {
            System.out.println("record not delete");
        }
        
    }
    
    //Get all movies from the Movie table
    public List<Movie> listAllMovies() throws SQLException {
        List<Movie> listMovie = new ArrayList<>();
        //code for selectAll-operation
        String listAllQueryString = "SELECT * FROM movies";
        ResultSet rs = st.executeQuery(listAllQueryString);

        while (rs.next()) {
            String mID = rs.getString("mid");
            String mTitle = rs.getString("title");
            String mGenre = rs.getString("genre");
            String mPrice = rs.getString("price");
            String mStock = rs.getString("stock");
            Movie movie = new Movie(mID, mTitle, mGenre, mPrice, mStock);
            listMovie.add(movie);
        }
        rs.close();
        return listMovie;
    }
    
    //Get all movies from the Movie table that match genre
    public List<Movie> listMoviesByGenre(String genre) throws SQLException {
        List<Movie> listMovie = new ArrayList<>();

        //code for selectAll by genre-operation
        String listQueryString = "select * from Movies where genre='" + genre +"'";

        ResultSet rs = st.executeQuery(listQueryString);

        while (rs.next()) {
            String mID = rs.getString("mid");
            String mTitle = rs.getString("title");
            String mGenre = rs.getString("genre");
            String mPrice = rs.getString("price");
            String mStock = rs.getString("stock");

            Movie movie = new Movie(mID, mTitle, mGenre, mPrice, mStock);
            listMovie.add(movie);
        }
         
        rs.close();
        return listMovie;
    }
    
    //reduce a movie stock details in the database
    public void reduceMovie(String title,String quantity, String oldStock) throws SQLException {
        double q = Double.parseDouble(quantity);
        double s = Double.parseDouble(oldStock);
        double ns = s - q;
        int i = (int) ns;
        String newStock = String.valueOf(i);
        String stock = newStock;
        String updateQueryString = "update movies set stock= '" + stock + "' where title ='" + title + "'";
        boolean recordUpdated = st.executeUpdate(updateQueryString) > 0;
        
        if (recordUpdated) {
            System.out.println("record Update");
        } else {
            System.out.println("record not Update");
        }
    }
    
    //increase a movie stock details in the database
    public void increaseMovie(String title,String quantity, String oldStock) throws SQLException {
        double q = Double.parseDouble(quantity);
        double s = Double.parseDouble(oldStock);
        double ns = s + q;
        int i = (int) ns;
        String newStock = String.valueOf(i);
        String stock = newStock;
        String updateQueryString = "update movies set stock= '" + stock + "' where title ='" + title + "'";
        boolean recordUpdated = st.executeUpdate(updateQueryString) > 0;
        
        if (recordUpdated) {
            System.out.println("record Update");
        } else {
            System.out.println("record not Update");
        }
    }
    
    //check movie stock by title
    public boolean checkMovieStock(String title) throws SQLException {
        //code for search-operation
        String searchQueryString = "select * from Movies where title='" + title +"'";
        ResultSet rs = st.executeQuery(searchQueryString);
        boolean hasMovie = rs.next();
        
        if (hasMovie) {
            String mStock = rs.getString("stock");
            if("0".equals(mStock)) {
                return false;
            }
            return true;
        }
        rs.close();
        return false;
    }
    //Movie dao end
    
    //User dao start
    //Get all users from the User table
    public List<User> listAllUsers() throws SQLException {
        List<User> listUser = new ArrayList<>();

        String listAllQueryString = "SELECT * FROM users";
         
        ResultSet rs = st.executeQuery(listAllQueryString);
         
        while (rs.next()) {
            String uID = rs.getString("uid");
            String name= rs.getString("fullname");
            String phone = rs.getString("phone");
            String email= rs.getString("email");
            String password = rs.getString("password");
            String activate = rs.getString("activate");

             
            User user = new User(uID, name, phone, email, password,activate);
            listUser.add(user);
        }
         
        rs.close();
        return listUser;
    }
    
    //add user to the user table
    public void addNewUser(String ID, String fullname, String email, String password, String phone, String activate) throws SQLException {        
        String createQueryString = "insert into Users" + " values ('" + ID + "', '" + fullname + "', '" + password + "', '" + email + "', '" + phone + "', '" + activate + "')";
        boolean recordCreated = st.executeUpdate(createQueryString) > 0;
        
        if (recordCreated) {
            System.out.println("Create");
        } else {
            System.out.println("No create");
        }
    }
        
    //this func call when user login
    //find user in the table by email password
    public User checkUser(String email, String password) throws SQLException {
        String searchQueryString = "select * from Users where email='" + email + "' AND password='" + password + "'";
        ResultSet rs = st.executeQuery(searchQueryString);
 
        boolean hasUser = rs.next();
        User userFromDB = null;
        
  
        if (hasUser) {
            String uID = rs.getString("uid");
            String fullname = rs.getString("fullname");
            String emailAdd = rs.getString("email");
            String pass = rs.getString("password");
            String phone = rs.getString("phone");
            String activate = rs.getString("activate");
            if ("activate".equals(activate)) {
             userFromDB = new User(uID, fullname, emailAdd, pass, phone, activate);               
            } else {
                userFromDB = null;
            }

        }

        rs.close();
        
        return userFromDB;
    }
  
    //find user in the table by id
    public User findUser(String ID) throws SQLException {
        String searchQueryString = "select * from Users where uid='" + ID +"'";
        ResultSet rs = st.executeQuery(searchQueryString);
        boolean hasUser = rs.next();
        User userFromDB = null;
        
        if (hasUser) {
            String uID = rs.getString("uid");
            String fullname = rs.getString("fullname");
            String emailAdd = rs.getString("email");
            String pass = rs.getString("password");
            String phone = rs.getString("phone");
            String activate = rs.getString("activate");
            userFromDB = new User(uID, fullname, emailAdd, pass, phone, activate);
        }
        rs.close();
        return userFromDB;
    }
    
    //this is admin function
    //find user in the user table by fullname and phone
    public User adminFindUser(String fullname, String phone) throws SQLException {
 
        String searchQueryString = "select * from Users where fullname='" + fullname + "' AND phone='" + phone +"'";
        ResultSet rs = st.executeQuery(searchQueryString);
        boolean hasUser = rs.next();
        User userFromDB = null;
        
        if (hasUser) {
            String ID = rs.getString("uID");
            String Name = rs.getString("fullname");
            String Phone = rs.getString("phone");
            String email= rs.getString("email");
            String password = rs.getString("password");
            String activate = rs.getString("activate");
            
            userFromDB = new User(ID, Name, Phone, email, password, activate);
        }
        rs.close();
        return userFromDB;
    }
    
    // delete user from the user table by id
    public void deleteUser(String id) throws SQLException{
        String deleteQueryString = "delete from Users where uid = '" + id + "' ";
        boolean recordDelete = st.executeUpdate(deleteQueryString) > 0;
        
        if (recordDelete) {
            System.out.println("record delete");
        } else {
            System.out.println("record not delete");
        }
        
    }
    

    // update user in the user table 
    public void updateUser(String ID, String fullname, String email, String password, String phone) throws SQLException {
        //code for update-operation
        String updateQueryString = "update users set fullname= '" + fullname + "', email= '" + email + "', password= '" + password + "', phone = '" + phone + "' where uid ='" + ID + "'";
        boolean recordUpdated = st.executeUpdate(updateQueryString) > 0;
        
        if (recordUpdated) {
            System.out.println("record Update");
        } else {
            System.out.println("record not Update");
        }
    }
            public void updateAdminUser(String ID, String fullname, String email, String password, String phone, String activate) throws SQLException {
        //code for update-operation
        String updateQueryString = "update users set fullname= '" + fullname + "', email= '" + email + "', password= '" + password + "', phone = '" + phone + "' , activate = '" + activate + "' where uid ='" + ID + "'";
        boolean recordUpdated = st.executeUpdate(updateQueryString) > 0;
        
        if (recordUpdated) {
            System.out.println("record Update");
        } else {
            System.out.println("record not Update");
        }
    }
    
    // User dao end

    // log dao start
    // add a log to log table 
    public void addLog(String AID,String UID,String loginDate,String loginTime,String logoutDate,String logoutTime) throws SQLException {        
        //code for add-operation
        String createQueryString = "insert into LOGS" + " values ('" + AID + "', '" + UID + "', '" + loginDate + "', '" + loginTime + "', '" + logoutDate + "', '" + logoutTime + "')";
        boolean recordCreated = st.executeUpdate(createQueryString) > 0;
        
        if (recordCreated) {
            System.out.println("Create");
        } else {
            System.out.println("No create");
        }
    }
    
    // get all log detail that match user id
    public List<Log> listAllLogs(String UID) throws SQLException {
        List<Log> listLog = new ArrayList<>();

        String listAllQueryString = "select * from Logs where UID='" + UID +"'";
         
        ResultSet rs = st.executeQuery(listAllQueryString);
         
        while (rs.next()) {
            String AID = rs.getString("AID");
            String lUID = rs.getString("UID");
            String loginDate = rs.getString("loginDate");
            String loginTime = rs.getString("loginTime");
            String logoutDate = rs.getString("logoutDate");
            String logoutTime = rs.getString("logoutTime");
            
             
            Log log = new Log(AID, lUID, loginDate, loginTime,logoutDate,logoutTime);
            listLog.add(log);
        }
         
        rs.close();
        return listLog;
    }
    
    // get all log detail that match user id and login date
    //this func called when search login/out detail by user id and date
    public List<Log> listAllLogsByLoginDate(String loginDate,String UID) throws SQLException {
        List<Log> listLog = new ArrayList<>();

        String listAllQueryString = "select * from Logs where loginDate='" + loginDate + "' AND UID='" + UID +"'";
         
        ResultSet rs = st.executeQuery(listAllQueryString);
         
        while (rs.next()) {
            String AID = rs.getString("AID");
            String lUID = rs.getString("UID");
            String lloginDate = rs.getString("loginDate");
            String loginTime = rs.getString("loginTime");
            String logoutDate = rs.getString("logoutDate");
            String logoutTime = rs.getString("logoutTime");
            
             
            Log log = new Log(AID, lUID, lloginDate, loginTime,logoutDate,logoutTime);
            listLog.add(log);
        }
         
        rs.close();
        return listLog;
    }
        
    // delete a log detail from log table
    public void deleteLog(String AID) throws SQLException{
        //code for delete-operation
        String deleteQueryString = "delete from Logs where AID = '" + AID + "' ";
        boolean recordDelete = st.executeUpdate(deleteQueryString) > 0;
        
        if (recordDelete) {
            System.out.println("record delete");
        } else {
            System.out.println("record not delete");
        }
        
    }
    
    // find log detail in the log table that match login date 
    public Log findLog(String loginDate) throws SQLException {
        String searchQueryString = "select * from Logs where loginDate='" + loginDate +"'";
        ResultSet rs = st.executeQuery(searchQueryString);
        boolean hasLog = rs.next();
        Log logFromDB = null;
        
        if (hasLog) {
            String AID = rs.getString("AID");
            String UID = rs.getString("UID");
            String lLoginDate = rs.getString("loginDate");
            String loginTime = rs.getString("loginTime");
            String logoutDate = rs.getString("logoutDate");
            String logoutTime = rs.getString("logoutTime");
            
            logFromDB = new Log(AID, UID, lLoginDate, loginTime,logoutDate,logoutTime);
           
        }
        rs.close();
        return logFromDB;
    }
        
    // update a log detail in the log table
    public void updateLog(String AID,String logoutDate,String logoutTime) throws SQLException {
        //code for update-operation
        String updateQueryString = "update Logs set logoutDate= '" + logoutDate + "', logoutTime= '" + logoutTime + "' where AID ='" + AID + "'";
        boolean recordUpdated = st.executeUpdate(updateQueryString) > 0;
        
        if (recordUpdated) {
            System.out.println("record Update");
        } else {
            System.out.println("record not Update");
        }
    }
    
    //log dao end
    
    
    
    //Oder dao start
    // find an order detail in the table that match order id
    public Order findOrder(String OID) throws SQLException {
        String searchQueryString = "select * from Orders where OID='" + OID +"'";
        ResultSet rs = st.executeQuery(searchQueryString);
        boolean hasOrder = rs.next();
        Order orderFromDB = null;
        
        if (hasOrder) {
            String oID = rs.getString("OID");
            String oQuantity = rs.getString("quantity");
            String oPrice = rs.getString("price");
            String oTotalPrice = rs.getString("totalPrice");
            String oDetail = rs.getString("detail");
            String oStatus = rs.getString("status");
            String oDate = rs.getString("date");
            String oMovieName = rs.getString("movieName");
            String oUID = rs.getString("UID");
            
            
            orderFromDB = new Order(oID, oQuantity,oPrice,oTotalPrice,oDetail,oStatus,oDate,oMovieName,oUID);
        }
        rs.close();
        return orderFromDB;
    }

    //Add an order-data into the order table
    public void addOrder(String OID,String quantity,String price,String totalPrice,String detail,String status,String date,String movieName,String UID) throws SQLException {        
        //code for add-operation
        String createQueryString = "insert into Orders" + " values ('" + OID + "', '" + quantity + "', '" + price + "', '" + totalPrice + "', '" + detail + "', '" + status + "', '" + date + "', '" + movieName + "', '" + UID + "')";
        boolean recordCreated = st.executeUpdate(createQueryString) > 0;
        
        if (recordCreated) {
            System.out.println("Create");
        } else {
            System.out.println("No create");
        }
    }

    //update an order-data into the order table
    public void updateOrder(String OID,String quantity,String totalPrice,String detail) throws SQLException {
        //code for update-operation
        String updateQueryString = "update Orders set quantity= '" + quantity + "', totalPrice = '" + totalPrice + "', detail = '" + detail + "' where OID ='" + OID +"'";
        boolean recordUpdated = st.executeUpdate(updateQueryString) > 0;
        
        if (recordUpdated) {
            System.out.println("record Update");
        } else {
            System.out.println("record not Update");
        }
    }
    
    //delete an order-data into the order table
    public void deleteOrder(String OID) throws SQLException{
        //code for delete-operation
        String status = "cancelled";
        String deleteQueryString = "update Orders set status= '" + status + "' where OID ='" + OID +"'";

        boolean recordDelete = st.executeUpdate(deleteQueryString) > 0;
        
        if (recordDelete) {
            System.out.println("record delete");
        } else {
            System.out.println("record not delete");
        }
        
    }
    
    // get all order-data from the order table that match user id
    public List<Order> listAllOrders(String UID) throws SQLException {
        List<Order> listOrder = new ArrayList<>();

        String listAllQueryString = "SELECT * FROM orders where UID='" + UID + "'";
         
        ResultSet rs = st.executeQuery(listAllQueryString);
         
        while (rs.next()) {
            String OID = rs.getString("OID");
            String movieName = rs.getString("movieName");
            String quantity = rs.getString("quantity");
            String price = rs.getString("price");
            String totalPrice = rs.getString("totalPrice");
            String detail = rs.getString("detail");
            String status = rs.getString("status");
            String date = rs.getString("date");
            String lUID = rs.getString("UID");
             
            Order order = new Order(OID, quantity, price, totalPrice,detail,status,date,movieName,lUID);
            listOrder.add(order);
        }
         
        rs.close();
        return listOrder;
    }
   
    // check order status if the stock is == 0
    public boolean checkOrderStatus(String oid) throws SQLException {
        String searchQueryString = "select * from orders where oid='" + oid +"'";
        ResultSet rs = st.executeQuery(searchQueryString);
        boolean hasOrder = rs.next();
        
        if (hasOrder) {
            String status = rs.getString("status");
            if("cancelled".equals(status)) {
                return false;
            }
            return true;
        }
        rs.close();
        return false;
    }    
    
    // delete user order from the order table
    public void deleteUserOrder(String ID) throws SQLException {
        String status = "cancelled";
        String updateQueryString = "update Orders set STATUS= '" + status + "' where UID ='" + ID + "'";
        boolean recordUpdated = st.executeUpdate(updateQueryString) > 0;
        
        if (recordUpdated) {
            System.out.println("record Update");
        } else {
            System.out.println("record not Update");
        }
    }   
    
    // Order dao end
    
    //class end
}


