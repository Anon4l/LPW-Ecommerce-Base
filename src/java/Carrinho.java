/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelos.Produto;


/**
 *
 * @author JUFABRAND
 */
@WebServlet(urlPatterns = {"/Carrinho"})
public class Carrinho extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        int item = Integer.parseInt(request.getParameter("add")); // Transforma em int a variavel P
      
        Produto cartItem = Produto.lista.get(item);     // pega o objeto numero P do carrinhho
    
        HttpSession session=request.getSession();      // pega a sessão no servlet
      
       session.setAttribute("Carrinho",cartItem);      // Coloca o objeto numero P no atributo Carrinho da sessão
        PrintWriter out = response.getWriter();
        out.println(item);
        
       
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
