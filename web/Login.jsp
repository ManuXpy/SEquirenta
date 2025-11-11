<%-- 
    Document   : newjsp
    Created on : 20 oct 2025, 12:48:22 a.m.
    Author     : !mX ***Made on Earth by Humans***
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="Recursos/css/bootstrap.min.css">
        <link rel="stylesheet" href="Recursos/bootstrap-icons-1.13.1/bootstrap-icons.css">

        <title>Login - SEquirenta</title>
    </head>
    <body>
        <style>
            body {
                background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
                    url('Recursos/img/ImagenFondo.jpg') center/cover no-repeat;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .card {
                background-color: rgba(255, 255, 255, 0.9);
                border-radius: 16px;
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
                width: 100%;
                max-width: 400px;
                padding: 2rem;
            }

            .form-control {
                border-radius: 10px;
            }

            .btn-primary {
                border-radius: 10px;
            }
        </style>

        <div class="login-card text-center">
            <img style="margin:0px auto;display:block" src="Recursos/img/LogoEquiRenta.png"/>
            <div class="card text-center">
                <h3 class="mb-4">Iniciar Sesión</h3>
                <form action="AccesoSERVLET" method="POST">
                    <div class="mb-3">
                        <input type="text" class="form-control" name="imputUsuario" placeholder="Usuario">
                    </div>
                    <div class="mb-3">
                        <input type="password" class="form-control" name="imputPassword" placeholder="Contraseña">
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Entrar</button>
                </form>
            </div>
        </div>                            
        <!-- Optional JavaScript; choose one of the two! -->
        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="Recursos/js/bootstrap.bundle.min.js"></script>
    </body>
</html>