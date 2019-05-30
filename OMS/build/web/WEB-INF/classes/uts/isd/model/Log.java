package uts.isd.model;

/**
 *
 * @author bella
 * Log bean to create log object
 */
public class Log {
    
    private String AID;
    private String UID;
    private String loginDate;   
    private String loginTime;    
    private String logoutDate;    
    private String logoutTime;

    public Log(String AID, String UID, String loginDate, String loginTime, String logoutDate, String logoutTime) {
        this.AID = AID;
        this.UID = UID;
        this.loginDate = loginDate;
        this.loginTime = loginTime;
        this.logoutDate = logoutDate;
        this.logoutTime = logoutTime;
    }

    public String getAID() {
        return AID;
    }

    public void setAID(String AID) {
        this.AID = AID;
    }

    public String getUID() {
        return UID;
    }

    public void setUID(String UID) {
        this.UID = UID;
    }

    public String getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(String loginDate) {
        this.loginDate = loginDate;
    }

    public String getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(String loginTime) {
        this.loginTime = loginTime;
    }

    public String getLogoutDate() {
        return logoutDate;
    }

    public void setLogoutDate(String logoutDate) {
        this.logoutDate = logoutDate;
    }

    public String getLogoutTime() {
        return logoutTime;
    }

    public void setLogoutTime(String logoutTime) {
        this.logoutTime = logoutTime;
    }
    
    
}
