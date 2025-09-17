package ar.edu.unq.po2.tp3;

import java.util.ArrayList;
import java.util.List;

public class EquipoDeTrabajo {

	private String nombre;
	private List<Persona> integrantes;
	
	public EquipoDeTrabajo(String nombre) {
		this.nombre = nombre;
		this.integrantes = new ArrayList<Persona>();
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public void agregarIntegrante(Persona persona) {
		integrantes.add(persona);
	}
	
	public int getPromedioEdadInts() {
		int suma = 0; 
		for (Persona i : integrantes) {
			suma += i.getEdad();
		}
		return (suma / integrantes.size());
	}
	
}
