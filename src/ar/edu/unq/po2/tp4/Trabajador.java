package ar.edu.unq.po2.tp4;

import java.util.ArrayList;
import java.util.List;

public class Trabajador {

	private List<Ingresos> ingresos;
	
	public Trabajador() {
		ingresos = new ArrayList<Ingresos>();
	}
	
	public double getTotalPercibido() {
		double total = 0;
		for(Ingresos i : ingresos) {
			total += i.getMonto();
		}
		return total;
	}
	
	public double getMontoImponible() {
		double total = 0;
		for(Ingresos i : ingresos) {
			total += i.getMontoImponible();
		}
		return total;
	}
	
	public double getImpuestoAPagar() {
		return (getMontoImponible() * 0.02);
	}
	
	public void addIngresos(Ingresos ingresos) {
		this.ingresos.add(ingresos);
	}
}
