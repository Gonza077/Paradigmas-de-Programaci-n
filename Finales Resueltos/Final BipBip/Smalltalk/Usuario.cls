"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Usuario
	instanceVariableNames: 'nombUsu pass dni nombApell nroTel nroTarjeta compania'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Usuario guid: (GUID fromString: '{F4890309-ED72-47A7-8023-B102F4813308}')!
Usuario comment: ''!
!Usuario categoriesForClass!Kernel-Objects! !
!Usuario methodsFor!

cargaDatos:companias
"Se cargan los datos del usuario"
nombUsu:= (Prompter prompt:'Ingrese nombre de usuario').
pass:=  (Prompter prompt:'Ingrese contraseña').
dni:=  (Prompter prompt:'Ingrese dni ')asNumber.
nombApell:= (Prompter prompt:'Ingrese nombre y apellido').
nroTel:= (Prompter prompt:'Ingrese numero de telefono').
nroTarjeta:=( Prompter prompt:'Ingrese numero de tarjeta').
compania:=(Prompter prompt:'Ingrese compañia').
compania:=companias detect:[:i | i oNomb=compania].





!

oComp
"Se muestra la compañia"
^compania


!

oDni
"Se muestra el dni"
^dni!

oNomb
"Se muestra el nombre"
^nombApell!

oNroTar
"Se muestra el nro de Tarjeta"
^nroTarjeta

!

oNroTel
"Se muestra el numero de telefono"
^nroTel
!

oPass
"Se muestra la contraseña"
^pass


!

oUsuario
"Se muestra el usuario"
^nombUsu


! !
!Usuario categoriesFor: #cargaDatos:!public! !
!Usuario categoriesFor: #oComp!public! !
!Usuario categoriesFor: #oDni!public! !
!Usuario categoriesFor: #oNomb!public! !
!Usuario categoriesFor: #oNroTar!public! !
!Usuario categoriesFor: #oNroTel!public! !
!Usuario categoriesFor: #oPass!public! !
!Usuario categoriesFor: #oUsuario!public! !

