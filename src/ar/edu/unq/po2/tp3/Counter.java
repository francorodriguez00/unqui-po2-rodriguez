package ar.edu.unq.po2.tp3;

import java.util.ArrayList;

public class Counter {
	
	private ArrayList<Integer> listaNumeros = new ArrayList<Integer>();
	
	public void addNumber(int number) {
		listaNumeros.add(number);
    }
	
	/**
	 * 
	 * @return
	 */
	public int getEvenOcurrences() {
		int count = 0;
		for(int currentNumber : listaNumeros) {
			if((currentNumber % 2) == 0) {
				count++;
			}
		}
		return count;
	}

	/**
	 * 
	 * @return
	 */
	public int getOddOcurrences() {
		int count = 0;
		for(int currentNumber : listaNumeros) {
			if((currentNumber % 2) != 0) {
				count++;
			}
		}
		return count;
	}
	
	/**
	 * 
	 * @param n
	 * @return
	 */
	public int getMultiplesOf(int n) {
		int count = 0;
		for(int currentNumber : listaNumeros) {
			if(currentNumber % n == 0) {
				count++;
			}
		}
		return count;
	}
	
	/**
	 * 
	 * @return
	 */
	public int maxEvenNumbers() {
		
		int maxPares = listaNumeros.get(0);
		int maxCount = cantidadDigitosPares(maxPares);
		for(int i = 1; i < listaNumeros.size(); i++) {
			int n = listaNumeros.get(i);
			int count = cantidadDigitosPares(n);
			if(count > maxCount) {
				maxCount = count;
				maxPares = n;
			}
		}
		return maxPares;
	}
	
	/**
	 * 
	 * @param n
	 * @return
	 */
	private int cantidadDigitosPares(int n) {
		int x = n;
		if(x == 0) {
			return 1;
		}
		int count = 0;
		while(x > 0) {
			int num = x % 10;
			if(num % 2 == 0 ) {
				count++;
			}
			x = x / 10;
		}
		return count;
	}
	
	/**
	 * 
	 * @param x
	 * @param y
	 * @return
	 */
	public int maxMultiplo(int x, int y) {
		for(int i = 1000; i > 0; i--) {
			if(i % x == 0 && i % y == 0) {
				return i;
			}
		}
		return -1;
	}
	
}



