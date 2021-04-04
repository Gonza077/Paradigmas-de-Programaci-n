"Filed out from Dolphin Smalltalk XP"!

AAServicios subclass: #Peluqueria
	instanceVariableNames: ''
	classVariableNames: 'PrecioBase'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Peluqueria guid: (GUID fromString: '{817DAC60-8E4D-41B8-879D-0BF433027318}')!
Peluqueria comment: ''!
!Peluqueria categoriesForClass!Kernel-Objects! !
!Peluqueria methodsFor!

inicializoServicio
"Se da valor al objeto de la clase Peluqueria"
	PrecioBase:= 200.
	self iPrecio:PrecioBase.
	super cargaDatos.!

iPrecio:val
precioS:=val.
	
	
!

iProfesional:val
profesional:=val.! !
!Peluqueria categoriesFor: #inicializoServicio!public! !
!Peluqueria categoriesFor: #iPrecio:!public! !
!Peluqueria categoriesFor: #iProfesional:!public! !

