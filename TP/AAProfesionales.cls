"Filed out from Dolphin Smalltalk XP"!

Object subclass: #AAProfesionales
	instanceVariableNames: 'nombre especialidad porcentaje estado'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AAProfesionales guid: (GUID fromString: '{4355F3E6-825E-45DB-9C81-EED6BC01DC26}')!
AAProfesionales comment: ''!
!AAProfesionales categoriesForClass!Kernel-Objects! !
!AAProfesionales methodsFor!

cargaDatosProfesional
	"Se da valor a los objetos Profesonales"
       	nombre:= Prompter prompt: 'Ingrese nombre' caption: 'Profesional'.
	self especialidad.
	porcentaje:= ((Prompter prompt: 'Ingrese Porcentaje de honorarios')asNumber)/100.
	estado:= true.	
      		!

especialidad
|tipo|
tipo:=(Prompter prompt: 'Ingrese tipo de especialidad 1)Manicuria/2)Peluqueria/3)Cosmetologia')asNumber.
(tipo=1) ifTrue:[especialidad='Manicuria'].
(tipo=2) ifTrue:[especialidad:='Peluqueria'].
(tipo=3) ifTrue:[especialidad:='Cosmetologia'].!

iEstado: val
"Se da un nuevo valor al objeto Estado"
estado:=val
      		!

oEspecialidad
^especialidad.!

oEstado
^estado.!

oNombre
^nombre!

oPorcentaje
^porcentaje! !
!AAProfesionales categoriesFor: #cargaDatosProfesional!public! !
!AAProfesionales categoriesFor: #especialidad!public! !
!AAProfesionales categoriesFor: #iEstado:!public! !
!AAProfesionales categoriesFor: #oEspecialidad!public! !
!AAProfesionales categoriesFor: #oEstado!public! !
!AAProfesionales categoriesFor: #oNombre!public! !
!AAProfesionales categoriesFor: #oPorcentaje!public! !

