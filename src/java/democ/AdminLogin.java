
package democ;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import java.io.IOException;


public class AdminLogin extends HttpServlet {
     protected void service(HttpServletRequest req,HttpServletResponse resp)
            throws ServletException, IOException {
        try{
            
            String email=req.getParameter("email");
            String password=req.getParameter("password");
            
            HttpSession session=req.getSession();
            
            if("admin@gmail.com".equals(email) && "admin".equals(password)){
               
                 session.setAttribute("adminObj",new User());
                resp.sendRedirect("adminpage.jsp");
            }else{
                session.setAttribute("errorMsg","Invalid email & password");
                resp.sendRedirect("adminlogin.jsp");
            }
        }
         catch(Exception e){
            e.printStackTrace();
        }
    
}
}