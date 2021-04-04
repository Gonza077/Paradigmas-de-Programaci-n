"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Medico
	instanceVariableNames: 'matricula especialidad estado'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Medico guid: (GUID fromString: '{BBBAE9AB-97E4-4F2B-9141-55088B0C20E3}')!
Medico comment: ''!
!Medico categoriesForClass!Kernel-Objects! !
!Medico methodsFor!

cargaDatos
super cargaDatos.
self iMatri:((Prompter prompt:'Ingrese nro de Matricula')asNumber).
self iEspec: (Prompter prompt:'Ingrese especialidad').
self iEst:'L'.!

iEspec: val
"Se le da el valor al atributo del objeto especialidad"
especialidad :=val.!

iEst: val
"Se le da el valor al atributo del objeto estado"
estado:=val.!

iMatri:val
"Se le da el valor al  atributo del objeto matricula"
matricula:=val.!

oEspec
"Se muetra el valor del atributo especialidad del objeto"
^especialidad!

oEst
"Se muetra el valor del atributo estado del objeto"
^estado!

oMatri
"Se muetra el valor del atributo matricula del objeto"
^matricula!

oTipo
^self yourself! !
!Medico categoriesFor: #cargaDatos!public! !
!Medico categoriesFor: #iEspec:!public! !
!Medico categoriesFor: #iEst:!public! !
!Medico categoriesFor: #iMatri:!public! !
!Medico categoriesFor: #oEspec!public! !
!Medico categoriesFor: #oEst!public! !
!Medico categoriesFor: #oMatri!public! !
!Medico categoriesFor: #oTipo!public! !

