package ar.edu.unq.po2.tp4;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class ProductoPrimeraNecesidadTest {

	private ProductoPrimeraNecesidad leche;
	private ProductoPrimeraNecesidad arroz;
	
	@BeforeEach
	public void setUp() {
		leche = new ProductoPrimeraNecesidad("Leche", 100d, false, 0.08);
		arroz = new ProductoPrimeraNecesidad("Arroz", 100d, false, 0.11);
	}
	
	@Test
	public void testCalcularPrecio1() {
		assertEquals(92d, leche.getPrecio());
	}
	
	@Test
	public void testCalcularPrecio2() {
		assertEquals(89d, arroz.getPrecio());
	}
	
}
