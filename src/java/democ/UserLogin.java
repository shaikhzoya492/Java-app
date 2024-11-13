
package democ;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import java.io.IOException;
import democ.User;
import democ.UserDAO;
import democ.DBConnect;


public class UserLogin extends HttpServlet  {
     protected void service(HttpServletRequest req,HttpServletResponse resp)
            throws ServletException, IOException {
        try{
            
            String email=req.getParameter("email");
            String password=req.getParameter("password");
            
            HttpSession session=req.getSession();
            
            UserDAO dao=new UserDAO(DBConnect.getConn());
            User user=dao.login(email, password);
            
            if(user!=null){
               
                 session.setAttribute("userObj",user);
                resp.sendRedirect("index.jsp");
            }else{
                session.setAttribute("errorMsg","Invalid email & password");
                resp.sendRedirect("user_login.jsp");
            }
        }
         catch(Exception e){
            e.printStackTrace();
        }
    }
}
