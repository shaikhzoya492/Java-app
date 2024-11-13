package democ;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import democ.UserDAO;
import democ.DBConnect;
import democ.User;
import javax.servlet.http.HttpSession;

public class UserRagister extends HttpServlet {

protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
{
        try{
           String fullName=req.getParameter("fullname");
           String email=req.getParameter("email");
           String phone=req.getParameter("phone");
           String password=req.getParameter("password");
           
           User u=new User(fullName,email,phone,password);
           UserDAO dao=new UserDAO(DBConnect.getConn());
           
           HttpSession session=req.getSession();
           
           boolean f=dao.register(u);
           
           if(f)
           {
               session.setAttribute("sucMsg","Registered Successfully");  
               resp.sendRedirect("signup.jsp");
           }
           else{
               session.setAttribute("errorMsg","Somthing Went Wrong");  
               resp.sendRedirect("signup.jsp");
           }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
}