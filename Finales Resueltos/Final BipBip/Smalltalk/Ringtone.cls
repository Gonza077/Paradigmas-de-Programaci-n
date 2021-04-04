"Filed out from Dolphin Smalltalk 7"!

Producto subclass: #Ringtone
	instanceVariableNames: 'cancion autor'
	classVariableNames: 'CantBajadas CantMaxBajadas'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Ringtone guid: (GUID fromString: '{A818631E-7554-431F-8C66-21E0BBF8830E}')!
Ringtone comment: ''!
!Ringtone categoriesForClass!Kernel-Objects! !
!Ringtone methodsFor!

actBajadas
"Se consulta si hay bajadas disponibles"
CantBajadas:=CantBajadas+1.
			!

calcPrecio
"Se calcula el precio del Rigntone"
precio:=(((Prompter prompt:'Ingrese precio del Rigntone')asNumber)*(1+Porc)).

!

cargaDatos
"Se cargan los datos del Rigntone"
super iCodi: Num.
Producto PNum.
super iDescrip: (Prompter prompt:'Ingrese descripcion').
self iCanc: (Prompter prompt:'Ingrese nombre de la cancion').
self iAut: (Prompter prompt:'Ingrese autor de la cancion').
self calcPrecio.
!

iAut:val
"Se asigna el autor de la cancion"
autor:=val.!

iCanc:val
"Se asigna el nombre de la cancion"
cancion:=val.!

oAut
"Se muestra el autor del Rigntone"
^autor!

oBajadasDispo
"Se muestra la cantidad de bajadas disponibles"
(CantBajadas<CantMaxBajadas)ifTrue:[^true]
					    ifFalse:[^false].!

oCanc
"Se muestra el nombre de la cancion"
^cancion!

oCantBajadas
"Muestro la cantidad de bajadas"
^CantBajadas!

oTipo
^'Ringtone'! !
!Ringtone categoriesFor: #actBajadas!public! !
!Ringtone categoriesFor: #calcPrecio!public! !
!Ringtone categoriesFor: #cargaDatos!public! !
!Ringtone categoriesFor: #iAut:!public! !
!Ringtone categoriesFor: #iCanc:!public! !
!Ringtone categoriesFor: #oAut!public! !
!Ringtone categoriesFor: #oBajadasDispo!public! !
!Ringtone categoriesFor: #oCanc!public! !
!Ringtone categoriesFor: #oCantBajadas!public! !
!Ringtone categoriesFor: #oTipo!public! !

!Ringtone class methodsFor!

ICantMax:val
"Se le asigna la cantidad maxima de bajadas a los ringtone"
CantMaxBajadas:=val.
CantBajadas:=0.! !
!Ringtone class categoriesFor: #ICantMax:!public! !

