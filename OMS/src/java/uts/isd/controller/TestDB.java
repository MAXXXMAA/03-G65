package uts.isd.controller;

import uts.isd.model.dao.DBManager;
import uts.isd.model.dao.DBConnector;
import uts.isd.model.*;
import java.sql.*;
import java.util.*;
import java.util.logging.*;

public class TestDB {
    private static Scanner in = new Scanner(System.in);
    
    public static void main(String[] args) {
        try {
            DBConnector connector = new DBConnector(); //Create a connection and initialize DB conn-field
            Connection conn = connector.openConnection(); //Get the protected connection instance from DB superclass to share for the application classes
            DBManager db = new DBManager(conn); //DBManger instance provide users with access to CRUD operations
            
//            int key = (new Random()).nextInt(999999);
//            String ID = "" + key; 
            System.out.print("Genre: ");
            String genre = in.nextLine();
//            System.out.print("User fullname: ");
//            String fullname = in.nextLine();
//            System.out.print("User email: ");
//            String email = in.nextLine();
//            System.out.print("User pass: ");
//            String pass = in.nextLine();
//            System.out.print("User phone: ");
//            String phone = in.nextLine();
            
            //Movie movie = db.findMovie(title, genre);//重复利用 student bean
            //User user = db.findUser(ID);
//This method must be completed in DBManager class
              List<Movie> movie = db.listMoviesByGenre(genre);
           for(int i = 0; i < movie.size(); i++) {
            System.out.println(movie.get(i).getmID());
            System.out.println(movie.get(i).getTitle());
            System.out.println(movie.get(i).getGenre());
            System.out.println(movie.get(i).getPrice());
            System.out.println(movie.get(i).getStock());
            
        }

//            if (user != null) {
//                System.out.println("Student is found in the database." + user.getuID() + user.getEmail());
//            }
//            
//            if (user == null) {
//                System.out.println("Student is not found in the database.");
//            }
//            
//            if (user == null) {
//                db.addUser(ID, fullname, email, pass, phone);
//                System.out.println("Movie is added to the database");
//            }
//            
//            if (user != null) {
//                db.updateUser(ID, fullname, email, pass, phone);
//                System.out.println("Movie is updated to the database");
//            }
//            
//            if (user != null) {
//                db.deleteUser(ID);
//                System.out.println("Movie is delete to the database");
//            }
            
            
//            db.addStudent(ID, email, name, password, dob, favcol); //This method must be completed in DBManager class
//            System.out.println("Student is added to the database.");

            connector.closeConnection(); //Professional practice is to close connection to database once operations are finalized
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
