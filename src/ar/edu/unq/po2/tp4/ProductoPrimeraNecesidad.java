package ar.edu.unq.po2.tp4;

public class ProductoPrimeraNecesidad extends Producto {
	
	private double descuento;
	
	public ProductoPrimeraNecesidad(String nombre, double precio, boolean esPrecioCuidado, double descuento) {
		super(nombre, precio, esPrecioCuidado);
		this.descuento = descuento;
	}
	
	@Override
	public double getPrecio() {
		return (super.getPrecio() * (1 - descuento));
	}

}
