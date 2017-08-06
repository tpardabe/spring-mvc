package technodom.util;

/**
 * Created by talgatpardabekov on 8/5/17.
 */
public class User {
    private String firstname;
    private String lastname;
    private String  email;
    private String URI;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    private int ID;
    private String status;
    public String getFirstname(){
        return firstname;
    }
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    public String getLastname(){
        return lastname;
    }
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    public String getEmail(){
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getURI(){
        return URI;
    }
    public void setURI(String URI) {
        this.URI = URI;
    }
    public String toString(){
        return firstname +" "+lastname+ " " + email +" "+ URI;
    }
}
