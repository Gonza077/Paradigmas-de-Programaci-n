"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Producto
	instanceVariableNames: 'codigo precioBase precioVenta anioPubli titulo'
	classVariableNames: 'Num'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Producto guid: (GUID fromString: '{611CB7E9-D012-4C4C-96DF-BA23D336CB52}')!
Producto comment: ''!
!Producto categoriesForClass!Kernel-Objects! !
!Producto methodsFor!

cargaDatos
self iCod: Num.
Producto PNum.
self iTit: (Prompter prompt:'Ingrese titulo del producto').
self iPrecioB:((Prompter prompt: 'Ingrese precio base del producto')asNumber).
self iAnioP: (Prompter prompt:'Ingrese año de la publicacion').
!

iAnioP:val
"Se le asigna el año de publicacion al producto"
anioPubli:=val!

iCod:val
"Se le asigna el codigo"
codigo:=val.!

iPrecioB:val
"Se le asigna el precio base del producto"
precioBase:=val.!

iTit:val
"Se asigna el titulo al producto"
titulo:=val.!

oAnioP
"Se muestra el año de publicacion del producto"
^anioPubli!

oCod
"Se muestra el codigo"
^codigo.!

oPrecioV
"Se muestra el precio de venta del producto"
^precioVenta!

oTit
"Se muestra el titulo al producto"
^titulo.! !
!Producto categoriesFor: #cargaDatos!public! !
!Producto categoriesFor: #iAnioP:!public! !
!Producto categoriesFor: #iCod:!public! !
!Producto categoriesFor: #iPrecioB:!public! !
!Producto categoriesFor: #iTit:!public! !
!Producto categoriesFor: #oAnioP!public! !
!Producto categoriesFor: #oCod!public! !
!Producto categoriesFor: #oPrecioV!public! !
!Producto categoriesFor: #oTit!public! !

!Producto class methodsFor!

NumIni
"Se inicializa el numero"
Num:=1.!

PNum
Num:=Num+1.! !
!Producto class categoriesFor: #NumIni!public! !
!Producto class categoriesFor: #PNum!public! !

