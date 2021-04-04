"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Socio
	instanceVariableNames: 'nroSoc'
	classVariableNames: 'Num'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Socio guid: (GUID fromString: '{FD31007D-FBB7-43E2-8116-3334636722E6}')!
Socio comment: ''!
!Socio categoriesForClass!Kernel-Objects! !
!Socio methodsFor!

cargaDatos
super cargaDatos.
self iNroSocio: Num.
Socio ProxNum.!

iNroSocio:val
nroSoc:=val.
!

oNroSocio
"Muestro el numero del socio"
^nroSoc! !
!Socio categoriesFor: #cargaDatos!public! !
!Socio categoriesFor: #iNroSocio:!public! !
!Socio categoriesFor: #oNroSocio!public! !

!Socio class methodsFor!

NumIni
"Se define el numero de socio en el cual se quiere arrancar"
Num:=1.!

ProxNum
Num:=Num+1.
! !
!Socio class categoriesFor: #NumIni!public! !
!Socio class categoriesFor: #ProxNum!public! !

