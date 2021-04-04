"Filed out from Dolphin Smalltalk 7"!

Object subclass: #EmpresaFuturama
	instanceVariableNames: 'copilotos pilotos entregas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
EmpresaFuturama guid: (GUID fromString: '{82D7A4AC-A18C-421B-9D57-61A2B172F20B}')!
EmpresaFuturama comment: ''!
!EmpresaFuturama categoriesForClass!Kernel-Objects! !
!EmpresaFuturama methodsFor!

cargaCop
"Se crea y se cargan los atributos del objeto copiloto"
|copiloto|
copiloto:=Robot new.
copiloto cargaDatos.
copilotos add: copiloto.!

cargaPilo
"Se crea y se cargan los atributos del objeto piloto"
|piloto|
piloto:=Humano new.
piloto cargaDatos.
pilotos add:piloto.!

inicializar
	"Se crean las colecciones y se cargan, tambien se inicializa el valor del impuesto agrega a la carga"
	| resp |
	copilotos := OrderedCollection new.
	entregas := OrderedCollection new.
	pilotos := OrderedCollection new.
	MessageBox notify: 'Se cargaran los datos de los pilotos' caption:'Empresa Futurama'.
	resp := true.
	[resp = true] whileTrue: 
			[self cargaPilo.
			resp := MessageBox confirm: '¿Desea cargar otro piloto?' caption:'Empresa Futurama'].
	MessageBox notify: 'Se cargaran los datos de los copilotos'.
	resp := true.
	[resp = true] whileTrue: 
			[self cargaCop.
			resp := MessageBox confirm: '¿Desea cargar otro piloto?' caption:'Empresa Futurama'].
	Entrega IImp: ((Prompter prompt: 'Ingrese el valor del impuesto a las entregas') asNumber).!

listadoEntregas
"Se ingresan las fechas desde hasta para comparar la fecha de las entregas y obtener un listado de las mismas"
|fecha1 fecha2 listaEntregas monto|
monto:=0. fecha1:=nil. listaEntregas:=nil. fecha2:=nil.
fecha1:=  Date fromString: (Prompter prompt:'Ingrese fecha base a comparar'). "Se convierte la fecha tipo stirng a Date"
fecha2:= Date fromString: (Prompter prompt:'Ingrese fecha tope a comparar') ."Se convierte la fecha tipo stirng a Date"
listaEntregas:=entregas select:[:i | (i oFecha >= fecha1) & (i oFecha <= fecha2)].
(listaEntregas isEmpty)
ifTrue:[MessageBox notify:'No hay pedidos entre esas fechas'. self menu]
ifFalse:[
Transcript clear;show:'Las entregas fueron las siguientes';cr;cr.
Transcript show: 'Fecha';tab;tab;tab;tab;show: 'Origen';tab;tab;tab;tab;show:'Destino';tab;tab;tab;show:'Piloto';tab;tab;tab;show:'CopilotoNro';tab;tab;tab;show:'Tipo carga';tab;tab;tab;show:'Costo';cr.
listaEntregas do:[:i |
Transcript show: i oFecha printString;tab;tab;show: i oOri printString;tab;tab;show: i oDest printString;tab;tab;show: i oPil oNomb printString;tab;tab;
		show: i oCop oNro printString;tab;tab;tab;show: i oCarga oTipo printString;tab;tab;show: i oCosto printString;cr;cr.
monto:=monto + i oCosto.].
Transcript cr;show:'Total recaudado entre fechas :';tab;show: monto printString;cr;cr.].



!

menu
"Menu de opciones "
|opc|
opc:=true.
[opc=true]whileTrue:[opc:=Prompter prompt:'1-Registrar entrega 2-Listado de entregas'.
				(opc='1')ifTrue:[self regEntrega].
				(opc='2')ifTrue:[self listadoEntregas].
				opc:=MessageBox confirm:'¿Desea hacer otra operacion?' caption:'Empresa Futurama'.
].
MessageBox notify:'Cerrando programa' caption:'Empresa Futurama'!

regEntrega
"Se crea una entrega y se la registra en al coleccion"
|piloto entrega copiloto carga|
piloto:= nil. copiloto:=nil. entrega:=nil. carga:= nil."Se inicalizan en nil para poder hacerlo en forma recursiva sin tener datos de otra operacion"
piloto:=pilotos detect:[:i | i oEstado ='L']ifNone:[MessageBox notify: 'No hay pilotos disponibles, intente mas tarde' caption:'Empresa Futurama' .self menu.].
piloto iEstado: ('O'). "Actualizar el estado del piloto correspondiente"
copiloto:= copilotos detect:[:j | j oEstado ='L']ifNone:[MessageBox notify: 'No hay copilotos disponibles, intente mas tarde' caption:'Empresa Futurama' .self menu.].
copiloto iEstado:('O')."Actualizar el estado del copiloto correspondiente"
"Dependiendo si es un tipo de carga Inerte o SerVivo, se creara el objeto debido y luego se cargaran los datos del mismo"
carga:=MessageBox confirm:'¿Es una entrega de Seres vivos?' caption:'Empresa Futurama'.
(carga=true)ifTrue:[
			     carga:=MessageBox confirm:'¿Es un ser Terrestre?' caption:'Empresa Futurama'. 
				   (carga=true)ifTrue:[carga:=Terrestre new]
						     ifFalse:[carga:=Alien new].
			   ]
		  ifFalse:[carga:=Inerte new].
carga cargaDatos.
entrega:=Entrega new.
entrega cargaDatos; iPil: (piloto); iCop: (copiloto); iCarga: (carga); calCosto: (carga) .
entregas add:entrega.
MessageBox notify: 'Entrega realizada con exito' caption:'Empresa Futurama'.
"Como no hay opcion de  liberar el copiloto y piloto desde el menu, una vez cargada la entrega los vuelvo a liberar"
piloto iEstado: ('L'). 
copiloto iEstado:('L').! !
!EmpresaFuturama categoriesFor: #cargaCop!public! !
!EmpresaFuturama categoriesFor: #cargaPilo!public! !
!EmpresaFuturama categoriesFor: #inicializar!public! !
!EmpresaFuturama categoriesFor: #listadoEntregas!public! !
!EmpresaFuturama categoriesFor: #menu!public! !
!EmpresaFuturama categoriesFor: #regEntrega!public! !

