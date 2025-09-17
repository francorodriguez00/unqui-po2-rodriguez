package ar.edu.unq.po2.tp3;

public class Rectangulo {
	
	private Point esquina1;
	private Point esquina2;
	
	/**
	 * prec: los puntos dados no son igules entre sí y no son nulos
	 * @param esquina1 esquina inferior izquierda
	 * @param esquina2 esquina superior derecha
	 */
	public Rectangulo(Point esquina1, Point esquina2) {
		this.esquina1 = esquina1;
		this.esquina2 = esquina2;
	}
	
	public int area() {
		return ( alto() * ancho());
	}
	
	private int ancho() {
		return(Math.abs(esquina1.getX() - esquina2.getX()));
	}
	
	private int alto() {
		return(Math.abs(esquina1.getY() - esquina2.getY()));
	}
	
	public int perimetro() {
		return(2 * (ancho() + alto()));
	}
	
	public boolean esVertical() {
		return (alto() > ancho());
	}
	
	public boolean esHorizontal() {
		return (ancho() > alto());
	}
	
	public boolean esCuadrado() {
		return (ancho() == alto());
	}
	
}
