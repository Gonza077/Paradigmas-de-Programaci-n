"Filed out from Dolphin Smalltalk 7"!

Object subclass: #PacienteIntervencion
	instanceVariableNames: 'fecha medico intervencion condicionP'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PacienteIntervencion guid: (GUID fromString: '{0BB2817C-4ABE-4273-B611-134E5C99EBA9}')!
PacienteIntervencion comment: ''!
!PacienteIntervencion categoriesForClass!Kernel-Objects! !
!PacienteIntervencion methodsFor!

cargaDatos
self iCondi:('NP').
self iFecha.!

iCondi:val
condicionP:=val!

iFecha
fecha:=Date today.
!

iInterv:val
intervencion:=val!

iMedi:val
medico:=val!

oCondi
^condicionP!

oFecha
^fecha
!

oInterv
^intervencion!

oMedi
^medico! !
!PacienteIntervencion categoriesFor: #cargaDatos!public! !
!PacienteIntervencion categoriesFor: #iCondi:!public! !
!PacienteIntervencion categoriesFor: #iFecha!public! !
!PacienteIntervencion categoriesFor: #iInterv:!public! !
!PacienteIntervencion categoriesFor: #iMedi:!public! !
!PacienteIntervencion categoriesFor: #oCondi!public! !
!PacienteIntervencion categoriesFor: #oFecha!public! !
!PacienteIntervencion categoriesFor: #oInterv!public! !
!PacienteIntervencion categoriesFor: #oMedi!public! !

