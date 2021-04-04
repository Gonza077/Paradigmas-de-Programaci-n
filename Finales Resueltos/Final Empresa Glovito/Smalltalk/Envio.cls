"Filed out from Dolphin Smalltalk XP"!

Object subclass: #Envio
	instanceVariableNames: 'cliente empleado fecha precio direcRet direcEntre nroEnvio'
	classVariableNames: 'Basico Num'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Envio guid: (GUID fromString: '{D094904F-DF2C-44DB-ACB8-863B604671D9}')!
Envio comment: ''!
!Envio categoriesForClass!Kernel-Objects! !
!Envio methodsFor!

calcPrecio
precio:=Basico.!

cargaDatos
self iFecha.
self iDirecEnt:(Prompter prompt:'Ingrese direccion de entrega').
self iDirecRet:(Prompter prompt:'Ingrese direccion de retiro').
self iNroEnv: (Num).
self class ProxNro.
self calcPrecio.!

iCli:val
cliente:=val!

iDirecEnt:val
direcEntre:=val!

iDirecRet:val
direcRet:=val!

iEmp:val
empleado:=val!

iFecha
fecha:=Date today.!

iNroEnv:val
nroEnvio:=val!

oCli
^cliente!

oDirecEnt
^direcEntre!

oDirecRet
^direcRet!

oEmp
^empleado!

oFecha
^fecha.!

oNroEnv
^nroEnvio!

oPrecio
^precio!

oTipo
^self yourself! !
!Envio categoriesFor: #calcPrecio!public! !
!Envio categoriesFor: #cargaDatos!public! !
!Envio categoriesFor: #iCli:!public! !
!Envio categoriesFor: #iDirecEnt:!public! !
!Envio categoriesFor: #iDirecRet:!public! !
!Envio categoriesFor: #iEmp:!public! !
!Envio categoriesFor: #iFecha!public! !
!Envio categoriesFor: #iNroEnv:!public! !
!Envio categoriesFor: #oCli!public! !
!Envio categoriesFor: #oDirecEnt!public! !
!Envio categoriesFor: #oDirecRet!public! !
!Envio categoriesFor: #oEmp!public! !
!Envio categoriesFor: #oFecha!public! !
!Envio categoriesFor: #oNroEnv!public! !
!Envio categoriesFor: #oPrecio!public! !
!Envio categoriesFor: #oTipo!public! !

!Envio class methodsFor!

IBasico:val
Basico:=val!

ProxNro
Num:=Num+1!

ProxNumIni:val
Num:=val! !
!Envio class categoriesFor: #IBasico:!public! !
!Envio class categoriesFor: #ProxNro!public! !
!Envio class categoriesFor: #ProxNumIni:!public! !

