
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="static/css/productos.css">
    <title>Productos</title>

    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/bootstrap.bundle.min.js"></script>

    <!--Estas bibliotecas te permiten mostrar un calendario interactivo para seleccionar la fecha y 
        luego puedes formatear la fecha ingresada antes de enviarla al servidor.-->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
        // Función para mostrar la ventana emergente al hacer clic en el botón "Crear Nuevo"
        function crearNuevoProducto() {
            document.getElementById('crearProducto').style.display = 'block';
        }
    </script>

    <script>
        function buscarUnProducto(){
            document.getElementById('buscarProducto').style.display = 'block'
        }
    </script>

    <script>
        function actualizarUnProducto(){
            document.getElementById('actualizarProducto').style.display = 'block'
        }
    </script>

    <script>
        function eliminarUnProducto(){
            document.getElementById('eliminarProducto').style.display = 'block'
        }
    </script>
    
<!--Funcion que convierte la fecha de vencimiento y la pone en el formato yy-mm-dd como lo pide MYSQL-->
    <script>
        $(function() {
        $("#fecha_vencimiento").datepicker({
            dateFormat: 'yy-mm-dd'
        });
        });
    </script>

    <script>
        function cerrarFormulario(idFormulario) {
            var formulario = document.getElementById(idFormulario);
            formulario.style.display = "none";
        }
    </script>


</head>

<header>

<nav class="navbar navbar-expand-lg bg-light" style="height: 80px; color: black;">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp" style="font-weight: bold; font-size: 20px; color: rgba(4, 228, 228, 0.795);">
            <img src="imagenes/LogoPharmaCommerce.png" alt="Logo pagina" style="width: 70px; padding-bottom: 10px"> PharmaCommerce
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation" style="margin-top: 30px">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active font-weight-bold" style="text-decoration: underline; " aria-current="page" href="index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link  font-weight-bold" style="text-decoration: underline; color: black" href="#">Nosotros</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle font-weight-bold" style="text-decoration: underline; color: black;" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
                        Menú
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item"  href="index.jsp">Inicio 🏠</a></li>
                        <li><a class="dropdown-item"  href="productos/productos.html">Productos 🛒</a></li>

                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle font-weight-bold" style= "color: black; text-decoration: underline;" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
                        Mi perfil 🙎🏻‍♂️
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item"  href="index.html">Configuración ⚙️</a></li>
                        <li><a class="dropdown-item"  href="index.html">Editar perfil ✏️</a></li>
                        <li><a class="dropdown-item"  href="index.html">Cerrar sesión ❌</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

</header>

<body>

<main>
    <h1 class="nombre-pagina">Productos 🛒</h1>
    <section class="productos">
        <p>¡Bienvenido a la sección de Productos! Aquí, te ofrecemos las herramientas necesarias para gestionar tu inventario de manera eficiente.
            Ya sea que necesites consultar información detallada sobre tus productos, agregar nuevos artículos a tu catálogo o eliminar productos existentes, esta pestaña es tu punto de partida.</p>
        <br>
    </section>
</main>

<div class="container text-center botones-contenedor">
    <div class="btn-group-vertical botones" role="group" aria-label="Vertical radio toggle button group" style="width: 60%;">
        <a href="#" onclick="crearNuevoProducto()" class="btn btn-outline-primary">Crear</a>
        <a href="#" onclick="buscarUnProducto()" class="btn btn-outline-primary">Buscar</a>

    </div>
</div>

