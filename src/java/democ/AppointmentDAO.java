package democ;
import java.sql.*;
import democ.Appointment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class AppointmentDAO {
    private Connection conn;

    public AppointmentDAO(Connection conn) {
        this.conn = conn;
    }

    public boolean addAppointment(Appointment ap) {
        boolean f = false;
        try {
            String query = "INSERT INTO appointment(fullname, gender, age, appoint_date, email, phone, diseases, doctor, address) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, ap.getFullname());
            pstmt.setString(2, ap.getGender());
            pstmt.setString(3, ap.getAge());
            pstmt.setString(4, ap.getAppointDate());
            pstmt.setString(5, ap.getEmail());
            pstmt.setString(6, ap.getPhno());
            pstmt.setString(7, ap.getDiseases());
            pstmt.setString(8, ap.getDoctor());
            pstmt.setString(9, ap.getAddress());

            int i = pstmt.executeUpdate();
            if (i > 0) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    public List<Appointment> getAllAppointment() throws SQLException {

List<Appointment> list = new ArrayList<Appointment>();
Appointment ap = null;

try {

String sql = "select * from appointment order by id desc";

PreparedStatement ps = conn.prepareStatement(sql);

ResultSet rs = ps.executeQuery();

while (rs.next()) {

ap =new Appointment();

            ap.setFullname(rs.getString(2));  
            ap.setGender(rs.getString(3));
            ap.setAge(rs.getString(4));
            ap.setAppointDate(rs.getString(5));
            ap.setEmail(rs.getString(6));
            ap.setPhno(rs.getString(7));
            ap.setDiseases(rs.getString(8));
            ap.setDoctor(rs.getString(9));
            ap.setAddress(rs.getString(10));
list.add(ap);

}


        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
