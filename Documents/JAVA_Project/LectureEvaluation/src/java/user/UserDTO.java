/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

/**
 *
 * @author irene
 */
public class UserDTO {
    private String userID;
    private String userPassword;
    private String userEmail;
    private  String userEmailHash;
    private  boolean userEmailChecked;

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserPassword() {
        return userPassword;
    }

    // Initializing
    //public UserDTO { }
    
    public UserDTO(String userID, String userPassword, String userEmail, String userEmailHash, boolean userEmailChecked) {
        this.userID = userID;
        this.userPassword = userPassword;
        this.userEmail = userEmail;
        this.userEmailHash = userEmailHash;
        this.userEmailChecked = userEmailChecked;
    }    

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserEmailHash() {
        return userEmailHash;
    }

    public void setUserEmailHash(String userEmailHash) {
        this.userEmailHash = userEmailHash;
    }

    public boolean isUserEmailChecked() {
        return userEmailChecked;
    }

    public void setUserEmailChecked(boolean userEmailChecked) {
        this.userEmailChecked = userEmailChecked;
    }   
}
