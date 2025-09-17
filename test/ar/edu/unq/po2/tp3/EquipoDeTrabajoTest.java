package ar.edu.unq.po2.tp3;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach; 
import org.junit.jupiter.api.Test;
import java.time.LocalDate;

public class EquipoDeTrabajoTest {
	
	private EquipoDeTrabajo equipoDeTrabajo;
	private Persona persona1;
	private Persona persona2;
	private Persona persona3;
	private Persona persona4;
	private Persona persona5;
	
	
	@BeforeEach
	void setUp() throws Exception {
		equipoDeTrabajo = new EquipoDeTrabajo("Programadores");
		
		persona1 = new Persona("Pepe", "Rodriguez", LocalDate.of(1990, 5, 15)); 
		persona2 = new Persona("Pepe", "Rodriguez", LocalDate.of(1990, 6, 15)); 
		persona3 = new Persona("Pepe", "Rodriguez", LocalDate.of(1987, 8, 15)); 
		persona4 = new Persona("Pepe", "Rodriguez", LocalDate.of(1996, 10, 15)); 
		persona5 = new Persona("Pepe", "Rodriguez", LocalDate.of(1970, 6, 15)); 
		
		equipoDeTrabajo.agregarIntegrante(persona1);
		equipoDeTrabajo.agregarIntegrante(persona2);
		equipoDeTrabajo.agregarIntegrante(persona3);
		equipoDeTrabajo.agregarIntegrante(persona4);
		equipoDeTrabajo.agregarIntegrante(persona5);
	}
	
	@Test
	void promedioEdadInstTest() {
		int promedioE = equipoDeTrabajo.getPromedioEdadInts();
		System.out.println("El promedio de edad es: " + promedioE);
		assertEquals(38, promedioE);
	}
	
}
