"Filed out from Dolphin Smalltalk XP"!

Envio subclass: #EnvioNocturno
	instanceVariableNames: ''
	classVariableNames: 'Inc'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
EnvioNocturno guid: (GUID fromString: '{DB8620A5-651E-4048-AE22-A920241D2858}')!
EnvioNocturno comment: ''!
!EnvioNocturno categoriesForClass!Kernel-Objects! !
!EnvioNocturno methodsFor!

calcPrecio
precio:= Basico*(1+Inc).!

oTipo
^self yourself! !
!EnvioNocturno categoriesFor: #calcPrecio!public! !
!EnvioNocturno categoriesFor: #oTipo!public! !

!EnvioNocturno class methodsFor!

IInc:val
Inc:=(val/100).! !
!EnvioNocturno class categoriesFor: #IInc:!public! !

