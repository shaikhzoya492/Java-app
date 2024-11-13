package democ;
import java.sql.*;
import democ.Doctor;
import java.util.ArrayList;
import java.util.List;

public class DoctorDAO{
    private Connection conn;
    
    public DoctorDAO(Connection conn){
        super();
        this.conn=conn;
        
    }
    public boolean registerDoctor(Doctor d){
        boolean f=false;
        
        try{
            String sql="insert into doctor(fullname,dob,qualification,email,phone,password ) values(?,?,?,?,?,?)";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1,d.getFullName());
            ps.setString(2,d.getDob());
            ps.setString(3,d.getQualification());
            ps.setString(4,d.getEmail());
            ps.setString(5,d.getPhone());
            ps.setString(6,d.getPassword());
            
            int i=ps.executeUpdate();
            if(i==1){
                f=true;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return f;
    }
     public List<Doctor> getAllDoctor() throws SQLException {

List<Doctor> list = new ArrayList<Doctor>();
Doctor ap = null;

try {

String sql = "select * from doctor order by id desc";

PreparedStatement ps = conn.prepareStatement(sql);

ResultSet rs = ps.executeQuery();

while (rs.next()) {

ap =new Doctor();

            ap.setFullName(rs.getString(2));  
            ap.setDob(rs.getString(3));
            ap.setQualification(rs.getString(4));
            ap.setEmail(rs.getString(5));
            ap.setPhone(rs.getString(6));
            ap.setPassword(rs.getString(7));
          
list.add(ap);

}


        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public Doctor login(String em, String psw) {

Doctor u = null;

try {

String sql = "select * from doctor where email=? and password=?";

PreparedStatement ps = conn.prepareStatement(sql);

ps.setString(1, em);

ps.setString(2, psw);

ResultSet rs = ps.executeQuery();

while (rs.next()) {

u = new Doctor();


u.setFullName(rs.getString(2));  
u.setDob(rs.getString(3));
u.setQualification(rs.getString(4));
u.setEmail(rs.getString(5));
u.setPhone(rs.getString(6));
u.setPassword(rs.getString(7));
}

} catch (Exception e) {

e.printStackTrace();

}

return u;
    }
}