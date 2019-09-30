/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package toba.customer;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import toba.data.userDB;

/**
 *
 * @author naden
 */
public class RegistrationServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/new_customer.jsp";
        
            //get current action
            String action = request.getParameter("action");
            if (action == null){
                action = "join"; // default cust
            }
             // perform action and set url
             if (action.equals("join")){
                 url = "/new_customer.jsp";
             }
             else if (action.equals("add")){    
                 String username = request.getParameter("Username");
                 String password = request.getParameter("Password");
                 String firstName = request.getParameter("FirstName");
                 String lastName = request.getParameter("LastName");
                 String phone = request.getParameter("Phone");
                 String address = request.getParameter("Address");
                 String city = request.getParameter("City");
                 String state = request.getParameter("State");
                 String zipcode = request.getParameter("Zipcode");
                 String email = request.getParameter("Email");
                 
                HttpSession session = request.getSession();       
                
                //Store data in User object
                Customer user = new Customer(firstName, lastName, phone, address, city, state, zipcode, email);
                session.setAttribute("user", user);
                
               // insert user
               userDB.insert(user);
               
                //set user object and set url
               request.setAttribute("user", user);
               url = "/success.jsp";
               
               if (action.equals("submit")){
                    request.setAttribute("password", user);
                    url = "/account_activity.jsp";
                }
                                          
            // forward request
            getServletContext()
                .getRequestDispatcher(url)
                .forward(request,response);
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
