<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/assets/html/head.jsp" %>
<%@ include file="/assets/html/header.jsp" %>

<div class="container mt-5">
    <h1 class="text-center">Reservas Hotel Sheraton Miramar</h1>
    <h2 class="text-center mb-4">Habitaciones Disponibles</h2>

    <form method="post" action="procesa.jsp">
        <div class="form-group">
            <!-- Mostrar las habitaciones disponibles con radio buttons -->
            <div class="form-check">
                <input class="form-check-input" type="radio" name="idhabitacion" value="1" id="hab1">
                <label class="form-check-label" for="hab1">Habitación 1, Simple - CL$ 10000</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="idhabitacion" value="2" id="hab2">
                <label class="form-check-label" for="hab2">Habitación 2, Doble - Simple - CL$ 20000</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="idhabitacion" value="3" id="hab3">
                <label class="form-check-label" for="hab3">Habitación 3, Doble - Simple - CL$ 30000</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="idhabitacion" value="4" id="hab4">
                <label class="form-check-label" for="hab4">Habitación 4, Doble - King - CL$ 40000</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="idhabitacion" value="5" id="hab5">
                <label class="form-check-label" for="hab5">Habitación 5, Doble - Triple - CL$ 50000</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="idhabitacion" value="6" id="hab6">
                <label class="form-check-label" for="hab6">Habitación 6, Triple - Vista al Mar - CL$ 60000</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="idhabitacion" value="7" id="hab7">
                <label class="form-check-label" for="hab7">Habitación 7, Doble - Cinemático - CL$ 70000</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="idhabitacion" value="8" id="hab8">
                <label class="form-check-label" for="hab8">Habitación 8, Triple - Piscina - CL$ 80000</label>
            </div>
        </div>

        <h2 class="text-center mt-4">Información de Reserva Habitación</h2>
        <div class="form-group">
            <label for="nombre">Nombre:</label>
            <input type="text" class="form-control" id="nombre" name="nombre" required>
        </div>
        <div class="form-group">
            <label for="apellido">Apellido:</label>
            <input type="text" class="form-control" id="apellido" name="apellido" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="medio_pago">Medio Pago:</label>
            <select class="form-control" id="medio_pago" name="medio_pago" required>
                <option value="Contado">Contado</option>
                <option value="Tarjeta">Tarjeta</option>
            </select>
        </div>
        <div class="form-group">
            <label for="dias">Días:</label>
            <select class="form-control" id="dias" name="dias" required>
                <option value="1">1 día</option>
                <option value="2">2 días</option>
            </select>
        </div>
        <div class="form-group">
            <label for="fecha_entrada">Fecha Entrada:</label>
            <input type="date" class="form-control" id="fecha_entrada" name="fecha_entrada" required>
        </div>
        <button type="submit" class="btn btn-primary">Enviar Solicitud de Compra</button>
    </form>
</div>

<%@ include file="/assets/html/footer.jsp" %>
