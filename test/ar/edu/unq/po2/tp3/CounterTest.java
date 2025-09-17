package ar.edu.unq.po2.tp3;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import ar.edu.unq.po2.tp3.Counter;

class CounterTest {

	private Counter counter;
	
	/**
	 * 
	 * @throws Exception
	 */
	@BeforeEach
	void setUp() throws Exception {
		//Se crea el contador
		counter = new Counter();
		 
		//Se agregan los numeros. Un solo par y nueve impares
		 counter.addNumber(1);
		 counter.addNumber(3);
		 counter.addNumber(5);
		 counter.addNumber(7);
		 counter.addNumber(9);
		 counter.addNumber(1);
		 counter.addNumber(1);
		 counter.addNumber(234);
		 counter.addNumber(1);
		 counter.addNumber(444);
	}
	
	/**
	 * 
	 */
	@Test
	void evenNumbersTest() {
		
		// Getting the even occurrences
		int amount = counter.getEvenOcurrences();
		 
		// I check the amount is the expected one
		assertEquals(amount, 2);
	}
	
	/**
	 * 
	 */
	@Test
	void oddNumbersTest() {
		
		// Getting the even occurrences
		int amount = counter.getOddOcurrences();
		 
		// I check the amount is the expected one
		assertEquals(amount, 8);
	}
	
	/**
	 * 
	 */
	@Test
	void multipleNumbersTest() {
		
		// Getting the even occurrences
		int amount = counter.getMultiplesOf(2);
		 
		// I check the amount is the expected one
		assertEquals(amount, 2);
	}
	
	/**
	 * 
	 */
	@Test 
	void maxEvenNumbersTest() {
		
		int number = counter.maxEvenNumbers();
		
		assertEquals(number, 444);
	}
	
	@Test 
	void maxMultiploTest(){
		
		int number = counter.maxMultiplo(3, 9);
		
		assertEquals(number, 999);
		
	}
	
}
