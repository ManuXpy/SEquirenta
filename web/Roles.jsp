<%-- 
    Document   : Roles
    Created on : 30 oct 2025, 7:04:38 p.m.
    Author     : !mX ***Made on Earth by Humans***
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <%
        HttpSession sessionActiva = request.getSession();
        if (sessionActiva.getAttribute("sessionON") == null) {
            response.sendRedirect("/Sequirenta/Login.jsp");
            return;
        }
    %>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Controlamos el tiempo de la Session -->
        <meta http-equiv="refresh" content="<%= session.getMaxInactiveInterval()%>;url=SeesionOFF.jsp">

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
            <h1>Panel principal</h1>
            <p>Este sidebar ya no superpone los textos al colapsarse. Solo quedan visibles los íconos.</p>
        </div>

        <!-- Bootstrap Bundle with Popper -->
        <script src="Recursos/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

