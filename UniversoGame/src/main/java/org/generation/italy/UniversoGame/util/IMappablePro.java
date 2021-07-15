package org.generation.italy.UniversoGame.util;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

public interface IMappablePro {

	default Map<String, String> toMap() {
		Map<String, String> ris = new HashMap<>();

		Class<? extends IMappablePro> classe = getClass();

		Method[] metodi = classe.getMethods();

		for (Method metodo : metodi) {

			String nomeMetodo = metodo.getName();

			if (nomeMetodo.startsWith("get") || nomeMetodo.startsWith("is")) {

				try {
					String valore = metodo.invoke(this).toString();
					int indicePartenza = nomeMetodo.startsWith("get") ? 3 : 2;

					String chiave = nomeMetodo.substring(indicePartenza).toLowerCase();

					ris.put(chiave, valore);
				} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
					e.printStackTrace();
				}
			}
		}

		ris.put("class", classe.getSimpleName());

		return ris;
	}

	default void fromMap(Map<String, String> map) {
		Class<? extends IMappablePro> classe = getClass();

		Method[] metodi = classe.getMethods();

		for (Method metodo : metodi) 
		{
			String nomeMetodo = metodo.getName();

			if (nomeMetodo.startsWith("set")) 
			{
				String chiave = nomeMetodo.substring(3).toLowerCase();

				String valore = map.get(chiave);

				Class<?> tipoParametro = metodo.getParameterTypes()[0];

				try {

					if (tipoParametro.equals(boolean.class)) 
					{
						metodo.invoke(this, valore.equals("1") || valore.equals("true"));
					} else if (tipoParametro.equals(char.class)) 
					{
						metodo.invoke(this, valore.charAt(0));
					} else if (tipoParametro.isPrimitive()) 
					{
						Class<?> tipoBoxato = Array.get(Array.newInstance(tipoParametro, 1), 0).getClass();

						Method[] metodiBoxati = tipoBoxato.getMethods();

						for (Method metodoBoxato : metodiBoxati) 
						{
							if (metodoBoxato.getName().startsWith("parse") && metodoBoxato.getParameterCount() == 1) 
							{

								metodo.invoke(this, metodoBoxato.invoke(null, valore));
								break;
							}
						}
					} else if (tipoParametro.equals(java.sql.Date.class)) 
					{
						metodo.invoke(this, Date.valueOf(valore));
					} else {
						metodo.invoke(this, valore);
					}
				} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) 
				{
					e.printStackTrace();
				}
			}
		}
	}

	static <T extends IMappablePro> T fromMap(Class<T> type, Map<String, String> map) {
		T ris = null;

		if (map != null) 
		{
			try {

				Constructor<T> constructor = type.getConstructor();
				ris = constructor.newInstance();
				ris.fromMap(map);
			} catch (NoSuchMethodException | SecurityException | InstantiationException | IllegalAccessException
					| IllegalArgumentException | InvocationTargetException e) 
			{
				e.printStackTrace();
				System.err.println("Manca il costruttore senza parametri, impossibile istanzare " + "l'oggetto");
			}
		}

		return ris;
	}
}
