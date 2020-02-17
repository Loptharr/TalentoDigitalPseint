Proceso Examen_1
	Definir opcion como entero;
	
	Repetir
		Limpiar Pantalla;
		Escribir "------------------------------------------------------";
		Escribir "                MENU PRINCIPAL";
		Escribir "------------------------------------------------------";
		escribir "1.-  SECUENCIAL";
		Escribir "2.-  CONDICIONAL SI ENTONCES";
		Escribir "3.-  CONDICIONAL SI ENTONCES ANIDADO";
		Escribir "4.-  CONDICIONAL SEGUN";
		Escribir "5.-  REPETITIVA MIENTRAS";
		Escribir "6.-  REPETITIVA REPETIR";
		Escribir "7.-  REPETITIVA PARA";
		Escribir "8.-  ARREGLO SIMPLE";
		Escribir "9.-  ARREGLO BIDIMENSIONAL";
		Escribir "10.- SALIR";
		Escribir "------------------------------------------------------";
		leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese 3 numeros";
				Definir n1,n2,n3 como Real;
				Leer n1;
				Leer n2;
				Leer n3;
				Escribir "El promedio de los numeros ingresados es : ", Promedio(n1,n2,n3);
				Esperar Tecla;
				;
			2:
				Escribir "Ingrese Nombre";
				Definir nom, gen como Caracter;
				Leer nom;
				Repetir
					Escribir "Ingrese Género H (para hombre) ó M (para mujer))";
					Leer gen;
					gen=Minusculas(gen);
				Hasta Que gen="h" o gen="m";
				Escribir "Nombre : ", nom;
				Escribir "Derivado a : ", Banno(gen);
				Esperar Tecla;
				;
			3:
				Escribir "Ingrese Nombre";
				Definir nom, gen como Caracter;
				Definir uso como Entero;
				Leer nom;
				Repetir
					Escribir "Ingrese Género H (para hombre) ó M (para mujer))";
					Leer gen;
					gen=Minusculas(gen);
				Hasta Que gen="h" o gen="m";
				
				Repetir
					Escribir "Por favor ingrese una opción";
					Escribir "1.- Solo Baño";
					Escribir "2.- Ducha";
					Leer uso;
				Hasta Que uso=1 o uso=2;
				
				Escribir "Nombre : ", nom;
				Escribir "Derivado a : ", Banno(gen);
				Escribir "Cobro : $", Cobro(uso);
				Esperar Tecla;
				;
			4:
				Definir num como entero;
				Repetir
					Escribir "Por favor ingrese un número del 1 al 10 : ";
					leer num;
				Hasta Que num<=10;
				Escribir ConvPalabra(num);
				Esperar Tecla;
				;
			5:
				Definir i,j, numIngresado, numArreglo, total como Entero;
				total=0;
				i=0;
				//Dimension numArreglo[i];
				Escribir "Ingrese los valores (para terminar ingrese cero)";
				Leer numIngresado;
				Mientras numIngresado!=0 Hacer
					//numArreglo[i]=numIngresado;
					total=total+numIngresado;
					i=i+1;
					Leer numIngresado;
				FinMientras
				
				//Para j<-0 Hasta i Con Paso 1 Hacer
				//Escribir numArreglo[j]," - " Sin Saltar;
				//FinPara
				Escribir "Total de números ingresado: ", i, " - promedio valores:  ",impProm(total,i);
				Esperar Tecla;
				;
			6:
				Definir nom Como Caracter;
				Definir contNom como Entero;
				contNom=0;
				Repetir
					Escribir "Ingrese nombre que comience con J :";
					Leer nom;
					contNom=contNom+1;
				Hasta Que Minusculas(nom)="juan"
				Escribir "-----GANASTE-----";
				Escribir "Cantidad de Intentos (antes de haber ganado)= ", contNom-1;
				Esperar Tecla;
				;
			7:
				Definir nombre como Caracter;
				Definir i como Entero;
				Dimension nombre[10];
				Para i<-0 Hasta 9 Con Paso 1 Hacer
					Escribir "Cuál es su nombre ?";
					leer nombre[i];
					;
				FinPara
				Definir k, j, contNom como Entero;
				Dimension contNom[10];
				Para k<-0 Hasta 9 Con Paso 1 Hacer
					Para j<-0 Hasta 9 Con Paso 1 Hacer
						Si nombre[k]=nombre[j] Entonces
							contNom[k]=j+1;
						FinSi
						Si contNom[k]>0 Entonces
							Escribir "Nombre repetido = ", nombre[k];
						SiNo
							Escribir "Nombre no se repite";
						FinSi
					FinPara
				FinPara
				Esperar Tecla;
				;
			8:
				Definir dimen,i,j,CantLineas como Entero;
				Definir ArrayAlum Como Caracter;
				Escribir "Ingrese cantidad de Talentos a Ingresar : ";
				leer dimen;
				Dimension ArrayAlum[dimen];
				Para i<-0 Hasta dimen-1 Con Paso 1 Hacer
					Escribir "Ingrese el nombre alumno n°", i+1;
					leer ArrayAlum[i]; 
				FinPara
				CantLineas=redon(dimen/5);
//				Para j<-0 Hasta 4 Con Paso 1 Hacer
//					Escribir ArrayAlum[j] Sin Saltar;
//				FinPara
				Esperar Tecla;
				;
			9:
				
				Esperar Tecla;
				;
			10:
				opcion=10;
		FinSegun
	Hasta Que opcion=10;
FinProceso


//Función saca los promedios de los 3 números ingresados 
Funcion prom = Promedio(n1,n2,n3)
	Definir prom como Real;
	//tomo los numeros y los promedio, devolviendo es resultado en variable "prom"
	prom=(n1+n2+n3)/3; 
FinFuncion

//Función asigna un tipo de baño deun el genero ingresado
Funcion tipobanno = Banno(gen)
	Definir tipoBanno como Caracter;
	Si gen="h" Entonces
		tipoBanno="Baño de Hombres";
	FinSi
	
	Si gen="m" Entonces
		tipoBanno="Baño de Mujeres";
	FinSi	
FinFuncion

//Función asigna un valor de cobro extra según el uso del baño
Funcion usoBanno = Cobro(uso)
	Definir usoBanno como entero;
	Si uso=1 Entonces
		usoBanno=250;
	FinSi
	
	Si uso=2 Entonces
		usoBanno=2500;
	FinSi	
FinFuncion

//Función convertir valor numerico a palabras 
Funcion num = ConvPalabra(n)
	Definir num como Caracter;
	Segun n Hacer
		1:
			num="uno";
		2:
			num="dos";
		3:
			num="tres";
		4:
			num="cuatro";
		5:
			num="cinco";
		6:
			num="seis";
		7:
			num="siete";
		8:
			num="ocho";
		9:
			num="nueve";
		10:
			num="diez";
	FinSegun
FinFuncion


//Función mostrar promedio de numeros ingresados
Funcion prom = impProm(total, dimArray)
	Definir prom como Real;
	prom=total/dimArray;
FinFuncion

