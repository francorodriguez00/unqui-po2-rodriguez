package ar.edu.unq.po2.tp3;

public class Cuadrado extends Rectangulo {
	
	public Cuadrado(Point esquina, int lado) {
		super(esquina, new Point(esquina.getX() + lado, esquina.getY() + lado));
	}
}
