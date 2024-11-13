package democ;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AddDoctor extends HttpServlet {

    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
       try{
           String fullname=req.getParameter("fullname");
           String dob=req.getParameter("dob");
           String qualification=req.getParameter("qualification");
           String email=req.getParameter("email");
           String phone=req.getParameter("phone");
           String password=req.getParameter("password");
           
           Doctor d=new Doctor(fullname,dob,qualification,email,phone,password);
           
           DoctorDAO dao=new DoctorDAO(DBConnect.getConn());
           HttpSession session=req.getSession();
           
           if(dao.registerDoctor(d)){
               session.setAttribute("succMsg", "Doctor added successfully!");
                resp.sendRedirect("doctor.jsp");
           }
           else{
                session.setAttribute("errorMsg", "Failed  to add doctor. Please try again.");
                resp.sendRedirect("doctor.jsp"); 
           }
       }
        catch(Exception e){
            e.printStackTrace();
        }
    }

}