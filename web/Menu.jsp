<%-- 
    Document   : menu
    Created on : 20 oct 2025, 9:30:29?p.m.
    Author     : !mX ***Made on Earth by Humans***
--%>

<!-- Botón para colapsar el sidebar -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="Recursos/css/menu.css">
<button class="btn btn-dark btn-toggle" id="toggleBtn">
    ☰
</button>

<!-- Sidebar -->
<div class="sidebar" id="sidebar">
    <div class="logo">
        <span>SEquirenta</span>
    </div>
    <nav class="nav small flex-column">
        <a class="nav-link" href="Index.jsp"><i class="bi bi-house-door-fill"></i><span>Inicio</span></a>

        <!-- Compras -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> <i class="bi bi-cart3"></i><span>Compras</span></a>
            <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item" href="#">Solicitudes de Compras</a></li>
                <li><a class="dropdown-item" href="#">Presupuesto de Proveedor</a></li>
                <li><a class="dropdown-item" href="#">Orden de compras</a></li>
                <li><a class="dropdown-item" href="#">Notas de Remisión</a></li>
                <li><a class="dropdown-item" href="#">Factura de Compras</a></li>
                <li><a class="dropdown-item" href="#">Ajustes de stock</a></li>
                <li><a class="dropdown-item" href="#">Nota de Crédito y débitos</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Informes</a></li>
            </ul>
        </li>

        <!-- Alquiler -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> <i class="bi bi-person-circle"></i><span>Alquiler</span></a>
            <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item" href="#">Equipos y Pedidos</a></li>
                <li><a class="dropdown-item" href="#">Disponibilidad</a></li>
                <li><a class="dropdown-item" href="#">Presupuesto Clientes</a></li>
                <li><a class="dropdown-item" href="#">Orden de Trabajo</a></li>
                <li><a class="dropdown-item" href="#">Nota de Servicios</a></li>
                <li><a class="dropdown-item" href="#">Verificación de recepción</a></li>
                <li><a class="dropdown-item" href="#">Promociones y Descuentos</a></li>
                <li><a class="dropdown-item" href="#">Reclamos</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Informes</a></li>
            </ul>
        </li>

        <!-- Accesos -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> <i class="bi-universal-access"></i><span>Accesos</span></a>
            <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item" href="Perfiles.jsp">Perfiles</a></li>
                <li><a class="dropdown-item" href="Roles.jsp">Roles</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Informes</a></li>
            </ul>
        </li>
        <a class="nav-link text-danger" href="Out.jsp"><i class="bi bi-box-arrow-right"></i><span>Salir</span></a>
    </nav>
</div>

<script>
    const toggleBtn = document.getElementById('toggleBtn');
    const sidebar = document.getElementById('sidebar');

    toggleBtn.addEventListener('click', () => {
        sidebar.classList.toggle('collapsed');
    });
</script>