"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Bajada
	instanceVariableNames: 'producto precioBajada usuario fecha'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bajada guid: (GUID fromString: '{D3CE66BB-CF10-474E-A3C3-9E0C8A6037CC}')!
Bajada comment: ''!
!Bajada categoriesForClass!Kernel-Objects! !
!Bajada methodsFor!

calcPrecio
"Se calcula el precio de la bajada"
precioBajada:= producto oPrecio * (1+  usuario oComp oPorc)!

cargaDatos:produ and:usu
"Se cargan los datos de la bajada"
self iFecha.
self iProdu:produ.
self iUsu: usu.
self calcPrecio!

iFecha
"Se le asigna la fecha"
fecha:=Date today.!

iProdu:val
"Se le asigna el producto a la bajada"
producto:=val!

iUsu:val
"Se le asigna el usuario a la bajada"
usuario:=val!

oFecha
"Se muestra la fecha de la bajada"
^fecha!

oPrecio
"Muestro el precio del a bajada"
^precioBajada!

oProdu
"Se muestra el producto de la bajada"
^producto!

oUsu:val
"Se muestra el usuario de la bajada"
^usuario! !
!Bajada categoriesFor: #calcPrecio!public! !
!Bajada categoriesFor: #cargaDatos:and:!public! !
!Bajada categoriesFor: #iFecha!public! !
!Bajada categoriesFor: #iProdu:!public! !
!Bajada categoriesFor: #iUsu:!public! !
!Bajada categoriesFor: #oFecha!public! !
!Bajada categoriesFor: #oPrecio!public! !
!Bajada categoriesFor: #oProdu!public! !
!Bajada categoriesFor: #oUsu:!public! !

