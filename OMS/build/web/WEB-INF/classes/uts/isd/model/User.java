package uts.isd.model;
import java.io.Serializable;

/**
 * @author winne
 * User Bean to create object
 */
public class User implements Serializable  {
    private String uID;
    private String Name;
    private String Phone;
    private String email;
    private String password;
    private String activate;

    public User() {
    }


    public User(String uID, String Name, String Phone,String email, String password, String activate) {
        this.uID = uID;
        this.Name = Name;
        this.Phone = Phone;
        this.email = email;
        this.password = password;
        this.activate = activate;
    }
    
        public void updateDetails(String name, String phone, String email, String password, String activate){
        this.Name = name;
        this.Phone = phone;
        this.email = email;
        this.password = password;
        this.activate = activate;
  
    }
    

    public String getuID() {
        return uID;
    }

    public void setuID(String uID) {
        this.uID = uID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
        public String getActivate() {
        return activate;
    }

    public void setActivate(String activate) {
        this.activate = activate;
    }

}
