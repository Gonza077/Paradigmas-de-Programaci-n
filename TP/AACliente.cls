"Filed out from Dolphin Smalltalk XP"!

Object subclass: #AACliente
	instanceVariableNames: 'nombre domicilio nroTelefono servicios'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AACliente guid: (GUID fromString: '{3E509927-F9D8-447A-BAC3-E0F0912C7C39}')!
AACliente comment: ''!
!AACliente categoriesForClass!Kernel-Objects! !
!AACliente methodsFor!

cargaCliente
"Da valores a los objetos de la clase Cliente"
	nombre := Prompter prompt: 'Ingrese Nombre y Apellido'.
	domicilio := Prompter prompt: 'Ingrese domicilio'.
	nroTelefono := (Prompter prompt: 'Ingrese numero de telefono') asNumber.
	servicios:= OrderedCollection new.
           
!

iServicios:val
"Agrega el servicio al cliente"
servicios add: val.
MessageBox notify: ' Servicio agregado al cliente'.!

oDomicilio
^domicilio.
!

oNombre
^nombre.
!

oNroTelefono
^nroTelefono.
!

oServicios
^servicios! !
!AACliente categoriesFor: #cargaCliente!public! !
!AACliente categoriesFor: #iServicios:!public! !
!AACliente categoriesFor: #oDomicilio!public! !
!AACliente categoriesFor: #oNombre!public! !
!AACliente categoriesFor: #oNroTelefono!public! !
!AACliente categoriesFor: #oServicios!public! !

