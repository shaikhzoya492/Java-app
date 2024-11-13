
package democ;
import democ.DoctorDAO;
import democ.DBConnect;
import democ.Doctor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Add extends HttpServlet {

 
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // Retrieve form parameters
        String fullname = request.getParameter("fullname");
        String dob = request.getParameter("dob");
        String qualification = request.getParameter("qualification");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        // Create an Appointment object
        Doctor ad = new Doctor(fullname, dob, qualification, email, phone, password);

        // Create AppointmentDAO with a database connection
        DoctorDAO dao = new DoctorDAO(DBConnect.getConn());

        HttpSession session = request.getSession();

        // Add appointment to the database
        if (dao.registerDoctor(ad)) {
            session.setAttribute("succMsg", " Successful");
            response.sendRedirect("doctor.jsp");
            
        } else {
           session.setAttribute("errorMsg", "Something Went Wrong");
            response.sendRedirect("doctor.jsp");
        }
        
    }

}
