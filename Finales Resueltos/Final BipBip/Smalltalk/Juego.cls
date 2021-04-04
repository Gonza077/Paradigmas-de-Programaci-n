"Filed out from Dolphin Smalltalk 7"!

Producto subclass: #Juego
	instanceVariableNames: ''
	classVariableNames: 'CantBajadas CantMaxBajadas'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Juego guid: (GUID fromString: '{83AB39F8-A5AB-4CC5-A519-FA86DB5A64E1}')!
Juego comment: ''!
!Juego categoriesForClass!Kernel-Objects! !
!Juego methodsFor!

actBajadas
"Se consulta si hay bajadas disponibles"
CantBajadas:=CantBajadas+1.
			!

calcPrecio
"Se calcula el precio del Rigntone0"
precio:=(Prompter prompt:'Ingrese precio del Rigntone')asNumber
!

cargaDatos
super iCodi: Num.
Producto PNum.
super iDescrip: (Prompter prompt:'Ingrese descripcion').
self calcPrecio.!

oBajadasDispo
"Se muestra la cantidad de bajadas disponibles"
(CantBajadas<CantMaxBajadas)ifTrue:[^true]
					    ifFalse:[^false].!

oCantBajadas
"Muestro la cantidad de bajadas"
^CantBajadas!

oTipo
^'Juego'! !
!Juego categoriesFor: #actBajadas!public! !
!Juego categoriesFor: #calcPrecio!public! !
!Juego categoriesFor: #cargaDatos!public! !
!Juego categoriesFor: #oBajadasDispo!public! !
!Juego categoriesFor: #oCantBajadas!public! !
!Juego categoriesFor: #oTipo!public! !

!Juego class methodsFor!

ICantMax:val
"Se le asigna la cantidad maxima de bajadas a los ringtone"
CantMaxBajadas:=val.
CantBajadas:=0.! !
!Juego class categoriesFor: #ICantMax:!public! !

