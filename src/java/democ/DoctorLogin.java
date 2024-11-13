
package democ;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import java.io.IOException;
import democ.Doctor;
import democ.DoctorDAO;
import democ.DBConnect;


public class DoctorLogin extends HttpServlet  {
     protected void service(HttpServletRequest req,HttpServletResponse resp)
            throws ServletException, IOException {
        try{
            
            String email=req.getParameter("email");
            String password=req.getParameter("password");
            
            HttpSession session=req.getSession();
            
            DoctorDAO dao=new DoctorDAO(DBConnect.getConn());
            Doctor user=dao.login(email, password);
            
            if(user!=null){
               
                 session.setAttribute("doctorObj",user);
                resp.sendRedirect("d.jsp");
            }else{
                session.setAttribute("errorMsg","Invalid email & password");
                resp.sendRedirect("doctorlogin.jsp");
            }
        }
         catch(Exception e){
            e.printStackTrace();
        }
    }
}
