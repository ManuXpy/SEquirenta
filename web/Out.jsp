<%-- 
    Document   : Out
    Created on : 1 nov 2025, 9:42:37 p.m.
    Author     : !mX ***Made on Earth by Humans***
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <%session.invalidate();%>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="Recursos/css/bootstrap.min.css">
        <link rel="stylesheet" href="Recursos/bootstrap-icons-1.13.1/bootstrap-icons.css">
        <script language="JavaScript">
            function redireccionar() {
                setTimeout("location.href='http:Login.jsp'", 2000);
            }
        </script>
        <style>
            body section {
                margin-top: 100px;
                margin-left: auto;
                margin-right: auto;
                max-width: 600px;
            }
        </style>
        <title>Saliendo</title>
    </head>
    <body onLoad="redireccionar()">
        <!-- Contenido principal -->
        <div>
            <section>
                <div class="alert alert-success text-center" role="alert">
                    <strong>Atención!</strong> Te has desconectado.
                </div>
            </section>
        </div>

        <!-- Bootstrap Bundle with Popper -->
        <script src="Recursos/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
