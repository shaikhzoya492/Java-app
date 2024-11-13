
package democ;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.ServletException;
import java.io.IOException;

public class DoctorLogout extends HttpServlet {
    protected void service(HttpServletRequest req,HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session=req.getSession();
        session.removeAttribute("doctorObj");
        session.setAttribute("sucMsg","Logout Successfully");
                resp.sendRedirect("doctorlogin.jsp");
    }
}
