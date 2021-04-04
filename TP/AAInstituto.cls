"Filed out from Dolphin Smalltalk XP"!

Object subclass: #AAInstituto
	instanceVariableNames: 'clientes profesionales productos servicios'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AAInstituto guid: (GUID fromString: '{DC9C3809-EEE7-483A-9DB4-977AE5FA432B}')!
AAInstituto comment: ''!
!AAInstituto categoriesForClass!Kernel-Objects! !
!AAInstituto methodsFor!

agregoServicio
	"Se realiza la busqueda del cliente en la coleccion y se agrega el servicio"
	| aux |
	self buscoCliente.																																			
														

		
!

buscoCliente
"Busca al cliente en la coleccion"
|aux nombre|
nombre:= Prompter prompt: 'Ingrese nombre de cliente a buscar' caption: 'Busqueda en el archivo'.
         	aux:= clientes detect: [:e | e oNombre = nombre] ifNone: [MessageBox notify: 'Cliente inexsistente, agregegarlo del menu'. self Menu ].
	self buscoProfesional:aux.
	!

buscoProfesional:val
"Busca al profesional en la coleccion"
|tipo aux2 aux|
tipo:=(Prompter prompt: 'Ingrese tipo de especialidad 1)Manicuria/2)Peluqueria/3)Cosmetologia')asNumber.
(tipo=1) ifTrue:[tipo='Manicuria'].
(tipo=2) ifTrue:[tipo:='Peluqueria'].
(tipo=3) ifTrue:[tipo:='Cosmetologia'].
					aux2:= profesionales detect: [:e | e oEspecialidad = tipo & e oEstado = true] ifNone:[aux2:=nil].
					aux2 notNil ifTrue: [(aux2 oEstado)  ifTrue:
											[aux2 iEstado: false.
											MessageBox notify: 'El profesional que lo atiende sera: ', aux2 oNombre caption:' Profesional asignado'	.
										 	(tipo='Cosmetologia')  ifTrue:[aux:=val.  aux iServicios: (self creoCosmetologia: aux2 oNombre).].
					 						(tipo='Manicuria')       ifTrue:[aux:=val.  aux iServicios: (self creoManicuria: aux2 oNombre)].
					 						(tipo='Peluqueria')       ifTrue: [aux:=val.  aux iServicios:(self creoPeluqueria: aux2 oNombre).]]
							ifFalse:[MessageBox notify: 'Personal ocupado' caption: ' No hay disponibilidad'.]].
							
						

!

busquedaProductos:val
"Busca a los productos en la coleccion, se calcula el verdadero precio del servicio"
|aux aux2 acum|
aux:=val.
acum:=aux oPrecio.
aux2:= productos select:[:a | (aux oProductos) includes: a oCodigo].
aux2 do:[:b | acum:=(b oPrecio+ acum)].
aux iPrecio: acum.
!

calculoHonorario
"Calcula los honorarios del profesional en el mes ingresado"
|aux aux2 mes nombre honorario|
mes:=(Prompter prompt: 'Ingrese numero del mes a buscar')asNumber.
nombre:=Prompter prompt: 'Ingrese nombre del Profesonal a buscar'.
honorario:=0.
aux:= profesionales detect: [:e | e oNombre = nombre].             										
aux2:= servicios select:[:a | (a oProfesional = nombre) & (mes= a oFecha monthIndex)].
aux2 do: [:b | honorario:= b oPrecio * aux oPorcentaje + honorario].
MessageBox notify: 'Los honorarios son :  ' , honorario printString caption: aux oNombre.!

cargaDatos
"Menu de carga pre-Servicio"
	| opc resp|
	resp:=true.
	[resp] whileTrue: [opc := (Prompter prompt: '1-Productos  2-Profesional' caption: 'Cargando Datos') asNumber.
	opc = 1 ifTrue: [self cargoColeccionProducto].
	opc = 2 ifTrue: [self cargoColeccionProfesional].
           resp:= MessageBox confirm: '¿Otra carga en los registros?'].
	(resp) ifFalse: [self menu]
!

cargoColeccionCliente
"Se carga la coleccion clientes"
	| aux |
	aux := AACliente new.	
           aux cargaCliente.
	clientes add: aux.	
 !

cargoColeccionProducto
"Se carga la coleccion de productos"
	| aux resp |
	aux := AAProductos new.
	resp:= true.
	[resp] whileTrue: [aux cargaProductos.
			productos add: aux.
			resp := MessageBox confirm: 'Desea cargar otro producto' caption: '¿Otro Producto?'].		!

cargoColeccionProfesional
"Se carga la coleccion de profesionales"
	| aux |	
	aux := AAProfesionales new.
	aux cargaDatosProfesional.
	profesionales add: aux.


			
			!

creoCosmetologia: val 
"Crea el servicio Cosmetologia"
	| aux aux2 |
	aux := Cosmetologia new.
	aux inicializoServicio.
	aux iProfesional: val.
	self busquedaProductos:aux.
	servicios add: aux.

	!

creoManicuria: val 
"Crea el servicio Manicuria"
	| aux aux2 |
	aux := Manicuria new.
	aux inicializoServicio.
	aux iProfesional: val.
	self buscoProductos:aux.
	servicios add:aux.
!

creoPeluqueria:val
"Crea el servicio Peluqueria"
           |aux aux2|
	aux:=Peluqueria new. 
	aux inicializoServicio. 
	aux iProfesional:val. 
	self buscoProductos:aux.
	servicios add:aux.

	
!

inicializar
	"Se crean las colecciones y se inicializan los valores"
	| opc |
	clientes := OrderedCollection new.
	productos := OrderedCollection new.
	profesionales := OrderedCollection new.
	servicios:=OrderedCollection new.
	opc := (Prompter prompt: ' 1- Cargar datos del Instituto  2- Menu Principal')asNumber.
	opc = 1 ifTrue: [self cargaDatos].
	opc = 2 ifTrue: [self menu].!

menu
"Menu principal"
|opc resp|
	resp:=true.
[resp] whileTrue: [	
	opc:=(Prompter prompt: '1- Nuevo cliente 2-  Agregar un servicio a cliente(existente) 3- Calcular Honorarios de un Profesional' caption: 'Por favor elija una opcion')asNumber.
	opc= 1 ifTrue: [self cargoColeccionCliente].
	opc=2 ifTrue: [self agregoServicio].
	opc=3 ifTrue: [self calculoHonorario].
 	resp:=MessageBox confirm: '¿Desea hacer una operacion mas del Menu?' caption: 'Por favor responda'.]! !
!AAInstituto categoriesFor: #agregoServicio!public! !
!AAInstituto categoriesFor: #buscoCliente!public! !
!AAInstituto categoriesFor: #buscoProfesional:!public! !
!AAInstituto categoriesFor: #busquedaProductos:!public! !
!AAInstituto categoriesFor: #calculoHonorario!public! !
!AAInstituto categoriesFor: #cargaDatos!public! !
!AAInstituto categoriesFor: #cargoColeccionCliente!public! !
!AAInstituto categoriesFor: #cargoColeccionProducto!public! !
!AAInstituto categoriesFor: #cargoColeccionProfesional!public! !
!AAInstituto categoriesFor: #creoCosmetologia:!public! !
!AAInstituto categoriesFor: #creoManicuria:!public! !
!AAInstituto categoriesFor: #creoPeluqueria:!public! !
!AAInstituto categoriesFor: #inicializar!public! !
!AAInstituto categoriesFor: #menu!public! !

