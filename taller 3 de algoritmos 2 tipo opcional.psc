Proceso TALLER_NUMERO_3_TIPO_OPCIONAL
//Teniendo en cuenta el uso de menús de opciones y submenús, elabora el siguiente programa: 
//Menú de opciones: A. Personas B.Matemáticas C.Comprobación



definir Masa,Kilogramos,Peso,Estatura,IMC,Edad,num,num1,i,num2,cantidad,promedio como numerico;
definir contador,acumulador,ant1,ant2,fib como numerico;	
definir RespuestaMenuPrincipal,RespuestaOpcion,RetornoMenu,RespuestaSubmenu,opcionIMC,opcionEdad como texto;
definir opcionCon,opcionN,opcionP,opcionF,opcionM como texto;
definir regresar,repetirproceso,submenu,continuar como logico;

    regresar=verdadero;
    mientras regresar =verdadero hacer
	limpiar pantalla;
	escribir "MENU PRINCIPAL";
	escribir"";
	escribir"A.PERSONAS";
	escribir"B.MATEMÁTICAS";
	escribir "C.COMPROBACIÓN";
	escribir "D.SALIR";
	leer RespuestaMenuPrincipal;
	
	RespuestaMenuPrincipal=Mayusculas(RespuestaMenuPrincipal);
	segun RespuestaMenuPrincipal hacer
		"A"://cuando sea respuesta menu principal
			submenu=verdadero;
			mientras submenu=verdadero Hacer
				limpiar pantalla;
			escribir"";	
			escribir"* A.PERSONAS *";
			escribir"";
			escribir"1.Indice de masa muscular";
			escribir"2.Eres mayor de edad";
			escribir"3.Regresar al menu principal";
			escribir"4.salir";
			leer RespuestaSubmenu;
			
			segun RespuestaSubmenu hacer
				
				"1"://calcular la masa muscular de una persona
					
					repetirproceso=verdadero;
					mientras repetirproceso=verdadero Hacer
					limpiar pantalla;
					escribir "IMC(Indice de masa corporal) de una persona";
					escribir"";
					escribir"Ingresa tu peso en kilogramos";
					leer Kilogramos;
					escribir"Ingresa tu estatura en centimetros";
					leer Estatura;
					Estatura=Estatura/100;
					IMC=kilogramos/Estatura^2;								
					si IMC<18.5 entonces
						escribir "Tu indice de masa corporal es:",IMC;
						escribir"Estas bajo de peso";
					SiNo
						si IMC>=18.5 y IMC<=24.9 Entonces
							escribir"Tu indice de masa corporal es:",IMC;
							escribir"Estas en tu peso ideal";
						SiNo
							si IMC>=25 y IMC<=29.9 entonces
								escribir"Tu indice de masa corporal es:",IMC;
								escribir"Estas en sobrepeso normal";
							SiNo
								si IMC>=25 y IMC<=29.9 entonces
									escribir"Tu indice de masa corporal es:",IMC;
									escribir"Tienes sobrepeso,debes hacer ejercicio";
								SiNo
									si IMC>30 entonces 
										escribir"Tu indice de masa corporal es:",IMC;
										escribir "Cuidado con tu salud,tienes problemas de obecidad";
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
					escribir"";
					escribir"*QUE DESEAS HACER:";
					escribir"";
					escribir "1.Nuevamente conocer el IMC(Indice de masa muscular)";
					escribir "2.Regresar al submenu";
					escribir "3.Regresar al menu principal";
					escribir "4.Salir";					
					leer opcionIMC;
					segun opcionIMC hacer
						"1":
							repetirproceso=verdadero;
						"2":
							repetirproceso=falso;
							submenu=verdadero;
						"3":
							repetirproceso=falso;
							submenu=falso;
							regresar=verdadero;
						"4":
							Limpiar Pantalla;
							repetirproceso=falso;
							submenu=falso;
							regresar=falso;
							escribir "GRACIAS POR USAR EL PROGRAMA";
							
						De Otro Modo:
							limpiar pantalla;
							escribir"Opcion incorrecta";
							repetirproceso=falso;
							submenu=falso;
							regresar=falso;
							Esperar 2 Segundos;
							escribir "GRACIAS POR USAR EL PROGRAMA";
						
					FinSegun
				    finmientras
						
				"2"://cuando escoja opcion eres mayor de edad?
					repetirproceso=verdadero;
					mientras repetirproceso=verdadero Hacer
					Limpiar Pantalla;
					
					escribir "Para saber si eres mayor de edad  ";
					escribir"";
					escribir"Ingresa tu edad actual";
					leer Edad;
					si Edad>18 Entonces
						escribir"Tienes"," ",Edad," ","Años:Eres mayor de edad";
					SiNo
						si Edad<=18 y Edad >= 1 Entonces
							escribir"Tienes"," ",Edad," ","Años:Eres menor de edad";
						SiNo
							si Edad<=0 Entonces
								escribir"Tienes"," ",Edad," ","Años:Edad no permitida";
							FinSi
						FinSi
					FinSi
					escribir"";
					escribir"QUE DESEAS HACER::";
					escribir"";
					escribir "1.deseas nuevamente conocer si eres Mayor de edad?";
					escribir "2.regresar al submenu";
					escribir "3.ir al menu principal";
					escribir "4.salir";					
					leer opcionEdad;
					segun opcionEdad hacer
						"1":
							repetirproceso=verdadero;
						"2":
							repetirproceso=falso;
							submenu=verdadero;
						"3":
							repetirproceso=falso;
							submenu=falso;
							regresar=verdadero;
						"4":
							Limpiar Pantalla;
							repetirproceso=falso;
							submenu=falso;
							regresar=falso;
							Esperar 2 Segundos;
							escribir "GRACIAS POR USAR EL PROGRAMA";
							
						De Otro Modo:
							limpiar pantalla;
							escribir"Opcion incorrecta";
							repetirproceso=falso;
							submenu=falso;
							regresar=falso;
							Esperar 2 Segundos;
							escribir "GRACIAS POR USAR EL PROGRAMA";
							
					FinSegun
				    FinMientras
				
				"3"://regresar al menu principal
					submenu=falso;
					regresar=verdadero;
					
				"4"://salir del programa
					Limpiar Pantalla;
					submenu=falso;
					regresar=falso;
					Esperar 2 Segundos;
					escribir "GRACIAS POR USAR EL PROGRAMA";
				De Otro Modo:
					Limpiar Pantalla;
					Escribir "Opcion incorrecta";
					submenu=falso;
					regresar=falso;
					Esperar 2 Segundos;
					escribir "GRACIAS POR USAR EL PROGRAMA";
			FinSegun
			FinMientras
			
		"B"://cuando sea menuprincipal matematicas
			submenu=verdadero;
			mientras submenu=verdadero Hacer
			Limpiar Pantalla;
			escribir"B.MATEMÁTICAS";
			escribir"";
			escribir"1.Mostrar conteo regresivo";
			escribir"2.Obtener cantidad y promedio N notas";
			escribir"3.Serie Fibonacci";
			escribir"4.Regresar al menu principal ";
			escribir"5.salir";
			leer RespuestaSubmenu;
			segun RespuestaSubmenu hacer
				"1"://cuando sea opcion conteo regresivo.
					repetirproceso=verdadero;
					mientras repetirproceso=verdadero Hacer
						Limpiar Pantalla;
					escribir "* Conteo regresivo";
                    escribir"";
					escribir "ingrese el numero";
					leer num;
					si num >0 y num<=100 entonces
						i<-num;
						mientras i>=0 hacer
							escribir i;
							i<-i-1;
							esperar 1 segundos;
						finmientras
					SiNo
						si num<=0 o num>100 Entonces
							escribir "numero incorrecto";
						 
						FinSi
					FinSi
					escribir"";
					escribir"QUE DESEAS HACER:";
					escribir"";
					escribir "1.Nuevamente hacer el conteo regresivo de un número";
					escribir "2.Regresar al submenu";
					escribir "3.Regresar al menu principal";
					escribir "4.Salir";					
					leer opcionCon;
					segun opcionCon hacer
						"1":
							repetirproceso=verdadero;
						"2":
							repetirproceso=falso;
							submenu=verdadero;
						"3":
							repetirproceso=falso;
							submenu=falso;
							regresar=verdadero;
						"4":
							Limpiar Pantalla;
							repetirproceso=falso;
							submenu=falso;
							regresar=falso;
							Esperar 2 Segundos;
							escribir "GRACIAS POR USAR EL PROGRAMA";
							
						De Otro Modo:
							limpiar pantalla;
							escribir"Opcion incorrecta";
							repetirproceso=falso;
							submenu=falso;
							regresar=falso;
							Esperar 2 Segundos;
							escribir "GRACIAS POR USAR EL PROGRAMA";
					FinSegun
					finmientras
					
				"2"://para obtener cantidad y promedio de n notas.
					repetirproceso=verdadero;
					mientras repetirproceso=verdadero Hacer
					Limpiar Pantalla;
					escribir"";
					escribir"* Cantidad y promedio de notas*";
					
					Contador=0;
					acumulador=0;
					num=0;
					continuar=verdadero;
					mientras continuar=verdadero hacer
						limpiar pantalla;
						escribir "Ingresa un numero";
						leer num;
						
						contador=contador+1;
						acumulador=acumulador+num;
						promedio=acumulador/contador;
						escribir"";
						escribir"QUE DESEAS HACER SEGUN LAS SIGUENTES OPCIONES:";
						escribir "";
						escribir"* Escribe A. para ingresar otro dato numerico";
						escribir"";
						escribir"* Escribe B. para no ingresar  mas datos, pero si conocer la cantidad y promedio de datos ingresados";
						leer opcionN;
						opcionN= Mayusculas(opcionN);
						si opcionN = "A" entonces 
							continuar =verdadero;
							
						SiNo
							si opcionN = "B" entonces
								continuar=falso;
								limpiar pantalla;
								escribir"Cantidad de datos ingresados :",contador;
								escribir"La suma total de numeros ingresados es:",acumulador;
								escribir"El promedio de datos ingresados es:",promedio;
							SiNo
								si opcionN<> "A" y opcionN <> "B" entonces
									continuar = falso;
									
									escribir  "Opcion incorrecta ";
									
								FinSi
							finsi
						FinSi
						
					FinMientras
					escribir"";
					escribir"*QUE DESEAS HACER*:";
					escribir"";
					escribir "1.Nuevamente conocer cantidad y promedio de notas";
					escribir "2.Regresar al submenu";
					escribir "3.Regresar al menu principal";
					escribir "4.Salir";					
					leer opcionP;
					segun opcionP hacer
						"1":
							repetirproceso=verdadero;
						"2":
							repetirproceso=falso;
							submenu=verdadero;
						"3":
							repetirproceso=falso;
							submenu=falso;
							regresar=verdadero;
						"4":
							Limpiar Pantalla;
							repetirproceso=falso;
							submenu=falso;
							regresar=falso;
							Esperar 2 Segundos;
							escribir "GRACIAS POR USAR EL PROGRAMA";
							
						De Otro Modo:
							limpiar pantalla;
							escribir"Opcion incorrecta";
							repetirproceso=falso;
							submenu=falso;
							regresar=falso;
							Esperar 2 Segundos;
							escribir "GRACIAS POR USAR EL PROGRAMA";
					FinSegun
					
					finmientras
					
				"3"://cuando sea opcion serie fibonaci.
					repetirproceso=verdadero;
					mientras repetirproceso=verdadero Hacer
						Limpiar Pantalla;
					
					ant1=0;
					ant2=1;
					fib=1;
					contador=0;
					escribir "SERIE FIBONACCI";
					escribir "Ingresa un numero para calcular la serie fibonacci";
					leer num;
					escribir "La serie fibonacci de"," ",num," "," es:";
					escribir ant1;
					para i=1 hasta num con paso 1 hacer
						escribir fib;
						contador=contador+fib;
						fib=ant1+ant2;
						ant1=ant2;
						ant2=fib;
						
					FinPara
					
					escribir"";
					escribir"*QUE DESEAS HACER*:";
					escribir"";
					escribir "1.Nuevamente conocer la serie fibonacci de un numero";
					escribir "2.Regresar al submenu";
					escribir "3.Regresar al menu principal";
					escribir "4.Salir";					
					leer opcionF;
					segun opcionF hacer
						"1":
							repetirproceso=verdadero;
						"2":
							repetirproceso=falso;
							submenu=verdadero;
						"3":
							repetirproceso=falso;
							submenu=falso;
							regresar=verdadero;
						"4":
							Limpiar Pantalla;
							repetirproceso=falso;
							submenu=falso;
							regresar=falso;
							Esperar 3 Segundos;
							escribir "GRACIAS POR USAR EL PROGRAMA";
							
						De Otro Modo:
							limpiar pantalla;
							escribir"Opcion incorrecta";
							repetirproceso=falso;
							submenu=falso;
							regresar=falso;
							Esperar 3 Segundos;
							escribir "GRACIAS POR USAR EL PROGRAMA";
					FinSegun
					finmientras
				"4"://opcion regresar al menu principal.
					submenu=falso;
					regresar=verdadero;
					
					
				"5"://opcion salir.
					Limpiar Pantalla;
					submenu=falso;
					regresar=falso;
					Esperar 2 Segundos;
					escribir "GRACIAS POR USAR EL PROGRAMA";
				De Otro Modo:
					Limpiar Pantalla;
					Escribir "Opcion incorrecta";
					submenu=falso;
					regresar=falso;
					Esperar 2 Segundos;
					escribir "GRACIAS POR USAR EL PROGRAMA";
			FinSegun
			finmientras
			
			
		"C"://cuando sea respuesta menu principal comparacion
			repetirproceso=verdadero;
			mientras repetirproceso=verdadero Hacer
			Limpiar Pantalla;
			escribir"C.*COMPROBACION:";
			escribir"";
			
			escribir "Ingresa el primer numero";
			leer num1;
			escribir "Ingresa el segudo numero";
			leer num2;
			si num1>num2  entonces 
				escribir "El numero"," ",num1," ","Es mayor al numero"," ",num2;
			SiNo
				si num2>num1 Entonces
					escribir "El numero"," ",num2," ","Es mayor al numero"," ",num1;
				SiNo
					si num1=num2 entonces 
						escribir "El numero"," ",num1," ","y", " ",num2," ","son iguales";
					finsi	
				finsi
			FinSi
			escribir"";
			escribir"*QUE DESEAS HACER:";
			escribir"";
			escribir "1.Nuevamente conocer cual es el numero mayor";
			escribir "2.Regresar al menu principal";
			escribir "3.salir";					
			leer opcionM;
			segun opcionM hacer
				"1":
					repetirproceso=verdadero;
				"2":
					repetirproceso=falso;
					regresar=verdadero;
				"3":
					limpiar pantalla;
					repetirproceso=falso;
					regresar=falso;
					esperar 2 segundos;
					escribir "GRACIAS POR USAR EL PROGRAMA";
					
				De Otro Modo:
					limpiar pantalla;
					repetirproceso=falso;
					escribir"Opcion incorrecta";
					regresar=falso;
					Esperar 2 Segundos;
					escribir "GRACIAS POR USAR EL PROGRAMA";
			FinSegun
			finmientras
			
		"D"://salir del programa.
			limpiar pantalla;
			regresar=falso;
			escribir"";
			escribir "","*GRACIAS POR USAR EL PROGRMA*";
		de otro modo:
			limpiar pantalla;
			regresar=falso;
			escribir "";
			escribir"","*OPCION INCORRECTA";
			escribir"";
			escribir"","*GRACIAS POR USAR EL PROGRAMA";
			
			
			
		
		
		
		
		
		
		
		
		
		
		
		
	FinSegun//cuando termine opcion PERSONAS
	
	
    FinMientras
	
	
	
	
	
	
	
	
	
	
FinProceso
