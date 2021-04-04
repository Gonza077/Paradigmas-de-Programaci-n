"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Linea
	instanceVariableNames: 'producto cantidad nroL totLinea'
	classVariableNames: 'NumLinea'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Linea guid: (GUID fromString: '{D3192D2E-679E-4D06-BC26-37B66BBFC089}')!
Linea comment: ''!
!Linea categoriesForClass!Kernel-Objects! !
!Linea methodsFor!

calcSubT
"Se recibe el producto y se calcula  el precio del mismo con el precio del producto multiplicado por la cantidad"
totLinea:= (producto oPrecioV) *cantidad.!

iCant:val
"Se ingresa la cantidad de productos a comprar"
cantidad:=val.!

iNroL
"Se le asigna el numero a la linea"
nroL:=NumLinea.!

iProdu:val
"Se le asigna un producto"
producto:=val.!

oCant
"Se muestra la cantidad"
^cantidad!

oNroLinea
"Se muestra el numero de la linea"
^nroL !

oProdu
"Se muestra el producto"
^producto!

oSubT
"Se muestra el subtotal"
^totLinea.! !
!Linea categoriesFor: #calcSubT!public! !
!Linea categoriesFor: #iCant:!public! !
!Linea categoriesFor: #iNroL!public! !
!Linea categoriesFor: #iProdu:!public! !
!Linea categoriesFor: #oCant!public! !
!Linea categoriesFor: #oNroLinea!public! !
!Linea categoriesFor: #oProdu!public! !
!Linea categoriesFor: #oSubT!public! !

!Linea class methodsFor!

NumIniLinea
NumLinea:=1.!

PNum
NumLinea:=NumLinea+1.! !
!Linea class categoriesFor: #NumIniLinea!public! !
!Linea class categoriesFor: #PNum!public! !

