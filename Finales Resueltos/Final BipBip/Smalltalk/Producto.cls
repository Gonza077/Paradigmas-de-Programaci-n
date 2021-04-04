"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Producto
	instanceVariableNames: 'codigo precio descripcion'
	classVariableNames: 'Num Porc'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Producto guid: (GUID fromString: '{BD6EE5D1-11F2-4AA6-9498-CF65D2E52D26}')!
Producto comment: ''!
!Producto categoriesForClass!Kernel-Objects! !
!Producto methodsFor!

iCodi:val
"Se asigna el codigo a cada producto"
codigo:=val.!

iDescrip:val
"Se asigan la descripcion"
descripcion:=val.!

oCodi
"Se muestra el codigo de cada producto"
^codigo!

oDescrip
"Se asigan la descripcion"
^descripcion!

oPrecio
"Se muestra el precio calculado"
^precio! !
!Producto categoriesFor: #iCodi:!public! !
!Producto categoriesFor: #iDescrip:!public! !
!Producto categoriesFor: #oCodi!public! !
!Producto categoriesFor: #oDescrip!public! !
!Producto categoriesFor: #oPrecio!public! !

!Producto class methodsFor!

IPorc:val
"Se asigna el porcentaje de cobro de Bip Bip"
Porc:=val/100!

NumIni
Num:=1.!

PNum
"Se incrementa el numero del producto"
Num:=Num+1! !
!Producto class categoriesFor: #IPorc:!public! !
!Producto class categoriesFor: #NumIni!public! !
!Producto class categoriesFor: #PNum!public! !

