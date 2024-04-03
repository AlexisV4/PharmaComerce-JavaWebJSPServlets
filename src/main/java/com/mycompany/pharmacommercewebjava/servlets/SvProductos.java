/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.pharmacommercewebjava.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Producto;


@WebServlet(name = "SvProductos", urlPatterns = {"/SvProductos"})
public class SvProductos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Producto> listaProductos = new ArrayList<>();
        listaProductos.add(new Producto("123", "Loratadina", "Antihistamínico", 12500, "90020142", 30, "2024-10-24", "101"));
        listaProductos.add(new Producto("456", "Ibuprofeno", "Multisintomas", 6000, "80010249", 60, "2024-08-10", "101"));
        listaProductos.add(new Producto("789", "Mareol", "Antimareo", 4200, "98744178", 120, "2026-06-22", "101"));
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaProductos", listaProductos);
        
        response.sendRedirect("mostrarProductos.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_producto = request.getParameter("id_producto");
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String precio_venta_str = request.getParameter("precio_venta");
        int precio_venta = Integer.parseInt(precio_venta_str);
        String id_proveedor = request.getParameter("id_proveedor");
        String stock_str = request.getParameter("stock");
        int stock = Integer.parseInt(stock_str);
        String fecha_vencimiento = request.getParameter("fecha_vencimiento");
        String id_categoria = request.getParameter("id_categoria");
       
        
        String mensaje = "El formulario se procesó correctamente.";

        // Establecer el tipo de contenido de la respuesta
        response.setContentType("text/html;charset=UTF-8");

        // Escribir el mensaje y los datos en la respuesta
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Mensaje de confirmación</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Mensaje de confirmación</h1>");
        out.println("<p>" + mensaje + "</p>");
        // Imprimir los datos del formulario
        out.println("<p>ID Producto: " + id_producto + "</p>");
        out.println("<p>Nombre: " + nombre + "</p>");
        out.println("<p>Descripcion: " + descripcion + "</p>");
        out.println("<p>Precio venta: " + precio_venta + "</p>");
        out.println("<p>ID Proveedor: " + id_proveedor + "</p>");
        out.println("<p>Stock: " + stock + "</p>");
        out.println("<p>Fecha vencimiento: " + fecha_vencimiento + "</p>");
        out.println("<p>ID Categoría: " + id_categoria + "</p>");
        out.println("</body>");
        out.println("</html>");

        // Imprimir los datos en la consola del servidor
        System.out.println("ID Producto: " + id_producto);
        System.out.println("Nombre: " + nombre);
        System.out.println("Descripcion: " + descripcion);
        System.out.println("Precio venta: " + precio_venta);
        System.out.println("ID Proveedor: " + id_proveedor);
        System.out.println("Stock: " + stock);
        System.out.println("Fecha vencimiento: " + fecha_vencimiento);
        System.out.println("ID Categoría: " + id_categoria);
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
