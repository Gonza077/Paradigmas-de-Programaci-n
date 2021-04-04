"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Servicio
	instanceVariableNames: 'nroServi fecha costo vehiculo prestador'
	classVariableNames: 'Num'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Servicio guid: (GUID fromString: '{E9F579A5-8BA7-4088-9B24-55F41EAEE43C}')!
Servicio comment: ''!
!Servicio categoriesForClass!Kernel-Objects! !
!Servicio methodsFor!

cargaDatos
self iNroServi: Num.
Servicio ProxNum.
self iFecha.
!

iFecha
fecha:=Date today.!

iNroServi:val
nroServi:=val.
!

iPrest:val
prestador:=val.
!

iVehi:val
vehiculo:=val.!

oCosto
^costo!

oFecha
^fecha.!

oNroServi
^nroServi.!

oPrest
^prestador!

oVehi
^vehiculo! !
!Servicio categoriesFor: #cargaDatos!public! !
!Servicio categoriesFor: #iFecha!public! !
!Servicio categoriesFor: #iNroServi:!public! !
!Servicio categoriesFor: #iPrest:!public! !
!Servicio categoriesFor: #iVehi:!public! !
!Servicio categoriesFor: #oCosto!public! !
!Servicio categoriesFor: #oFecha!public! !
!Servicio categoriesFor: #oNroServi!public! !
!Servicio categoriesFor: #oPrest!public! !
!Servicio categoriesFor: #oVehi!public! !

!Servicio class methodsFor!

NumIni
Num:=1!

ProxNum
Num:=Num+1.! !
!Servicio class categoriesFor: #NumIni!public! !
!Servicio class categoriesFor: #ProxNum!public! !

