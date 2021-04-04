"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Persona
	instanceVariableNames: 'dni nombreApell direc tel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Persona guid: (GUID fromString: '{5AE8B9C9-E038-4755-B6AD-5AFE0235ECA0}')!
Persona comment: ''!
!Persona categoriesForClass!Kernel-Objects! !
!Persona methodsFor!

cargaDatos
self iDni:((Prompter prompt:'Ingrese dni ')asNumber).
self iNomb: (Prompter prompt:'Ingrese nombre y apellido').
self iTele: (Prompter prompt: 'Ingrese telefono').
self iDirec: (Prompter prompt:'Ingrese direccion').!

iDirec:val
"Se le asigna la direccion a ala variable"
direc:=val.!

iDni:val
"Se le asigna el valor al dni"
dni:=val.!

iNomb:val
"Se asigna el nombre y apellido a la varibale"
nombreApell:=val.!

iTele:val
"Se le asigna el telefono a la variable"
tel:=val!

oDirec
"Se le muestra la direccion "
^direc!

oDni
"Se muestra el dni"
^dni.!

oNomb
"Se muestra el nombre y apellido"
^nombreApell!

oTele
"Se muestra el telefono "
^tel! !
!Persona categoriesFor: #cargaDatos!public! !
!Persona categoriesFor: #iDirec:!public! !
!Persona categoriesFor: #iDni:!public! !
!Persona categoriesFor: #iNomb:!public! !
!Persona categoriesFor: #iTele:!public! !
!Persona categoriesFor: #oDirec!public! !
!Persona categoriesFor: #oDni!public! !
!Persona categoriesFor: #oNomb!public! !
!Persona categoriesFor: #oTele!public! !

