<%-- 
    Document   : Usuarios
    Created on : 3 nov 2025, 8:04:04 p.m.
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
            <!-- Inicio Cuerpo -->
            <!-- CAMBIO 1: Usamos container-fluid para ocupar el 100% del ancho de la vista -->
            <div class="container-fluid py-4"> 
                <div class="row"> 
                    <!-- CAMBIO 2: Usamos col-12 para que ocupe todo el ancho disponible en el row -->
                    <div class="col-12"> 
                        <!-- Título más formal y alineado a la izquierda para un sistema -->
                        <h2 class="mb-4 text-dark fw-bold border-bottom pb-2">Gestión de Cuentas de Usuario</h2>
                        <p class="mb-4 text-muted">Utilice este formulario para dar de alta, modificar o dar de baja a usuarios existentes en el sistema.</p>
                        <form id="registrationForm" class="needs-validation p-4 rounded-3 bg-white" novalidate> 

                            <!-- Campo: Nombre de Usuario -->
                            <div class="mb-4">
                                <label for="username" class="form-label fw-semibold">Nombre de Usuario</label>
                                <input type="text" 
                                       class="form-control" 
                                       id="username" 
                                       placeholder="Ej: user123 (requerido)" 
                                       required 
                                       minlength="4"
                                       maxlength="20">
                                <div class="invalid-feedback">
                                    Por favor, introduce un nombre de usuario (mínimo 4 caracteres).
                                </div>
                                <div class="valid-feedback">
                                    ¡Nombre de usuario válido!
                                </div>
                            </div>

                            <!-- Campo: Correo Electrónico -->
                            <div class="mb-4">
                                <label for="email" class="form-label fw-semibold">Correo Electrónico</label>
                                <input type="email" 
                                       class="form-control" 
                                       id="email" 
                                       placeholder="nombre@ejemplo.com (requerido)" 
                                       required>
                                <div class="invalid-feedback">
                                    Por favor, introduce un correo electrónico válido.
                                </div>
                                <div class="valid-feedback">
                                    ¡Correo electrónico válido!
                                </div>
                            </div>

                            <!-- Campo: Contraseña -->
                            <div class="mb-5">
                                <label for="password" class="form-label fw-semibold">Contraseña Temporal</label>
                                <input type="password" 
                                       class="form-control" 
                                       id="password" 
                                       required 
                                       minlength="8">
                                <div class="invalid-feedback">
                                    La contraseña debe tener al menos 8 caracteres.
                                </div>
                                <div class="valid-feedback">
                                    Contraseña aceptada.
                                </div>
                            </div>

                            <!-- Botones de Acción: Alineados a la derecha y en línea -->
                            <!-- Se ha añadido la clase btn-action-fixed para un ancho uniforme -->
                            <div class="d-flex justify-content-end gap-2">
                                <button class="btn btn-success fw-bold btn-action-fixed" type="submit" id="btnAlta">
                                    Alta
                                </button>
                                <button class="btn btn-warning text-dark fw-bold btn-action-fixed" type="button" id="btnModificar">
                                    Modificar
                                </button>
                                <button class="btn btn-danger fw-bold btn-action-fixed" type="button" id="btnBaja">
                                    Baja
                                </button>
                            </div>

                            <!-- Mensaje de éxito (oculto inicialmente) -->
                            <div id="successMessage" class="alert alert-success mt-4 d-none" role="alert">
                                ¡Operación realizada con éxito!
                            </div>

                            <!-- Mensaje de error (oculto inicialmente) -->
                            <div id="errorMessage" class="alert alert-danger mt-4 d-none" role="alert">
                                Error de validación: Por favor, revisa los campos marcados en rojo.
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap Bundle with Popper -->
        <script src="Recursos/js/bootstrap.bundle.min.js"></script>
        <script src="Recursos/JSvalidaciones/Perfiles.js"></script>

    </body>
</html>
