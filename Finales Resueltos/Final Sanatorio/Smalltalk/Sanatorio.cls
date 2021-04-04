"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Sanatorio
	instanceVariableNames: 'pacientes intervenciones medicos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Sanatorio guid: (GUID fromString: '{9AFEFEE1-CFC6-486C-8DAD-C285A8ECF70B}')!
Sanatorio comment: ''!
!Sanatorio categoriesForClass!Kernel-Objects! !
!Sanatorio methodsFor!

cargaInt
|int|
int:=MessageBox confirm:'¿Es una intervencion compleja?'.
(int=true)ifTrue:[ int:=IntCompleja new.]
	      ifFalse:[int:=Intervencion new.].
int cargaDatos.
intervenciones add: int.

				!

cargaPer
|per |
per:=MessageBox confirm: '¿La persona es medico?' .
(per=true)ifTrue:[per:=Medico new. per cargaDatos. medicos add:per ]
		ifFalse:[per:=Paciente new. per cargaDatos. pacientes add:per].




!

inicializar
|resp|
resp:=nil.
intervenciones :=OrderedCollection new.
medicos:=OrderedCollection new.
pacientes:=OrderedCollection new.
IntCompleja iPorc:((Prompter prompt:'Ingrese porcentaje adicional de las intervenciones complejas')asNumber).
resp:=true.
MessageBox notify: 'Se cargaran los datos de las personas'.
[resp=true]whileTrue: [
				self cargaPer.
				resp :=MessageBox confirm:'¿Desea agregar otra persona?'.
				].
resp:=true.
MessageBox notify: 'Se cargaran los datos de las intervenciones'.
[resp=true]whileTrue: [
				self cargaInt.
				resp :=MessageBox confirm:'¿Desea agregar otra Intervencion?'.
				].
!

listadoInt
|pac listadoInt monto|
pac:=nil. listadoInt:=nil.
pac:=(Prompter prompt:'Ingrese DNI del paciente a buscar')asNumber.
pac:=pacientes detect:[:i | i oDni =pac] ifNone:[MessageBox notify:'Paciente no encontrado'. self menu.].
listadoInt:= pac oIntervenciones.
monto:=0.
Transcript show: 'Liquidacion del paciente' ;show: pac oNomb printString;tab; show:'Obra Social'; show: pac oObraS printString;cr.
Transcript cr.
Transcript show: 'Fecha'; tab;tab;tab; show: 'Descripcion'; tab;tab;tab; show: 'Medico';tab;tab;tab; show:'Matricula';tab;tab;tab;show:'Precio';cr.
listadoInt do:[:i |
 Transcript show: i oFecha printString ;tab;tab;tab; show: i oInterv oDescrip printString ;tab;tab;tab; show: i oMedi oNomb printString ;tab;tab;tab ;show: i oMedi oMatri printString ;tab;tab;tab; show: i oInterv oPrecio printString;cr.
monto := i oInterv oPrecio+ monto.
].
Transcript cr;cr.
Transcript show: 'Total a pagar'; tab;tab;tab;tab; show: monto printString;cr.
Transcript show: 'Cubertura obra social'; tab;tab;tab; show: (monto* pac oPorc) printString;cr.
Transcript show: 'Neto a pagar'; tab;tab;tab;tab; show: (monto-(monto* pac oPorc)) printString;cr.


!

menu
|opc|
opc:=true.
[opc=true]whileTrue:[
				opc:=Prompter prompt: '1-Registrar intervencion al Paciente 2-Liquidacion de intervenciones'.
				(opc='1')ifTrue:[self regInter].
				(opc='2')ifTrue:[self listadoInt ].
				opc:=MessageBox confirm:'¿Desea hacer otra operacion?'.
].
MessageBox notify: 'Gracias por usar el programa' caption:'Sistema Sanatorio'.!

regInter
|pac inter pacInter medi|
pac:=nil. inter:=nil. pacInter:=nil. medi:=nil.
MessageBox notify: 'Se registrara la intervencion al paciente' caption:'Sistema Sanatorio'.
pacInter:= PacienteIntervencion new.
pac:=(Prompter prompt:'Ingrese dni del paciente a buscar')asNumber.
pac:= pacientes detect:[:i | i oDni =pac ]ifNone:[MessageBox notify: 'No se encontro al paciente'.self menu].
inter:=(Prompter prompt:'Ingrese codigo de la intervencion')asNumber.
inter:=intervenciones detect:[:i | i oCod =inter]ifNone:[MessageBox notify: 'No se encontro el tipo de intervencion'. self menu].
medi:= medicos detect:[:i | (i oEst='L') & (i oEspec= inter oEspec) ].
medi iEst: 'O'.
pacInter cargaDatos; iMedi: medi; iInterv: inter.
pac iInterv: pacInter.
medi iEst: 'L'.
MessageBox notify: 'Se registro la intervencion al paciente' caption:'Sistema Sanatorio'.



! !
!Sanatorio categoriesFor: #cargaInt!public! !
!Sanatorio categoriesFor: #cargaPer!public! !
!Sanatorio categoriesFor: #inicializar!public! !
!Sanatorio categoriesFor: #listadoInt!public! !
!Sanatorio categoriesFor: #menu!public! !
!Sanatorio categoriesFor: #regInter!public! !

