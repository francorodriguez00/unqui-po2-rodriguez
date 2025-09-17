package ar.edu.unq.po2.tp3;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach; 
import org.junit.jupiter.api.Test; 

public class RectanguloTest {

	private Rectangulo rectangulo;
	private Cuadrado cuadrado;
	 
	@BeforeEach 
	void setUp() throws Exception {
		rectangulo = new Rectangulo((new Point(3, 5)), new Point (1, 2));
		cuadrado = new Cuadrado(new Point (0,1), 3);
	}
	
	@Test
	void areaRectanguloTest() {
		int areaR = rectangulo.area();
		assertEquals(6, areaR);
	}
	
	@Test
	void areaCuadradoTest() {
		int areaC = cuadrado.area();
		assertEquals(9, areaC);
	}
	
	@Test
	void perimetroRectanguloTest() {
		int perimetroR = rectangulo.perimetro(); 
		assertEquals(10, perimetroR);
	}
	
	@Test
	void perimetroCuadradoTest() {
		int perimetroC = cuadrado.perimetro();
		assertEquals(12, perimetroC);
	}
	
	@Test
	void orientacionRectanguloTest() {
		boolean orientacionR = rectangulo.esVertical(); 
		assertTrue(orientacionR);
	}
	
	@Test
	void orientacionCuadradoTest() {
		boolean orientacionC = cuadrado.esCuadrado(); 
		assertTrue(orientacionC);
	}
	
}
