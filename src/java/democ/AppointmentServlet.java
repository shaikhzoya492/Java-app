package democ;

import democ.AppointmentDAO;
import democ.DBConnect;
import democ.Appointment;
import java.io.IOException;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AppointmentServlet extends HttpServlet {

    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        // Retrieve form parameters
        String fullname = req.getParameter("fullname");
        String gender = req.getParameter("gender");
        String age = req.getParameter("age");
        String appointDate = req.getParameter("appoindate");
        String email = req.getParameter("email");
        String phno = req.getParameter("phno");
        String diseases = req.getParameter("diseases");
        String doctor = req.getParameter("doctor");
        String address = req.getParameter("address");

        // Create an Appointment object
        Appointment ap = new Appointment(fullname, gender, age, appointDate, email, phno, diseases, doctor, address);

        // Create AppointmentDAO with a database connection
        AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());

        HttpSession session = req.getSession();

        // Add appointment to the database
        if (dao.addAppointment(ap)) {
            session.setAttribute("succMsg", "Appointment Successful");
            resp.sendRedirect("appointment.jsp");
            
        } else {
           session.setAttribute("errorMsg", "Something Went Wrong");
            resp.sendRedirect("appointment.jsp");
        }
    }
}
