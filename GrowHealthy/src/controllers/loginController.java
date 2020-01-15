package controllers;


import java.beans.PersistenceDelegate;

import java.io.IOException;  

import java.io.PrintWriter;  
  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import login.Validate;
import persistence.DBManager;

//@WebServlet("/login")
public class loginController extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
	response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String n=request.getParameter("email");  
    String p=request.getParameter("password");  
     
    if(DBManager.getInstance().autenticazione(n, p)){  
       // RequestDispatcher rd=request.getRequestDispatcher("/welcome");  
       // rd.forward(request,response);  
    }  
    else{  
        out.print("Sorry email or password error");  
       // RequestDispatcher rd=request.getRequestDispatcher("index.html");  
        //rd.include(request,response);  
    }  
          
    out.close();  
    }  
}  
