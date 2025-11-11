<%-- 
    Document   : Index
    Created on : 20 oct 2025, 6:19:10 p.m.
    Author     : !mX ***Made on Earth by Humans***
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <%
        HttpSession sessionActiva = request.getSession();
        if (sessionActiva.getAttribute("sessionON") == null) {
            response.sendRedirect("/SEquirenta/Login.jsp");
            return;
        }
    %>
    <head>
        <!-- Required meta tags -->
        <meta http-equiv="refresh" content="<%= session.getMaxInactiveInterval()%>;url=SeesionOFF.jsp">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="Recursos/css/bootstrap.min.css">
        <link rel="stylesheet" href="Recursos/bootstrap-icons-1.13.1/bootstrap-icons.css">
        <title>SEquirenta - Index</title>
    </head>
    <body>
        <%@ include file="Menu.jsp"%>
        <!-- Contenido principal -->
        <div class="contenido">
            <%@ include file="Session.jsp"%>

            <!-- Cuadros estadisticas -->
            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4 text-center">
                <!-- Tarjeta 1: Clientes -->
                <div class="col">
                    <div class="card h-100 shadow-sm border-primary rounded-3">
                        <div class="card-header bg-primary text-white border-primary rounded-top-3">
                            <h4 class="my-0 fw-normal">Clientes Registrados</h4>
                        </div>
                        <div class="card-body d-flex flex-column">
                            <h1 class="card-title pricing-card-title display-4 fw-bold mb-3">
                                <span id="CanReg">0</span>
                                <small class="text-muted fw-light align-bottom"> /Clientes</small>
                            </h1>
                            <ul class="list-unstyled mt-3 mb-4 text-start mx-auto">
                                <li>Clientes registrados</li>
                            </ul>
                            <!-- w-100 reemplaza a btn-block -->
                            <a href="#" class="btn btn-lg w-100 btn-outline-primary mt-auto">Ver</a>
                        </div>
                    </div>
                </div>

                <!-- Tarjeta 2: Maquinaria Activa -->
                <div class="col">
                    <div class="card h-100 shadow-sm border-primary rounded-3">
                        <div class="card-header bg-success text-white border-success rounded-top-3">
                            <h4 class="my-0 fw-normal">Maquinaria Activa</h4>
                        </div>
                        <div class="card-body d-flex flex-column">
                            <h1 class="card-title pricing-card-title display-4 fw-bold mb-3">
                                <span id="CanActiv">0</span>
                                <small class="text-muted fw-light align-bottom"> /Maquinas</small>
                            </h1>
                            <ul class="list-unstyled mt-3 mb-4 text-start mx-auto">
                                <li>Maquinarias registradas activas</li>
                            </ul>
                            <a href="registrados.jsp#nav-actv" class="btn btn-lg w-100 btn-outline-success mt-auto">Ver</a>
                        </div>
                    </div>
                </div>

                <!-- Tarjeta 3: Alquileres Activos -->
                <div class="col">
                    <div class="card h-100 shadow-sm border-secondary rounded-3">
                        <div class="card-header bg-secondary text-white border-secondary rounded-top-3">
                            <h4 class="my-0 fw-normal">Alquileres Activos</h4>
                        </div>
                        <div class="card-body d-flex flex-column">
                            <h1 class="card-title pricing-card-title display-4 fw-bold mb-3">
                                <span id="TotalKills">0</span>
                                <small class="text-muted fw-light align-bottom"> /Alquileres</small>
                            </h1>
                            <ul class="list-unstyled mt-3 mb-4 text-start mx-auto">
                                <li>Alquileres Activos</li>
                            </ul>
                            <a href="#" class="btn btn-lg w-100 btn-outline-secondary mt-auto">Ver</a>
                        </div>
                    </div>
                </div>

                <!-- Tarjeta 4: Reclamos -->
                <div class="col">
                    <div class="card h-100 shadow-sm border-info rounded-3">
                        <div class="card-header bg-info text-white border-info rounded-top-3">
                            <h4 class="my-0 fw-normal">Reclamos Activos</h4>
                        </div>
                        <div class="card-body d-flex flex-column">
                            <h1 class="card-title pricing-card-title display-4 fw-bold mb-3">
                                <span id="VIPCount">0</span>
                                <small class="text-muted fw-light align-bottom"> /Reclamos</small>
                            </h1>
                            <ul class="list-unstyled mt-3 mb-4 text-start mx-auto">
                                <li>Reclamos activos</li>
                            </ul>
                            <a href="#" class="btn btn-lg w-100 btn-outline-info mt-auto">Ver</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Fin Cuadros estadisticas -->
            <!-- Inicio Cuerpo -->
            <br><br>
            <h1>Panel principal</h1>
            <p>Este sidebar ya no superpone los textos al colapsarse. Solo quedan visibles los íconos.</p>
        </div>

        <!-- Bootstrap Bundle with Popper -->
        <script src="Recursos/js/bootstrap.bundle.min.js"></script>
    </body>
</html>


