package ar.edu.unq.po2.tp3;

public class Point {
	
	private int x;
	private int y;
	
	public Point(int x, int y) {
		this.x = x;
		this.y = y;
	}
	
	public Point() {
		this(0, 0); // Llama al constructor Point(int x, int y)
	}
	
	public void moverP(int newX, int newY) {
		this.x = newX;
		this.y = newY;
	}
	
	public Point sumarP(Point nuevo) {
		return new Point(this.x + nuevo.x, this.y + nuevo.y);
	}
	
	public int getX() {
		return x;
	}

	public int getY() {
		return y;
	}

	
}
