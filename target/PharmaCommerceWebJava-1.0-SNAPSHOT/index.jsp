
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="static/css/estilos.css">
    <script src="static/js/script.js"></script>
    <title>PharmaCommerce</title>

    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/bootstrap.bundle.min.js"></script>

</head>


<header>

<nav class="navbar navbar-expand-lg bg-light" style="height: 80px; color: black;">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp" style="font-weight: bold; font-size: 20px; color: rgba(4, 228, 228, 0.795);">
            <img src="imagenes/LogoPharmaCommerce.png" style="width: 70px; padding-bottom: 10px"> PharmaCommerce
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
                        <li><a class="dropdown-item"  href="productos.jsp">Productos 🛒</a></li>
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
    <h1 class="nombre-pagina">¡Bienvenido a PharmaCommerce!</h1>
    <main>
        <section class="bienvenida">
            <p>Estamos encantados de tenerte como parte de nuestra comunidad en PharmaCommerce. Aquí, encontrarás todas las herramientas y recursos que necesitas para optimizar la gestión de tu farmacia y hacer que tu negocio sea más eficiente y rentable.</p>
            <p>Nuestra misión es brindarte el apoyo que necesitas para ofrecer un servicio excepcional a tus clientes y garantizar la distribución segura de medicamentos. Explora nuestras funciones innovadoras y descubre cómo podemos ayudarte a alcanzar el éxito en el mundo de la farmacia.</p>
            <p>Si tienes alguna pregunta o necesitas asistencia, no dudes en contactarnos. Estamos aquí para ayudarte en cada paso del camino.</p>
            <p>¡Gracias por elegir PharmaCommerce y bienvenido a una experiencia farmacéutica mejorada!</p>
            <br>
        </section>
    </main>

<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel" data-bs-interval="4000">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="imagenes/Imagen1.PNG" class="d-block mx-auto img-fluid" style="max-width: 400px; box-shadow: 5px 5px 10px black;" alt="...">
        </div>
        <div class="carousel-item">
            <img src="imagenes/Imagen3.PNG" class="d-block mx-auto img-fluid" style="max-width: 400px; box-shadow: 5px 5px 10px black" alt="...">
        </div>
        <div class="carousel-item">
            <img src="imagenes/Imagen4.PNG" class="d-block mx-auto img-fluid" style="max-width: 400px; box-shadow: 5px 5px 10px black" alt="...">
        </div>
    </div>
</div>

</body>

<footer class="bg-light mt-5">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <p>&copy; 2024 PharmaCommerce. Todos los derechos reservados.</p>
            </div>
        </div>
    </div>
</footer>

</html>


