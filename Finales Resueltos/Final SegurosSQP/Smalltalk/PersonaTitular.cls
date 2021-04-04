"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Titular
	instanceVariableNames: 'dni'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Titular guid: (GUID fromString: '{A3635F1B-8357-4EEA-84C2-E79A3E46D0AA}')!
Titular comment: ''!
!Titular categoriesForClass!Kernel-Objects! !
!Titular methodsFor!

cargaDatos
MessageBox notify: 'Se cargaran los datos del titular'.
super cargaDatos.
self iDni:((Prompter prompt: 'Ingrese dni del titular')).!

iDni:val
dni:=val!

oDni
^dni.! !
!Titular categoriesFor: #cargaDatos!public! !
!Titular categoriesFor: #iDni:!public! !
!Titular categoriesFor: #oDni!public! !

