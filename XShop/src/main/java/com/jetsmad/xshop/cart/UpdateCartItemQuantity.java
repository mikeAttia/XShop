/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jetsmad.xshop.cart;

import com.jetsmad.xshop.util.beans.CartItem;
import com.jetsmad.xshop.util.beans.Product;
import com.jetsmad.xshop.util.beans.Constants;
import com.jetsmad.xshop.util.database.DBController;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author michael
 */
@WebServlet(name = "UpdateCartItemQuantity", urlPatterns = {"/updatecartitemquantity"})
public class UpdateCartItemQuantity extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

//        Servlet called with AJAX that does the following:
//        1. gets Product ID from request
//        2. gets action (increase or decrease) from request
//        3. if increase -> check stock -> update item on session -> reply with "true" or "false"
//        4. if decrease -> update item on session -> reply with "true"
        PrintWriter out = response.getWriter();
        //String productId = request.getAttribute("productId").toString();
        //String action = request.getAttribute("action").toString();
        String productId = request.getParameter("productId");
        String action = request.getParameter("action");
        
        System.out.println(productId + " and " + action);
        
        HttpSession session = request.getSession(true);
        if(productId != null && action != null && session != null){
            DBController dbc = new DBController();
            Product product = dbc.getProduct(productId);
            int newStock;
            ArrayList<CartItem> cartItems = (ArrayList<CartItem>) session.getAttribute(Constants.CART_ITEMS);
            if(action.equals("increase")){
                System.out.println("here increase >><< ");
                if(product.getStock() >= 1){
                    for(CartItem item:cartItems){
                        if(item.getProduct().getId().equals(productId)){
                            item.addOne();
                            newStock = product.getStock() - 1;
                            product.setStock(newStock);
                            //out.write("true");
                            RequestDispatcher rd = request.getRequestDispatcher("clientviews/basket.jsp");
                            rd.include(request, response);
                        }
                    }
                }else{
                    out.write("false");
                }
            }
            if(action.equals("decrease")){
                System.out.println("----------------------- decrease");
                for(CartItem item:cartItems){
                    if(item.getProduct().getId().equals(productId)){
                        if(item.removeOne()){
                            newStock = product.getStock() + 1;
                            product.setStock(newStock);
                            System.out.println("--------------------success decrease");
                            //out.write("True");
                            RequestDispatcher rd = request.getRequestDispatcher("clientviews/basket.jsp");
                            rd.include(request, response);
                            
                        }else{
                            System.out.println("----------------------returning false");
                            out.write("false");
                        }
                    }
                }
            }
            dbc.updateProduct(product);
            session.setAttribute(Constants.CART_ITEMS, cartItems);
        }else{
            out.write("false");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
