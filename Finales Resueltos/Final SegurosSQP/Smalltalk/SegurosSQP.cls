"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SegurosSQP
	instanceVariableNames: 'servicios prestadores polizas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SegurosSQP guid: (GUID fromString: '{EEB9A202-7D4A-401E-B2D9-02C60D8F6C82}')!
SegurosSQP comment: ''!
!SegurosSQP categoriesForClass!Kernel-Objects! !
!SegurosSQP methodsFor!

inicializar
|resp  vehi poli tit prest|
servicios:=OrderedCollection new.
polizas:=OrderedCollection new.
prestadores:=OrderedCollection new.
Servicio NumIni.
Insitu IValorH: ((Prompter prompt:'Ingrese el valor de las horas del Servicio Insitu')asNumber).
Traslado IValorKm:  ((Prompter prompt:'Ingrese el valor del kilometro en el Servicio Traslado')asNumber).
resp:=true.
[resp=true]whileTrue:[poli:=Poliza new.
				poli cargaDatos.
				polizas add: poli.
				resp:=MessageBox confirm:'¿Desea agregar otra poliza?'].
resp:=true.
[resp=true]whileTrue:[prest:=Prestador new.
				prest cargaDatos.
				prestadores add: prest.
				resp:=MessageBox confirm:'¿Desea agregar otro prestador?'].

!

listado
|prest listadoPrest|
prest:=Prompter prompt:'Ingrese nombre del prestador'.
listadoPrest:= servicios select:[:i | i oPrest oNomb = prest].
listadoPrest isEmpty ifTrue:[MessageBox notify:'No tiene pedidos el prestador']
			       ifFalse:[
Transcript show:'Nro de Servicio';tab;show:'Fecha';tab;show:'Costo del Servicio';tab;show:'Tipo Servicio';cr.
listadoPrest do:[:k | 
Transcript show: k oNroServi printString;tab;show: k oFecha printString; tab; show: k oCosto printString;tab;show: k oTipo;cr. ]]!

menu
|opc|
opc:=true.
[opc=true]whileTrue:[opc:=Prompter prompt:'Ingrese 1-Cargar Servicio    2-Listado de un prestador'.
				opc='1' ifTrue:[self regServi].
				opc='2' ifTrue:[self listado].
				opc:=MessageBox confirm:'¿Desea realizar otra operacion?']!

regServi
|servi vehi prest|
vehi:=(Prompter prompt:'Ingrese patente del vehiculo').
vehi:= polizas detect:[:i | i  oVehi oNroP =vehi].
prest:= prestadores detect:[:j | j oEst='L'].
servi:=(Prompter prompt:'¿Tipo de servicio? Insitu(I)/Traslado(T)')asUppercase.
servi='I' ifTrue:[servi:=Insitu new.].
servi='T' ifTrue:[servi:=Traslado new.].
servi cargaDatos; iVehi: vehi; iPrest: prest.
servicios add:servi.
MessageBox notify:'Servicio cargado con exito'! !
!SegurosSQP categoriesFor: #inicializar!public! !
!SegurosSQP categoriesFor: #listado!public! !
!SegurosSQP categoriesFor: #menu!public! !
!SegurosSQP categoriesFor: #regServi!public! !

