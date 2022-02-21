package com.login.controller;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;


import com.login.bean.LoginBean;
import com.login.dao.LoginDao;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
 
public LoginServlet() {
}
 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
    String username = request.getParameter("username");
    String password = request.getParameter("password");
 
    LoginBean loginBean = new LoginBean();
 
    loginBean.setUsername(username);
    loginBean.setPassword(password);
 
    LoginDao loginDao = new LoginDao();
 
    try
    {
        String userValidate = loginDao.authenticateUser(loginBean);
 
        if(userValidate.equals("Doctor"))
        {
            System.out.println("Doctor's Home");
 
            HttpSession session = request.getSession(); //Creating a session
            session.setAttribute("Doctor", username); //setting session attribute
            request.setAttribute("username", username);
 
            request.getRequestDispatcher("master-admin.jsp").forward(request, response);
        }
        else if(userValidate.equals("Secretary"))
        {
            System.out.println("Secretary's Home");
 
            HttpSession session = request.getSession();
            session.setAttribute("Secretary", username);
            request.setAttribute("username", username);
 
            request.getRequestDispatcher("Secretary-Homepage.jsp").forward(request, response);
        }
        else if(userValidate.equals("Client"))
        {
            System.out.println("Client's Home");
 
            HttpSession session = request.getSession();
            session.setMaxInactiveInterval(10*60);
            session.setAttribute("Client", username);
            request.setAttribute("username", username);
 
            request.getRequestDispatcher("index2.html").forward(request, response);
        }
        else
        {
            System.out.println("Error message = "+userValidate);
            request.setAttribute("errMessage", userValidate);
 
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
    catch (IOException e1)
    {
        e1.printStackTrace();
    }
    catch (Exception e2)
    {
        e2.printStackTrace();
    }
} //End of doPost()
}