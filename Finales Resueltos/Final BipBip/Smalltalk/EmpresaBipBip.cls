"Filed out from Dolphin Smalltalk 7"!

Object subclass: #EmpresaBipBip
	instanceVariableNames: 'bajadas usuarios companias productos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
EmpresaBipBip guid: (GUID fromString: '{E6A3BC8B-11C2-4613-A0C2-0D156B2DC0DB}')!
EmpresaBipBip comment: ''!
!EmpresaBipBip categoriesForClass!Kernel-Objects! !
!EmpresaBipBip methodsFor!

inicializar
"Se inicializan los datos"
| usuario producto compania resp |
companias := OrderedCollection new.
usuarios := OrderedCollection new.
bajadas := OrderedCollection new.
productos := OrderedCollection new.
	
resp := true.
[resp = true] whileTrue: 
			[MessageBox notify: 'Se cargaran los datos de las compañias' caption: 'Bip Bip'.
			compania := Compania new.
			compania cargaDatos.
			companias add: compania.
			resp := MessageBox confirm: '¿Desea cargar otra compañia?' caption: 'Bip Bip'].
	
resp := true.
[resp = true] whileTrue: 
			[MessageBox notify: 'Se cargaran los datos de los Usuarios' caption: 'Bip Bip'.
			usuario := Usuario new.
			usuario cargaDatos:companias.
			usuarios add: usuario.
			resp := MessageBox confirm: '¿Desea cargar otro usuario?' caption: 'Bip Bip'].

Producto NumIni.
Producto IPorc: ((Prompter prompt: 'Ingrese porcentaje extra de los productos')asNumber).
Foto IPrecio:  ((Prompter prompt: 'Ingrese precio de las fotos')asNumber).
Ringtone ICantMax: ((Prompter prompt:'Ingrese la cantidad maxima de bajadas de los Ringtone')asNumber).
Foto ICantMax: ((Prompter prompt:'Ingrese la cantidad maxima de bajadas de las Fotos')asNumber).
Juego ICantMax: ((Prompter prompt:'Ingrese la cantidad maxima de bajadas de los Juegos')asNumber).
	
resp:= true.
[resp = true] whileTrue: 
			[MessageBox notify: 'Se cargaran los datos de las productos' caption: 'Bip Bip'.
			producto := (Prompter prompt: ' ¿Tipo de producto? Foto(F)/Ringtone(R)/Juego(J)') asUppercase.
			(producto = 'F' )ifTrue: [producto := Foto new.].
			(producto = 'J' )ifTrue: [producto := Juego new].
			(producto = 'R') ifTrue: [producto := Ringtone new].
			producto cargaDatos.
			productos add: producto.
			resp := MessageBox confirm: '¿Desea cargar otro producto?' caption: 'Bip Bip']!

listadoBaj
"Se hace el lsitado de las bajadas"
|fecha1 fecha2  listaBajadas monto listadoProductos|
fecha1:=Date fromString: (Prompter prompt:'Ingrese fecha desde dd/mm/aa').
fecha2:=Date fromString: (Prompter prompt:'Ingrese fecha hasta dd/mm/aa').
listaBajadas:=bajadas select:[:i|((i oFecha>= fecha1) & (i oFecha<=fecha2))].
(listaBajadas isEmpty)
ifTrue:[MessageBox notify: 'No se realizaron pedidos entre esas fechas'caption:'Bip Bip']	
ifFalse:[
Transcript clear;show: 'Codigo Producto';tab;tab;tab;show:'Tipo de Producto';tab;tab;tab;show:'Descripcion';tab;tab;tab;show:'Cantidad de bajadas';tab;tab;tab;tab;show:'Monto de todas las bajadas del producto';cr.
productos do:[:i| monto:=0.
			 listadoProductos:=listaBajadas select:[:j| j oProdu oCodi = i oCodi].
			 listadoProductos do:[:k | monto:=monto + k oPrecio].
Transcript show: i oCodi printString;tab;tab;tab;tab;show: i oTipo printString;tab;tab;tab;tab;tab;show: i oDescrip printString;tab;tab;tab;tab;show: i oCantBajadas printString;tab;tab;tab;tab;tab;tab;show:monto printString;cr]
            ].		
						

!

menu
"Menu de opciones"
|resp|
resp:=true.
[resp = true] whileTrue: [
				    resp:=Prompter prompt:'1-Registrar bajada 2-Listado de bajadas'. 
				    (resp='1' ) ifTrue:[self regBajada].
				    (resp='2')ifTrue:[self listadoBaj].
				    resp:=MessageBox confirm:'¿Desea hacer otra operacion?'caption:'Bip Bip'
				    ].
MessageBox notify:'Gracias por usar el programa'caption:'Bip Bip'!

regBajada
"Se registra la bajada"
|usu producto bajada|
usu:=nil . producto:=nil. bajada:=nil.
usu:=Prompter prompt:'Ingrese nombre de usuario'.
usu:= usuarios detect:[:i | i oUsuario = usu]ifNone:[MessageBox notify:'Usuario no encontrado, se volvera al menu'. self menu].
producto:=(Prompter prompt:'Ingrese codigo del producto a buscar')asNumber.
producto:= productos detect:[:i | (i oCodi =producto) & (i oBajadasDispo=true) ]
				ifNone:[MessageBox notify:'Producto no encotrado/Cantidad de bajadas superadas,reingrese'. self menu.].
producto actBajadas.
bajada:=Bajada new.
bajada cargaDatos:producto and: usu.
bajadas add:bajada.
MessageBox notify:'Bajada cargada con exito'.
! !
!EmpresaBipBip categoriesFor: #inicializar!public! !
!EmpresaBipBip categoriesFor: #listadoBaj!public! !
!EmpresaBipBip categoriesFor: #menu!public! !
!EmpresaBipBip categoriesFor: #regBajada!public! !

