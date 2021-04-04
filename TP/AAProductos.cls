"Filed out from Dolphin Smalltalk XP"!

Object subclass: #AAProductos
	instanceVariableNames: 'codigo descripcion precio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AAProductos guid: (GUID fromString: '{9A0ED00B-91C5-4555-9EC6-0C9AED6275F8}')!
AAProductos comment: ''!
!AAProductos categoriesForClass!Kernel-Objects! !
!AAProductos methodsFor!

cargaProductos
	"Se da valor a los objetos Productos"
	codigo := (Prompter prompt: 'Ingrese codigo del producto') asNumber.
	descripcion := Prompter prompt: ' Descipcion del producto'.
	precio := (Prompter prompt: ' Ingrese precio del producto') asNumber.!

oCodigo
^codigo!

oPrecio
^precio! !
!AAProductos categoriesFor: #cargaProductos!public! !
!AAProductos categoriesFor: #oCodigo!public! !
!AAProductos categoriesFor: #oPrecio!public! !

