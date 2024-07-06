
package org.luismejia.webapp.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/producto-servlet/")
@MultipartConfig
public class ProductoServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        
        ArrayList<String> producto = new ArrayList<>();
        
        String nombreProducto = req.getParameter("nombreProducto");
        String descrpicionProducto = req.getParameter("descripcionProducto");
        String marcaProducto = req.getParameter("MarcaProducto");
        double precioProducto = Double.parseDouble(req.getParameter("precioProducto"));
        
        producto.add(nombreProducto);
        producto.add(descrpicionProducto);
        producto.add(marcaProducto);
        producto.add(Double.toString(precioProducto));
        
        req.setAttribute("producto", producto);
        getServletContext().getRequestDispatcher("/formulario-productos/formulario-productos.jsp").forward(req, resp);
        
    }
    
}