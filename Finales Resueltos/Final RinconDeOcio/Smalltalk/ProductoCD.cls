"Filed out from Dolphin Smalltalk 7"!

Producto subclass: #CD
	instanceVariableNames: 'interprete'
	classVariableNames: 'DescCD IvaCD'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CD guid: (GUID fromString: '{A31BDC16-7786-414D-8C60-CAA042975A9B}')!
CD comment: ''!
!CD categoriesForClass!Kernel-Objects! !
!CD methodsFor!

calcPrecioV
precioVenta:=precioBase*(IvaCD-DescCD +1)!

cargaDatos
"Se cargan los datos del producto CD"
super cargaDatos.
self iInterprete: (Prompter prompt:'Ingrese interprete').
self calcPrecioV.
MessageBox notify: 'CD cargado con exito' caption:'Rincon De Ocio'.!

iInterprete:val
"Se le asigna el interprete"
interprete:=val.!

oTipo
"Se muestra el tipo del producto"
^self yourself.! !
!CD categoriesFor: #calcPrecioV!public! !
!CD categoriesFor: #cargaDatos!public! !
!CD categoriesFor: #iInterprete:!public! !
!CD categoriesFor: #oTipo!public! !

!CD class methodsFor!

IDescCd:val
"Se le asigna el descuento al cd"
DescCD:=(val/100)!

IIvaCd:val
"Se le asigna el iva al cd"
IvaCD:=(val/100)! !
!CD class categoriesFor: #IDescCd:!public! !
!CD class categoriesFor: #IIvaCd:!public! !

