package uts.isd.model;

/**
 * @author difeima
 * Movie bean to create movie object
 */
public class Movie {
    
    private String mID;   
    private String title;   
    private String genre;    
    private String price;    
    private String stock;    

    public Movie(String mID, String title, String genre, String price, String stock) {
        this.mID = mID;
        this.title = title;
        this.genre = genre;
        this.price = price;
        this.stock = stock;
    }

    public Movie() { }

    public void updateDetails(String title, String genre, String price, String stock){
        this.title = title;
        this.genre = genre;
        this.price = price;
        this.stock = stock;
    }  
    
    public boolean matchID(String mID){
        return this.mID.equals(mID.trim());
    }

    public String getmID() {
        return mID;
    }

    public String getTitle() {
        return title;
    }

    public String getGenre() {
        return genre;
    }

    public String getPrice() {
        return price;
    }

    public String getStock() {
        return stock;
    }

    public void setmID(String mID) {
        this.mID = mID;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }
    
    
}
