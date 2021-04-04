"Filed out from Dolphin Smalltalk 7"!

Producto subclass: #Libro
	instanceVariableNames: 'autor iSBN editorial'
	classVariableNames: 'DescLibro IvaLibro'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Libro guid: (GUID fromString: '{24214D5A-AB02-4E0B-8D72-D219C612F412}')!
Libro comment: ''!
!Libro categoriesForClass!Kernel-Objects! !
!Libro methodsFor!

calcPrecio
precioVenta:=precioBase*(1+IvaLibro-DescLibro).
!

cargaDatos
"Se cargan los datos del libro"
super cargaDatos.
self iAutor:(Prompter prompt:'Ingrese autor del libro').
self iEdi:(Prompter prompt:'Ingrese editorial del libro').
self iISBN: (Prompter prompt:'Ingrese ISBN del libro').
self calcPrecio.
MessageBox notify: 'Libro cargado con exito' caption:'Rincon De Ocio'.
!

iAutor:val
"Se le asigna el autor"
autor:=val.
!

iEdi:val
"Se le asigna el editorial"
editorial:=val.!

iISBN:val
"Se le asigna el ISBN al producto"
iSBN:=val!

oAutor
"Se muestra el autor del libro"
^autor!

oEdi
"Se muestra el editorial del producto"
^editorial!

oISBN
"Se muestra el ISBN del producto"
^iSBN! !
!Libro categoriesFor: #calcPrecio!public! !
!Libro categoriesFor: #cargaDatos!public! !
!Libro categoriesFor: #iAutor:!public! !
!Libro categoriesFor: #iEdi:!public! !
!Libro categoriesFor: #iISBN:!public! !
!Libro categoriesFor: #oAutor!public! !
!Libro categoriesFor: #oEdi!public! !
!Libro categoriesFor: #oISBN!public! !

!Libro class methodsFor!

IDescLibro:val
"Se le asiga el descuento al libro"
DescLibro :=(val/100)!

IIvaLibro:val
"Se le asigan el iva al libro"
IvaLibro:=(val/100).! !
!Libro class categoriesFor: #IDescLibro:!public! !
!Libro class categoriesFor: #IIvaLibro:!public! !

