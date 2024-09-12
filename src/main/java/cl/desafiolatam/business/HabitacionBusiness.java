package cl.desafiolatam.business;

import cl.desafiolatam.model.Habitacion;
import java.util.ArrayList;
import java.util.List;

public class HabitacionBusiness {

    // Método para obtener una lista de habitaciones predefinidas
    public List<Habitacion> obtenerHabitaciones() {
        List<Habitacion> habitaciones = new ArrayList<>();
        habitaciones.add(new Habitacion(1, "Habitación Deluxe", "Con vista al mar", "deluxe.jpg", 80000, 2, 30));
        habitaciones.add(new Habitacion(2, "Habitación Estándar", "Con vista a la ciudad", "estandar.jpg", 50000, 1, 20));
        return habitaciones;
    }
}
