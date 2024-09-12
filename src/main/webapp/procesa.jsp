<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/assets/html/head.jsp" %>

<%
    // Recibir los datos del formulario enviados desde index.jsp
    String idHabitacion = request.getParameter("idhabitacion");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String email = request.getParameter("email");
    String medioPago = request.getParameter("medio_pago");
    String dias = request.getParameter("dias");
    String fechaEntrada = request.getParameter("fecha_entrada");

    // Comprobar que todos los datos han sido enviados
    if (idHabitacion == null || nombre == null || apellido == null || email == null || medioPago == null || dias == null || fechaEntrada == null) {
        out.println("<h2>Error: No se han recibido todos los datos del formulario.</h2>");
        return;
    }

    // Convertir "dias" a entero
    int diasReserva = Integer.parseInt(dias);

    // Calcular el valor total dependiendo de la habitación seleccionada
    int valorTotal = 0;
    String nombreHabitacion = "";
    switch (idHabitacion) {
        case "1": 
            valorTotal = 10000 * diasReserva;
            nombreHabitacion = "Habitación 1, Simple";
            break;
        case "2": 
            valorTotal = 20000 * diasReserva;
            nombreHabitacion = "Habitación 2, Doble - Simple";
            break;
        case "3": 
            valorTotal = 30000 * diasReserva;
            nombreHabitacion = "Habitación 3, Doble - Normal";
            break;
        case "4": 
            valorTotal = 40000 * diasReserva;
            nombreHabitacion = "Habitación 4, Doble - King";
            break;
        case "5": 
            valorTotal = 50000 * diasReserva;
            nombreHabitacion = "Habitación 5, Doble - King";
            break;
        case "6": 
            valorTotal = 60000 * diasReserva;
            nombreHabitacion = "Habitación 6, Doble - King";
            break;
        case "7": 
            valorTotal = 70000 * diasReserva;
            nombreHabitacion = "Habitación 7, Doble - King";
            break;
        case "8": 
            valorTotal = 80000 * diasReserva;
            nombreHabitacion = "Habitación 8, Doble - King";
            break;
        default:
            out.println("<h2>Error: Habitación no válida.</h2>");
            return;
    }
%>

<h2>Detalle Solicitud Habitación: <strong><%= nombreHabitacion %></strong></h2>

<table class="table">
    <thead>
        <tr>
            <th>#</th>
            <th>Item</th>
            <th>Valor</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Nombre</td>
            <td><%= nombre %></td>
        </tr>
        <tr>
            <td>2</td>
            <td>Apellido</td>
            <td><%= apellido %></td>
        </tr>
        <tr>
            <td>3</td>
            <td>Email</td>
            <td><%= email %></td>
        </tr>
        <tr>
            <td>4</td>
            <td>Medio de Pago</td>
            <td><%= medioPago %></td>
        </tr>
        <tr>
            <td>5</td>
            <td>Días de Reserva</td>
            <td><%= diasReserva %></td>
        </tr>
        <tr>
            <td>6</td>
            <td>Fecha de Entrada</td>
            <td><%= fechaEntrada %></td>
        </tr>
        <tr>
            <td>7</td>
            <td>Valor Total a Pagar</td>
            <td>CL$ <%= valorTotal %></td>
        </tr>
    </tbody>
</table>

<%@ include file="/assets/html/footer.jsp" %>
