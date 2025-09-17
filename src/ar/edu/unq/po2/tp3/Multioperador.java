package ar.edu.unq.po2.tp3;

import java.util.ArrayList;

public class Multioperador {

	private ArrayList<Integer> listaNumeros = new ArrayList<Integer>();
	
	public void addNumber(int number) {
		listaNumeros.add(number);
    }
	
	public int sumar() {
		int suma = 0;
		for (int n : listaNumeros) {
			suma += n;
		}
		return suma;
	}
	
	public int restar() {
		if (listaNumeros.isEmpty()) return 0;
		int resta = listaNumeros.get(0);
		for (int i = 1; i < listaNumeros.size(); i++) {
			resta -= listaNumeros.get(i);
		}
		return resta;
	}
	
	public int multiplicar() {
        if (listaNumeros.isEmpty()) return 0;
        int producto = 1;
        for (int n : listaNumeros) {
            producto *= n;
        }
        return producto;
    }
	
}
