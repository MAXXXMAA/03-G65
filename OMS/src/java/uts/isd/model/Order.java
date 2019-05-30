package uts.isd.model;
import java.io.Serializable;
/**
 * @author lam
 * Movie Order Bean to create order object
 */
public class Order implements Serializable {
    
    private String OID;   
    private String quantity;   
    private String price;    
    private String totalPrice;    
    private String detail;    
    private String date;
    private String status;
    private String movieName;
    private String UID;

    public Order(String OID, String quantity, String price, String totalPrice, String detail, String date, String status, String movieName,String UID) {
        this.OID = OID;
        this.quantity = quantity;
        this.price = price;
        this.totalPrice = totalPrice;
        this.detail = detail;
        this.date = date;
        this.status = status;
        this.movieName = movieName;
        this.UID = UID;
    }
    
    public Order() { }
    
    public void updateDetails(String OID, String quantity, String price, String totalPrice, String detail, String date, String status, String movieName,String UID){
        this.OID = OID;
        this.quantity = quantity;
        this.price = price;
        this.totalPrice = totalPrice;
        this.detail = detail;
        this.date = date;
        this.status = status;
        this.movieName = movieName;
        this.UID = UID;
    }  
    
    public boolean matchID(String OID){
        return this.OID.equals(OID.trim());
    }
   
    public String getOID() {
        return OID;
    }

    public void setOID(String OID) {
        this.OID = OID;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }
    
    public String getUID() {
        return UID;
    }

    public void setUID(String UID) {
        this.UID = UID;
    }
    
}