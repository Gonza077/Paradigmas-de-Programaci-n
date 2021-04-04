"Filed out from Dolphin Smalltalk XP"!

Object subclass: #AAServicios
	instanceVariableNames: 'descripcion fecha precioS productos1 profesional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AAServicios guid: (GUID fromString: '{6416F4C2-9083-4408-A9EE-348FC8CE23CF}')!
AAServicios comment: ''!
!AAServicios categoriesForClass!Kernel-Objects! !
!AAServicios methodsFor!

cargaDatos
"Clase abstracta de los servicios"
fecha:= Date today.
descripcion:=Prompter prompt: 'Ingrese descripcion del servicio'.
productos1:=OrderedCollection new.
self CargoProductosServicio.

!

cargoProductosServicio
"Se carga la coleccion de productos utilizados"
|resp aux num|
resp:=true.
[resp] whileTrue: [  
			num:=(Prompter prompt: 'Ingrese codigos de producto')asNumber.
			productos1 add: num.
			resp:= MessageBox confirm: '¡Otro producto?' caption: 'Responda'.].

			
			!

oCodigoP
^productos1!

oDescripcion
^descripcion!

oFecha
^fecha!

oPrecio
^precioS
	!

oProductos
^productos1!

oProfesional
^profesional! !
!AAServicios categoriesFor: #cargaDatos!public! !
!AAServicios categoriesFor: #cargoProductosServicio!public! !
!AAServicios categoriesFor: #oCodigoP!public! !
!AAServicios categoriesFor: #oDescripcion!public! !
!AAServicios categoriesFor: #oFecha!public! !
!AAServicios categoriesFor: #oPrecio!public! !
!AAServicios categoriesFor: #oProductos!public! !
!AAServicios categoriesFor: #oProfesional!public! !

