package ar.edu.unq.po2.tp3;

import java.time.LocalDate;
import java.time.Period;

public class Persona {

	private String nombre;
	private LocalDate fechaDeNacimiento;
	private String apellido;
	
	public Persona(String nombre, String apellido, LocalDate fechaDeNacimiento) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.fechaDeNacimiento = fechaDeNacimiento;
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public String getApellido() {
		return apellido;
	}
	
	public LocalDate getFechaDeNacimiento() {
		return fechaDeNacimiento;
	}
	
	public int getEdad() {
        LocalDate hoy = LocalDate.now();
        return Period.between(fechaDeNacimiento, hoy).getYears();
    }
	
	/**
	1. Responder: Si un objeto cualquiera que le pide la edad a una Persona: ¿Conoce cómo ésta calcula u
 	obtiene tal valor? ¿Cómo se llama el mecanismo de abstracción que permite esto?
 	
 	No, no lo conoce, ya que hay encapsulamiento, cómo implementa un mensaje una clase no se muestra, esta abstraído.

	 */
	
	public boolean menorQue(Persona persona) {
		return (getEdad() > persona.getEdad());
	}
	
	/**
	public static Persona crear(String nombre, Date fechaNacimiento) {
	    return new Persona(nombre, fechaNacimiento);
	}
	
	Esto es lo que me pide el punto 3? No entiendo bien que es un metodo de clase
	
	*/
}






