Algoritmo EXpi_V1
	//Definiciones de variables
	Definir OpcionInicio como entero;
	Definir OpcionClase Como Entero;
	Definir Salir como entero;
	Definir SalirJuego Como Entero;
	Definir SalirInicioSesion Como Entero;
	Definir SalirMenu Como Entero;
	Definir OpcionInicioSesion Como Entero;
	Definir ClaseSeleccionada Como Entero;
	Definir Selector Como Entero;
	Definir PuntosDisponibles Como Entero;
	
	Definir VidaGuerrero Como Entero;
	Definir AtaqueGuerrero Como Entero;
	Definir ManaGuerrero Como Entero;
	Definir VidaMago Como Entero;
	Definir AtaqueMago Como Entero;
	Definir ManaMago Como Entero;
	Definir VidaArquero Como Entero;
	Definir AtaqueArquero Como Entero;
	Definir ManaArquero Como Entero;
	
	Definir Usuario Como caracter;
	Definir Usuario1 Como Caracter;
	Definir ContrasenaUsuario Como Caracter;
	Definir ContrasenaIngresada Como Caracter;
	Definir UsuarioNuevo Como Caracter;
	Definir ContrasenaNueva Como Caracter;
	
	//Asignacion de VALORES INICIALES
	Usuario <- "A";
	ContrasenaUsuario <- "qw";
	SalirJuego <- 2;
	Salir <- 2;
	SalirInicioSesion <- 2;
	SalirMenu <- 2;
	PuntosDisponibles <- 5;
	
	//Variables del Guerrero
	VidaGuerrero <- 150;
	AtaqueGuerrero <- 50;
	ManaGuerrero <- 10;
	
	//Variables del Mago
	VidaMago <- 80;
	AtaqueMago <- 10;
	ManaMago <- 150;
	
	//Variables del Arquero
	VidaArquero <- 100;
	AtaqueArquero <- 40;
	ManaArquero <- 30;
	
	Mientras SalirJuego == 2 Hacer
		Escribir "Usuario: ",Usuario, " -- Contrasena: ",ContrasenaUsuario;
		Escribir "-----Bien venido a EXpi Online-----";
		Escribir "1. Inicio de sesion";
		Escribir "2. Registrar nueva cuenta";
		Escribir "3. Salir del juego";
		Leer OpcionInicio;
		Segun OpcionInicio hacer
			1:
				Escribir "Bien venido de nuevo";
				Escribir "Ingrese su usuario";
				Leer Usuario1;
				
				Mientras Usuario1 <> Usuario Hacer
					Escribir "Usuario no encontrado, intente nuevamente";
					Leer Usuario1;
				FinMientras
				
				Limpiar Pantalla;
				Escribir "Ingrese su contrasena";
				Leer ContrasenaIngresada;
				
				Mientras ContrasenaIngresada <> ContrasenaUsuario Hacer
					Escribir "Contrasena incorrecta intente nuevamente";
					Leer ContrasenaIngresada;
				FinMientras
				
				Limpiar Pantalla;
				SalirInicioSesion <- 2;
				SalirJuego <- 2;
				Mientras SalirInicioSesion == 2 Hacer
					Limpiar Pantalla
					Escribir "Bien venido ",Usuario1;
					Escribir "----- Menu -----";
					Escribir "1. Continuar partida";
					Escribir "2. Nueva Partida";
					Escribir "3. Mejora de Clase";
					Escribir "4. Configutacion";
					Escribir "5. Creditos";
					Escribir "6. Salir";
					Leer OpcionInicioSesion;
					Escribir "----------------";
					Limpiar Pantalla;
					Segun OpcionInicioSesion Hacer
						1:
							Escribir "--- IniciandoPartida ---";
							Si OpcionInicioSesion == 1 Entonces
								SalirInicioSesion <- 1;
								SalirJuego <- 1;
							FinSi
							
						2:
							Escribir "--- Preparando Partida ---";
							Si OpcionInicioSesion == 2 Entonces
								SalirInicioSesion <- 1;
								SalirJuego <- 1;
							FinSi
							
						3:
							//Mientras Hacer
							Escribir "---- Clase: Guerrero ----";
							Escribir "Elija que quiere subir";
							Escribir "Puntos disponibles: ", PuntosDisponibles;
							Escribir "1. Vida: ", VidaGuerrero," puntos";
							Escribir "2. Ataque: ", AtaqueGuerrero," puntos";
							Escribir "3. Mana: ", ManaGuerrero," puntos";
							Escribir "4. Salir al Menu";
							Leer Selector;
							
							Repetir
								Segun Selector Hacer
									1:
										Si PuntosDisponibles > 0 Entonces
											VidaGuerrero <- VidaGuerrero + 1;
										FinSi
									2:
									3:
									4:
										SalirMenu <- SalirMenu - 1;
								FinSegun
							Hasta Que SalirMenu <> 2
							//FinMientras
							
					FinSegun
				FinMientras
				
			2:
				Escribir "Hola viajero, bien venido al mundo de EXpi Online";
				Escribir "Ingresa un usuario";
				Leer UsuarioNuevo;
				Escribir "Ingresa una contrasena";
				Leer ContrasenaNueva;
				
				Escribir "Bien venido ", UsuarioNuevo," al mundo de Expi Online";
				
				Salir <- 2;
				SalirJuego <- 2;
				
				Mientras Salir == 2 Hacer
					Borrar Pantalla;
					Escribir "Elige tu clase viajero";
					Escribir "--------------------------------------------";
					Escribir "1. Guerrero";
					Escribir "2. Mago";
					Escribir "3. Arquero";
					Escribir "--------------------------------------------";
					Leer ClaseSeleccionada;
					
					Segun ClaseSeleccionada Hacer
						1:
							Escribir "La clase Guerrero cuenta con estas estadisticas:";
							Escribir "--------------------------------";
							Escribir "Vida:    150 puntos";
							Escribir "Ataque:  50 puntos";
							Escribir "Mana:    10 puntos";
							Escribir "--------------------------------";
							Escribir "Desea continuar con el Guerrero?";
							Escribir "1. Si";
							Escribir "2. No";
							Leer Salir;
							Si Salir == 1 Entonces
								SalirJuego <- 1;
							FinSi
							
						2:
							Escribir "La clase Mago cuenta con estas estadisticas:";
							Escribir "--------------------------------";
							Escribir "Vida:    80 puntos";
							Escribir "Ataque:  10 puntos";
							Escribir "Mana:    100 puntos";
							Escribir "--------------------------------";
							Escribir "Desea continuar con el Mago?";
							Escribir "1. Si";
							Escribir "2. No";
							Leer Salir;
							Si Salir == 1 Entonces
								SalirJuego <- 1;
							FinSi
							
						3:
							Escribir "La clase Arquero cuenta con estas estadisticas:";
							Escribir "--------------------------------";
							Escribir "Vida:    100 puntos";
							Escribir "Ataque:  40 puntos";
							Escribir "Mana:    30 puntos";
							Escribir "--------------------------------";
							Escribir "Desea continuar con el Arquero?";
							Escribir "1. Si";
							Escribir "2. No";
							Leer Salir;
							Si Salir == 1 Entonces
								SalirJuego <- 1;
							FinSi
							
						De otro modo:
							Escribir "La clase que intenta seleccionar esta bloqueada o no existe";
					FinSegun
				FinMientras
				
				Limpiar Pantalla;
				Escribir "¡Clase confirmada con éxito! Preparando tu aventura...";
				
			3:
				Escribir "Hasta luego viajero";
				SalirJuego <- SalirJuego - 1;
				
			De Otro Modo:
				Escribir "Seleccione una opcion valida";
		FinSegun
	FinMientras
FinAlgoritmo