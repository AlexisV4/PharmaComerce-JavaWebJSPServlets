
<%@page import="java.util.List"%>
<%@page import="logica.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Productos</title>
    </head>
    <body>
        <h1>LISTA DE PRODUCTOS REGISTRADOS</h1>
        
        <% 
            List<Producto> listaProductos = (List) request.getSession().getAttribute("listaProductos");
            int cont = 1;
            for(Producto produ : listaProductos){
        %>
        
                <p><b>Producto N°<%=cont%></b></p>
                <p>ID Producto: <%=produ.getId_producto()%> </p>
                <p>Nombre: <%=produ.getNombre()%></p>
                <p>Descripción: <%=produ.getDescripcion()%></p>
                <p>Precio Venta: <%=produ.getPrecio_venta()%></p>
                <p>ID Proveedor: <%=produ.getId_proveedor()%></p>
                <p>Stock: <%=produ.getStock()%></p>
                <p>Fecha Vencimiento: <%=produ.getFecha_vencimiento()%></p>
                <p>ID Categoría: <%=produ.getId_categoria()%></p>
                <p>--------------------------------------------</p>
                
                <%cont = cont + 1;%>
        
        <% } %>
    </body>
</html>
