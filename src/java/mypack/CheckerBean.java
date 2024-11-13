package mypack;
import java.beans.*; 
import java.io.Serializable; 
import java.util.regex.Matcher; 
import java.util.regex.Pattern;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeParseException;
import javax.servlet.http.HttpSession;

public class CheckerBean {
      private int id;
    private String fullname;
    private String dob;
    private String qualification;
    private String email;
    private String phone;
    private String password;
    private String error;
    
     public CheckerBean(){
        super();
    }
     public CheckerBean(String fullname, String dob, String qualification, String email, String phone, String password){
         this.fullname = fullname;
        this.dob = dob;
        this.qualification = qualification;
        this.email = email;
        this.phone = phone;
        this.password = password;
    }
 public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullname;
    }

    public void setFullName(String fullname) {
        this.fullname = fullname;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
public String getError()
{ 
return error;     
}
public boolean validate()
{
boolean res=true; 
 try {
        LocalDate birthDate = LocalDate.parse(dob);
        LocalDate currentDate = LocalDate.now();
        int age = Period.between(birthDate, currentDate).getYears();
        if (age < 18 || age > 99) {
       error = "<p class='error-message'>Invalid Age</p>";
            res = false;
        }
    } catch (DateTimeParseException e) {
       
        res = false;
    }

    return res;
}
}
