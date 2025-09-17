package ar.edu.unq.po2.tp4;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class ImpuestoAlTrabajadorTest {

	private Trabajador pepe;
	private Ingresos marzo;
	private Ingresos julio;
	private IngresosHorasExtra agosto;
	
	@BeforeEach
	public void setUp() {
		pepe = new Trabajador();
		marzo = new Ingresos("Marzo", "Paga", 1000d);
		julio = new Ingresos("Julio", "Paga", 1100d);
		agosto = new IngresosHorasExtra("Agosto", "Extras", 500d, 5);
		
		pepe.addIngresos(marzo);
		pepe.addIngresos(julio);
		pepe.addIngresos(agosto);
	}
	
	@Test
	public void testTotalPercibido() {
		assertEquals(2600d, pepe.getTotalPercibido());
	}
	
	@Test
	public void testMontoImponible() {
		assertEquals(2100d, pepe.getMontoImponible());
	}
	
	@Test
	public void testImpuestoAPagar() {
		assertEquals(42d, pepe.getImpuestoAPagar());
	}
	
	
}
