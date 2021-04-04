"Filed out from Dolphin Smalltalk XP"!

AAServicios subclass: #Manicuria
	instanceVariableNames: ''
	classVariableNames: 'PrecioBase'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Manicuria guid: (GUID fromString: '{3BAA9C1F-E00B-4CE1-9C39-C17133DA92D4}')!
Manicuria comment: ''!
!Manicuria categoriesForClass!Kernel-Objects! !
!Manicuria methodsFor!

inicializoServicio
"Se da valor al objeto de la clase Manicuria"
	PrecioBase:=150.
	self iPrecio:PrecioBase.
	super cargaDatos.!

iPrecio:val
precioS:=val.
	
	
!

iProfesional:val
profesional:=val.! !
!Manicuria categoriesFor: #inicializoServicio!public! !
!Manicuria categoriesFor: #iPrecio:!public! !
!Manicuria categoriesFor: #iProfesional:!public! !

