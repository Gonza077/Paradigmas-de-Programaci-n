"Filed out from Dolphin Smalltalk XP"!

AAServicios subclass: #Cosmetologia
	instanceVariableNames: ''
	classVariableNames: 'PrecioBase'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cosmetologia guid: (GUID fromString: '{DEB07584-3719-4576-B878-32E78B24434C}')!
Cosmetologia comment: ''!
!Cosmetologia categoriesForClass!Kernel-Objects! !
!Cosmetologia methodsFor!

inicializoServicio
"Se da valor al objeto de la clase Cosmetologia"
	PrecioBase:=100.
	self iPrecio:PrecioBase.
	super cargaDatos.
	
	
!

iPrecio:val
precioS:=val.
	
	
!

iProfesional:val
profesional:=val.! !
!Cosmetologia categoriesFor: #inicializoServicio!public! !
!Cosmetologia categoriesFor: #iPrecio:!public! !
!Cosmetologia categoriesFor: #iProfesional:!public! !

