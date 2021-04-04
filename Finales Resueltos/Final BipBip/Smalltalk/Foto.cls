"Filed out from Dolphin Smalltalk 7"!

Producto subclass: #Foto
	instanceVariableNames: ''
	classVariableNames: 'CantBajadas CantMaxBajadas Precio'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Foto guid: (GUID fromString: '{C0F0330D-5358-4704-B14C-15898A3C470E}')!
Foto comment: ''!
!Foto categoriesForClass!Kernel-Objects! !
!Foto methodsFor!

actBajadas
"Se consulta si hay bajadas disponibles"
CantBajadas:=CantBajadas+1.
			!

calcPrecio
precio:= Precio *(1+Porc).!

cargaDatos
"Se carga los datos de la foto"
super iCodi:Num.
super iDescrip: (Prompter prompt:'Ingrese descripcion').
Producto PNum.
self calcPrecio.!

oBajadasDispo
"Se muestra la cantidad de bajadas disponibles"
(CantBajadas<CantMaxBajadas)ifTrue:[^true]
					    ifFalse:[^false].!

oCantBajadas
"Muestro la cantidad de bajadas"
^CantBajadas!

oTipo
^'Foto'! !
!Foto categoriesFor: #actBajadas!public! !
!Foto categoriesFor: #calcPrecio!public! !
!Foto categoriesFor: #cargaDatos!public! !
!Foto categoriesFor: #oBajadasDispo!public! !
!Foto categoriesFor: #oCantBajadas!public! !
!Foto categoriesFor: #oTipo!public! !

!Foto class methodsFor!

ICantMax:val
"Se le asigna la cantidad maxima de bajadas a los ringtone"
CantMaxBajadas:=val.
CantBajadas:=0.!

IPrecio:val
"Se le asigna el precio fijo a las fotos"
Precio:=val.! !
!Foto class categoriesFor: #ICantMax:!public! !
!Foto class categoriesFor: #IPrecio:!public! !

