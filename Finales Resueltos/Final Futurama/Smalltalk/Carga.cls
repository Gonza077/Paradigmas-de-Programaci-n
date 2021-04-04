"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Carga
	instanceVariableNames: 'peso espacio nivPeli valor valSeg'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Carga guid: (GUID fromString: '{0573E36C-0BAD-4DCA-9A28-4515170757B0}')!
Carga comment: ''!
!Carga categoriesForClass!Kernel-Objects! !
!Carga methodsFor!

cargaDatos
self iPeso:((Prompter prompt:'Ingrese peso de la carga')asNumber).
self iEspacio: ((Prompter prompt:'Ingrese el espacio en metros cuadrados de la carga')asNumber).
self iNivPeli: ((Prompter prompt:'Ingrese el nivel de peligrosidad de la carga')asNumber).
self iValor: ((Prompter prompt:'Ingrese valor de la carga')asNumber).
!

iEspacio:val
"Se le asigna el valor ala tributo espacio"
espacio:=val.!

iNivPeli:val
"Se le asigna el nivel de peligrosidad al atributo nivPeli"
nivPeli:=val.!

iPeso:val
"Se le asigna el valor ala atributo peso"
peso:=val.!

iValor:val
"Se le asigna el valor al atributo"
valor:=val!

oEspacio
"Se muesta el valor del atributo espacio"
^espacio!

oNivPeli
"Se muestra el nivel de peligrosidad del atributo nivPeli"
^nivPeli!

oPeso
"Se muestra el valor del atributo peso"
^peso!

oValor
"Se muestra el valor al atributo"
^valor!

oValSeg
"Se muestra el valor asegurado"
^valSeg.! !
!Carga categoriesFor: #cargaDatos!public! !
!Carga categoriesFor: #iEspacio:!public! !
!Carga categoriesFor: #iNivPeli:!public! !
!Carga categoriesFor: #iPeso:!public! !
!Carga categoriesFor: #iValor:!public! !
!Carga categoriesFor: #oEspacio!public! !
!Carga categoriesFor: #oNivPeli!public! !
!Carga categoriesFor: #oPeso!public! !
!Carga categoriesFor: #oValor!public! !
!Carga categoriesFor: #oValSeg!public! !