<!-- Ventana emergente -->
<div id="crearProducto" class="crearProducto">
    <a href="#" class="cerrar-formulario" onclick="cerrarFormulario('crearProducto')">&times;</a>
    <h2>Crear Nuevo Producto</h2>
    <form action="SvProductos" method="POST">
        <div class="form-group">
            <label for="id_producto">ID Producto:</label>
            <input type="text" id="id_producto" name="id_producto"> 
        </div>
        <div class="form-group">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre"> 
        </div>
        <div class="form-group">
            <label for="descripcion">Descripción:</label>
            <input type="text" id="descripcion" name="descripcion"> 
        </div>
        <div class="form-group">
            <label for="precio_venta">Precio Venta:</label>
            <input type="number" id="precio_venta" name="precio_venta"> 
        </div>
        <div class="form-group">
            <label for="id_proveedor">ID Proveedor:</label>
            <select class="form-select" aria-label="Default select example" id="id_proveedor" name="id_proveedor">
                <option selected disabled>Seleccione un proveedor</option>
                <option value="900029140" title="Healthy S.A.S">900029140</option>
                <option value="900255182" title="Meditech">900255182</option>
                <option value="3" title="TechnoHealth">3</option>
            </select> 
        </div>
        <div class="form-group">
            <label for="stock">Stock:</label>
            <input type="number" id="stock" name="stock"> 
        </div>
        <div class="form-group">
            <label for="fecha_vencimiento">Vencimiento:</label>
            <input type="text" id="fecha_vencimiento" name="fecha_vencimiento">
        </div>
        <div class="form-group">
            <label for="id_categoria">ID Categoría:</label>
            <select class="form-select" aria-label="Default select example" id="id_categoria" name="id_categoria">
                <option selected disabled>Seleccione la categoría</option>
                <option value="101" title="Tratamiento de la gripe">101</option>
            </select> 
        </div>             
        <div style="text-align: center;">
            <button type="submit" name="guardar_producto" class="btn btn-primary" style="margin: auto; width: 150px; box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);">Crear</button>
        </div>
    </form>
</div>


<div id="buscarProducto" class="buscarProducto">
    <a href="#" class="cerrar-formulario" onclick="cerrarFormulario('buscarProducto')">&times;</a>
    <h2>Buscar Producto</h2>
    <form action="SvProductos" method="GET">
        <div class="form-group">
            <label for="termino_busqueda">GET</label>
        </div>
        <div style="text-align: center;">
            <button type="submit" class="btn btn-primary" style="margin: auto; width: 150px; box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);">Buscar</button>
        </div>
    </form>
</div>


<div id="actualizarProducto" class="actualizarProducto">
    <a href="#" class="cerrar-formulario" onclick="cerrarFormulario('actualizarProducto')">&times;</a>
    <h2>Actualizar Producto</h2>
    <form action="" method="post">
        <div class="form-group">
            <label for="nombre">ID Producto:</label>
            <input type="text" id="nombre" name="nombre" placeholder="ID Producto a actualizar"> 
        </div>
        <div class="form-group">
            <label for="precio">Campo:</label>
            <select class="form-select" aria-label="Default select example" type="text">
                <option selected>Campo a actualizar</option>
                <option value="1">id_producto</option>
                <option value="2">nombre</option>
                <option value="3">descripcion</option>
                <option value="4">precio_venta</option>
                <option value="5">id_proveedor</option>
                <option value="6">stock</option>
                <option value="7">fecha_vencimiento</option>
                <option value="8">id_categoria</option>
            </select> 
        </div>
        <div class="form-group">
            <label for="nombre">Nuevo Valor:</label>
            <input type="text" id="nombre" name="nombre" placeholder="Ingrese el valor nuevo"> 
        </div>
        <div style="text-align: center;">
            <button type="button" class="btn btn-primary" style="margin: auto; width: 150px; box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);">Actualizar</button>
        </div>
    </form>
</div>

<div id="eliminarProducto" class="eliminarProducto">
    <a href="#" class="cerrar-formulario" onclick="cerrarFormulario('eliminarProducto')">&times;</a>
    <h2>Eliminar Producto</h2>
    <form action="" method="post">
        <div class="form-group">
            <label for="precio">ID:</label>
            <select class="form-select" aria-label="Default select example" type="text" id="Proveedor_id_proveedor" name="Proveedor_id_proveedor">
                <option selected>ID Producto a eliminar</option>
                <option value="1" title="Loratadina x10 Capsulas">909189243129</option>
            </select> 
        </div>
        <div style="text-align: center;">
            <button type="button" class="btn btn-primary" style="margin: auto; width: 150px; box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);">Eliminar</button>
        </div>
    </form>
</div>


</body>

<footer class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <p>&copy; 2024 PharmaCommerce. Todos los derechos reservados.</p>
            </div>
        </div>
    </div>
</footer>

</html>
