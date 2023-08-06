package com.example.log4shell;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;



//import com.sun.deploy.net.HttpRequest;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


@WebServlet(name = "loginServlet", value = "/login")
public class LoginServlet extends HttpServlet { 
    

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String userName = req.getParameter("username");
        String password = req.getParameter("password");

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<html><head>");
        
        // Inline CSS styles
        out.println("<style>");
        out.println("ul { list-style-type: none; margin: 0; padding: 0; overflow: hidden; background-color: blue;}");
        out.println("li { float: left; }");
        out.println("li a { display: block; color: white; text-align: center; padding: 14px 16px; text-decoration: none;}");
        out.println("li a:hover { background-color: black; }");
        out.println("</style>");
        
        out.println("</head><body>");
        
        
        
        out.println("<html><body>");

         // Include the navbar HTML code here
        out.println("<ul>");
        out.println("<li><a href=\"about.jsp\">About</a></li>");
        out.println("<li><a href=\"contact.jsp\">Contact</a></li>");
        out.println("<li><a href=\"shop.jsp\">Shop</a></li>");
        out.println("</ul>");
        
 

        
        if(userName.equals("admin") && password.equals("password")){
            out.println("Welcome Back Admin, Happy shopping!");
        }
        else{
        

            // vulnerable code
            Logger logger = LogManager.getLogger(com.example.log4shell.log4j.class);
            logger.error(userName);

            out.println("<code> the password you entered was invalid, <u> we will log your information </u> </code>");
        }
        
               out.println("</body></html>");

    }
    
    

    public void destroy() {
    }
}