"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Empresa
	instanceVariableNames: 'empleados clientes envios'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Empresa guid: (GUID fromString: '{513E44C1-7D1B-44EF-9C5E-E820C4DA7EF3}')!
Empresa comment: ''!
!Empresa categoriesForClass!Kernel-Objects! !
!Empresa methodsFor!

cargaCliente
|cli|
cli:=Cliente new.
cli cargaDatos.
clientes add:cli.
^cli.!

cargaEmple
|emp|
emp:=Empleado new.
emp cargaDatos.
empleados add:emp.
^emp.!

inicializar
|opc cli emp|
empleados:=OrderedCollection new.
clientes:=OrderedCollection new.
envios:=OrderedCollection new.
opc:=true.
[opc=true]whileTrue:
			[MessageBox notify:'Se cargaran los datos de los clientes'.
			cli:= Cliente new.
			cli cargaDatos.
			opc:=MessageBox confirm:'Desea cargar otro cliente?'.
			clientes add:cli.
			].
opc:=true.
[opc=true]whileTrue:
			[MessageBox notify:'Se cargaran los datos de los empleados'.
			emp:= Empleado new.
			emp cargaDatos.
			opc:=MessageBox confirm:'Desea cargar otro empleado?'.
			empleados add:emp.
			].
MessageBox notify:'Se cargaran los datos los envios'.
Envio IBasico: ((Prompter prompt:'Ingrese basico de los envios')asNumber).
Envio ProxNumIni: ((Prompter prompt:'Ingrese numero de inicio de los envios')asNumber).
EnvioNocturno IInc: ((Prompter prompt:'Ingrese porcentaje de incremento de los envios nocturnos')asNumber).!

listadoEmp
	| lista empEnvio monto |
	lista := envios select: [:j | j oFecha = Date today].
	lista isEmpty 
		ifTrue: [MessageBox notify: 'No hay envios en la fecha']
		ifFalse: 
			[Transcript cr;show: 'Los empleados que realizaron envios en el dia de la fecha son:';cr;show: 'DNI';tab;show:'Nombre';tab;tab;show: 'Apellido';tab;tab ; show: 'Monto a pagarle'; cr.
			empleados do: 
					[:i | 
					empEnvio := lista select: [:k | k oEmp oNomb = i oNomb].
					monto := 0.
					empEnvio do: [:j | monto := monto + j oPrecio].
					Transcript show: i oDni printString; tab;	show: i oNomb printString;tab;show: i oApell printString;tab;	show: (monto * i oPorc)printString ;cr]]!

menu
|opc|
opc:=true.
[opc=true]whileTrue:
      [
	opc:=Prompter prompt: '1-Registar envio 2-Listado de Empleado 0-Salir'.
	(opc='1')ifTrue:[self regEnvio].
	(opc='2')ifTrue:[self listadoEmp].
	(opc='0')ifTrue:[opc:=false].
      ]!

regEnvio
|cli emp envio |
cli:=(Prompter prompt:'Ingrese dni del cliente a buscar')asNumber.
cli:=clientes detect:[:i | i oDni=cli] ifNone:[MessageBox notify:'No se encontro al cliente'.self cargaCliente].
emp:=(Prompter prompt:'Ingrese dni del empleado que lo atiende')asNumber.
emp:=empleados detect:[:i | i oDni = emp] ifNone:[MessageBox notify:'No se encontro al empleado'.self cargaEmple].
envio:=(Prompter prompt:'Tipo de envio Nocturno?(S/N)')asUppercase.
(envio='S')ifTrue:[envio:=EnvioNocturno new.].
(envio='N')ifTrue:[envio:= Envio new.].
envio cargaDatos; iCli:(cli); iEmp:(emp).
envios add:envio.
MessageBox notify:'Envio realizado con exito'.

! !
!Empresa categoriesFor: #cargaCliente!public! !
!Empresa categoriesFor: #cargaEmple!public! !
!Empresa categoriesFor: #inicializar!public! !
!Empresa categoriesFor: #listadoEmp!public! !
!Empresa categoriesFor: #menu!public! !
!Empresa categoriesFor: #regEnvio!public! !

