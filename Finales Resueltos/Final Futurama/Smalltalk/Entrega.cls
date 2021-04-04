"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Entrega
	instanceVariableNames: 'fecha origen destino carga pilotoH copolitoR costo'
	classVariableNames: 'Impuesto'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Entrega guid: (GUID fromString: '{4144DCEB-0ED0-42BE-8C85-C8C5819EB02A}')!
Entrega comment: ''!
!Entrega categoriesForClass!Kernel-Objects! !
!Entrega methodsFor!

calCosto:car
"Se calcula el costo de la entrega recibiendo el objeto carga como parametro"
costo:= (car oValor + car oValSeg)*(1+Impuesto).!

cargaDatos
self iFecha.
self iOri:(Prompter prompt:'Ingrese origen de la entrega').
self iDest: (Prompter prompt:'Ingrese destino de la entrega').
!

iCarga:val
"Se le asigna la carga a la entrega"
carga:=val.!

iCop:val
"Se le asigna el copiloto a la entrega"
copolitoR:=val.!

iDest:val
"Se le asigna el destino a la entrega"
destino:=val.!

iFecha
"Se le asigna el dia de la fecha correspondiente al atributo fecha"
fecha:=Date today.!

iOri:val
"Se le asigna el origen a la entrega"
origen:=val.!

iPil:val
"Se le asigna el piloto a la entrega"
pilotoH:=val.!

oCarga
"Se muestra la carga de la entrega"
^carga.!

oCop
"Se muetras el copiloto a la entrega"
^copolitoR!

oCosto
"Se muestra el costo de la entrega"
^costo!

oDest
"Se muestra el destino de la entrega"
^destino.!

oFecha
"Se muestra la fecha del dia que se realizo la entrega"
^fecha!

oOri
"Se muestra el origen de la entrega"
^origen!

oPil
"Se muestra el piloto de la entrega"
^pilotoH.! !
!Entrega categoriesFor: #calCosto:!public! !
!Entrega categoriesFor: #cargaDatos!public! !
!Entrega categoriesFor: #iCarga:!public! !
!Entrega categoriesFor: #iCop:!public! !
!Entrega categoriesFor: #iDest:!public! !
!Entrega categoriesFor: #iFecha!public! !
!Entrega categoriesFor: #iOri:!public! !
!Entrega categoriesFor: #iPil:!public! !
!Entrega categoriesFor: #oCarga!public! !
!Entrega categoriesFor: #oCop!public! !
!Entrega categoriesFor: #oCosto!public! !
!Entrega categoriesFor: #oDest!public! !
!Entrega categoriesFor: #oFecha!public! !
!Entrega categoriesFor: #oOri!public! !
!Entrega categoriesFor: #oPil!public! !

!Entrega class methodsFor!

IImp:val
"Se le asigna el impuesto a la entrega"
Impuesto:=(val/100)! !
!Entrega class categoriesFor: #IImp:!public! !

