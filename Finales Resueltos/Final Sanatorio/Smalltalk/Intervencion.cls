"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Intervencion
	instanceVariableNames: 'codigo descripcion especialidad precio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Intervencion guid: (GUID fromString: '{30A52778-865B-45BF-937A-8ED9685153F0}')!
Intervencion comment: ''!
!Intervencion categoriesForClass!Kernel-Objects! !
!Intervencion methodsFor!

cargaDatos
self iCod:((Prompter prompt: 'Ingrese codigo')asNumber).
self iDescrip: (Prompter prompt:'Ingrese descripcion').
self iEspec: (Prompter prompt:'Ingrese especialidad').
self iPrecio:((Prompter prompt:'Ingrese valor de la intervencion')asNumber).
!

iCod:val
"Se le asigna el valor al atributo del objeto codigo"
codigo:=val.!

iDescrip:val
"Se le asigna el valor al atributo del objeto descripcion"
descripcion :=val.!

iEspec:val
"Se le asigna el valor al atributo del objeto Especialidad"
especialidad :=val.!

iPrecio:val
precio:=val!

oCod
"Se muestra el valor del atributo codigo"
^codigo!

oDescrip
"Se muestra la descrpcion especialidad"
^descripcion!

oEspec
"Se muestra la especialidad"
^especialidad!

oPrecio
^precio!

oTipo
^self yourself! !
!Intervencion categoriesFor: #cargaDatos!public! !
!Intervencion categoriesFor: #iCod:!public! !
!Intervencion categoriesFor: #iDescrip:!public! !
!Intervencion categoriesFor: #iEspec:!public! !
!Intervencion categoriesFor: #iPrecio:!public! !
!Intervencion categoriesFor: #oCod!public! !
!Intervencion categoriesFor: #oDescrip!public! !
!Intervencion categoriesFor: #oEspec!public! !
!Intervencion categoriesFor: #oPrecio!public! !
!Intervencion categoriesFor: #oTipo!public! !

