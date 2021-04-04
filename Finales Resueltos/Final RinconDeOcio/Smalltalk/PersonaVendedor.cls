"Filed out from Dolphin Smalltalk 7"!

Persona1 subclass: #Vendedor
	instanceVariableNames: 'pedidos'
	classVariableNames: 'Porc SueldoFijo'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Vendedor guid: (GUID fromString: '{F4988C1F-5F49-4368-979E-5B8FC22ECF8C}')!
Vendedor comment: ''!
!Vendedor categoriesForClass!Kernel-Objects! !
!Vendedor methodsFor!

cargaDatos
super cargaDatos.
pedidos:=OrderedCollection new.!

iPedido:val
"Se agregan los pedidos a la coleccion de cada vendedor"
pedidos add:val!

oListaPedidos: f1 and:f2
"Se devuelve una lista con los pedidos realizados entre las fechas"
|lista|
lista:=OrderedCollection new.
pedidos do:[:i | ((i oFecha>=f1) & (i oFecha <=f2))ifTrue:[lista add:i]].
^lista.
!

oPorc
^Porc.! !
!Vendedor categoriesFor: #cargaDatos!public! !
!Vendedor categoriesFor: #iPedido:!public! !
!Vendedor categoriesFor: #oListaPedidos:and:!public! !
!Vendedor categoriesFor: #oPorc!public! !

!Vendedor class methodsFor!

IPorc:val
"Se asigna el porcentaje de comision del vendedor"
Porc:=(val/100).!

ISueldo:val
"Se le asigna el  sueldo fijo"
SueldoFijo:=val.! !
!Vendedor class categoriesFor: #IPorc:!public! !
!Vendedor class categoriesFor: #ISueldo:!public! !

