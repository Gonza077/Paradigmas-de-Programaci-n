"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Paciente
	instanceVariableNames: 'dni obraS porcObra intervenciones'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Paciente guid: (GUID fromString: '{EF847E3B-902C-4AE1-BA6E-F63093AC0AEB}')!
Paciente comment: ''!
!Paciente categoriesForClass!Kernel-Objects! !
!Paciente methodsFor!

cargaDatos
super cargaDatos.
self iDni: ((Prompter prompt:'Ingrese numero de dni del paciente')asNumber).
self iObra: (MessageBox confirm: '¿Tiene obra social?' ).
intervenciones:=OrderedCollection new.!

iDni:val
"Se le da valor al atributo dni del objeto"
dni:=val!

iInterv:val
intervenciones add:val.!

iObra:val
"Dependiendo de la respuesta, se asigna una obra social o no y se ingresa el porcentaje de cobertura"
(val=true) ifTrue:[ 	obraS:=Prompter prompt:'Ingrese nombre de la obra'.
				self iPorc:((Prompter prompt:'Ingrese porcentaje de cobertura de la obra')asNumber)].
(val=false)ifTrue:[ obraS:='No tiene'.
		            self iPorc:('0')asNumber].!

iPorc:val
"Se le asigna el valor numerico al atributo del objeto porcentaje"
porcObra:=(val/100)!

oDni
"Se muetra el dni del atributo del objeto dni"
^dni!

oIntervenciones
|listaInt|
listaInt:=intervenciones select:[:i | i oCondi ='NP'].
^listaInt.!

oObraS
"Se muetra el dni del atributo del objeto porcentaje "
^obraS!

oPorc
"Se le asigna el valor numerico al atributo del objeto porcentaje"
^porcObra!

oTipo
^self yourself! !
!Paciente categoriesFor: #cargaDatos!public! !
!Paciente categoriesFor: #iDni:!public! !
!Paciente categoriesFor: #iInterv:!public! !
!Paciente categoriesFor: #iObra:!public! !
!Paciente categoriesFor: #iPorc:!public! !
!Paciente categoriesFor: #oDni!public! !
!Paciente categoriesFor: #oIntervenciones!public! !
!Paciente categoriesFor: #oObraS!public! !
!Paciente categoriesFor: #oPorc!public! !
!Paciente categoriesFor: #oTipo!public! !

