package ar.edu.unq.po2.tp3;

import static org.junit.jupiter.api.Assertions.*; 
import java.util.ArrayList; 
import org.junit.jupiter.api.BeforeEach; 
import org.junit.jupiter.api.Test; 
import ar.edu.unq.po2.tp3.Multioperador;

public class MultioperadorTest {
	
	private Multioperador multioperador;
	
	@BeforeEach 
	void setUp() throws Exception{ 
		multioperador = new Multioperador(); 
		multioperador.addNumber(4); 
		multioperador.addNumber(5); 
		multioperador.addNumber(2); 
		multioperador.addNumber(4); 
		multioperador.addNumber(1);
	}
	
	@Test 
	void sumarTest() { 
		int suma = multioperador.sumar(); 
		assertEquals(16, suma); 
	}
	
	@Test
	void restarTest() { 
		int resta = multioperador.restar(); 
		assertEquals(-8, resta); 
	}
	
	@Test
	void multiplicarTest() { 
		int producto = multioperador.multiplicar(); 
		assertEquals(160, producto); 
	}
	
}

