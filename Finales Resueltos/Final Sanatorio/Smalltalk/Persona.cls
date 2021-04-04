"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Persona
	instanceVariableNames: 'nombre apellido'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Persona guid: (GUID fromString: '{6EEE8AF2-4EF0-4DCE-92C6-FBE716B6FA54}')!
Persona comment: ''!
!Persona categoriesForClass!Kernel-Objects! !
!Persona methodsFor!

cargaDatos
self iNomb:(Prompter prompt:'Ingrese nombre, por favor').
self iApell: (Prompter prompt:'Ingrese apellido').!

iApell: val 
"Se le da valor al atributo del objeto apellido"
apellido:=val
!

iNomb:val
"Se le asigna el nombre al atributo del objeto nombre"
nombre:=val.!

oApell
"Se muestra el atributo del objeto apellido"
^apellido
!

oNomb
"Se muestra el nombre el atributo del objeto nombre"
^nombre! !
!Persona categoriesFor: #cargaDatos!public! !
!Persona categoriesFor: #iApell:!public! !
!Persona categoriesFor: #iNomb:!public! !
!Persona categoriesFor: #oApell!public! !
!Persona categoriesFor: #oNomb!public! !

