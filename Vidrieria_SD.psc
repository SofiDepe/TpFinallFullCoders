Algoritmo Vidrieria_SD
	
	Definir reservadas, disponibles, a_adquirir Como Entero
	reservadas=0
	disponibles=50
	
	Repetir
		escribir "Bienvenido a Vidrieria SD. Por favor seleccione la opción deseada" 
		Escribir "1. Te ayudamos con el vidrio a colocar segun la orientación en la que se encontrará la abertura"
		Escribir "2. Quiero reservar entradas para la visita guiada (10/10/23)"
		Escribir "3. Terminar"
		
		leer opc
		
		si (opc=1) Entonces
			escribir "Elija la orientacion de su abertura (N,S,E,O)"
			leer or
			or=Mayusculas(or)
			
			Segun or Hacer
				"N":
					Escribir "Para la orientacion norte recomendamos DVH + camara de aire de 5mm"
					Escribir "Presione cualquier tecla para volver al menu principal"
					Esperar Tecla
				"S":
					Escribir "Para la orientacion sur recomendamos un vidrio monolítico incoloro ya que los rayos del sol no son directos"
					Escribir "Presione cualquier tecla para volver al menu principal"
					Esperar Tecla
				"E":
					Escribir "Para la orientacion este recomendamos vidrio float de 5mm"
					Escribir "Presione cualquier tecla para volver al menu principal"
					Esperar Tecla
				"O":
					Escribir "Para la orientacion oeste recomendamos vidrio con low-e de 5mm"
					Escribir "Presione cualquier tecla para volver al menu principal"
					Esperar Tecla
				De Otro Modo:
					Escribir "Operación no válida, lo redigiremos al menu principal"
			Fin Segun
			
		SiNo
			si (opc=2) Entonces
				si reservadas>=50 O disponibles = 0 Entonces
					escribir "Entradas agotadas para la visita programada"
					Escribir "Presione cualquier tecla para volver al menu principal"
					Esperar Tecla
				SiNo
					escribir "Por favor escriba en numeros la cantidad de entradas que desea adquirir para la visita guiada"
				FinSi
				
					leer numero
					si numero > disponibles Entonces
						Escribir "No es posible comprar mas de " disponibles " entrada/s"
						si compradas = 50 Entonces
							escribir "entradas agotadas"
							Escribir "Presione cualquier tecla para volver al menu principal"
							Esperar Tecla
						FinSi
						
					SiNo
						Escribir "su operacion fue realizada con exito"
						compradas= compradas + numero
						disponibles = disponibles - numero
						
						Escribir "Quedan ", disponibles, " entradas disponibles"
						Escribir "Presione cualquier tecla para volver al menu principal"
						Esperar Tecla
						
					FinSi
			FinSi
			
			si (opc=3) Entonces
				Escribir "Muchas gracias por visitarnos. Vuelva pronto"
			FinSi
		FinSi
		si opc  <>1 O opc<>2 O opc<>3 Entonces
			Escribir "Por favor ingrese una opción válida (1,2,3)"
		FinSi
	Hasta Que (opc=3)
FinAlgoritmo