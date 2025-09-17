package ar.edu.unq.po2.tp4;

public class IngresosHorasExtra extends Ingresos{

	private int cantidadHorasExtra;
	
	public IngresosHorasExtra(String mes, String concepto, double monto, int cantidadHorasExtra) {
		super(mes, concepto, monto);
		this.cantidadHorasExtra = cantidadHorasExtra;
	}
	
	@Override
	public double getMontoImponible() {
		return 0d;
	}
	
}
