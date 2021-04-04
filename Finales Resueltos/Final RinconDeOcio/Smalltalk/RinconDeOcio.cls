"Filed out from Dolphin Smalltalk 7"!

Object subclass: #RinconDeOcio
	instanceVariableNames: 'productos socios vendedores'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RinconDeOcio guid: (GUID fromString: '{FE03F181-CE3E-4064-84FC-B19C7FC6C644}')!
RinconDeOcio comment: ''!
!RinconDeOcio categoriesForClass!Kernel-Objects! !
!RinconDeOcio methodsFor!

cargaProdu
"Se cargan los productos al sistema"
|produc resp|
MessageBox notify:'Se cargaran los datos del producto' caption:'''Rincon de Ocio'.
resp:=MessageBox confirm:'¿Es un CD?'.
(resp=true)ifTrue:[produc:=CD new.]
		ifFalse:[produc :=Libro new.].
produc cargaDatos.
productos add:produc!

cargaSocio
"Se cargan los productos al sistema"
|soc|
MessageBox notify:'Se cargaran los datos del Socio' caption:'Rincon De Ocio'.
soc:=Socio new.
soc cargaDatos.
socios add:soc.!

cargaVendedor
"Se cargan los productos al sistema"
|vend|
MessageBox notify:'Se cargaran los datos del Vendedor' caption:'Rincon De Ocio'.
vend:=Vendedor new.
vend cargaDatos.
vendedores add:vend.!

inicializar
"Se crean las colecciones y se las cargar con sus objetos"
|resp|
productos:=OrderedCollection new.
vendedores:=OrderedCollection new.
socios:=OrderedCollection new.
Socio NumIni.
Producto NumIni.
Pedido NroPediIni.
MessageBox notify:'Se cargaran los descuentos y Iva de los productos CD' caption:'Rincon De Ocio'.
CD 	IIvaCd:  ((Prompter prompt:'Ingrese IVA de los CD')asNumber); 
	IDescCd:  ((Prompter prompt:'Ingrese Descuento de los CD')asNumber).
MessageBox notify:'Se cargaran los descuentos y Iva de los productos Libro' caption:'Rincon De Ocio'.
Libro IIvaLibro: ((Prompter prompt:'Ingrese IVA de los Libros')asNumber); 
	IDescLibro: ((Prompter prompt:'Ingrese Descuento de los Libros')asNumber).
resp:=true.
[resp=true]whileTrue:[ self cargaProdu.
				resp:=MessageBox confirm: '¿Desea cargar otro producto?' caption:'Rincon De Ocio'].
resp:=true.
[resp=true]whileTrue:[ self cargaSocio.
				resp:=MessageBox confirm: '¿Desea cargar otro socio?' caption:'Rincon De Ocio'].
resp:=true.
[resp=true]whileTrue:[ self cargaVendedor.
				resp:=MessageBox confirm: '¿Desea cargar otro vendedor?' caption:'Rincon De Ocio'].
MessageBox notify:'Se cargaran el porcentaje y sueldo fijo de los vendedores' caption:'Rincon De Ocio'. 
Vendedor IPorc: ((Prompter prompt:'Ingrese porcentaje de cobro de los vendedores')asNumber);
	       ISueldo: ((Prompter prompt:'Ingrese sueldo fijo de los vendedores')asNumber).







!

listadoVendedor
|listaVendedor fecha1 fecha2 vend monto|
"Se ingresan als fechas desdey hasta para comparar con lsa fechas de los pedidos, se busca al vendedor y se muestra"
fecha1:=nil. fecha2:=nil. listaVendedor:=nil.
fecha1:= Date fromString: (Prompter prompt:'Ingrese fecha base a comparar'). "Se ingresan en el formato dd/mm//aa si o si, creo que es la unica forma"
fecha2:= Date fromString: (Prompter prompt:'Ingrese fecha tope a comparar').
vend:= (Prompter prompt:'Ingrese DNI del vendedor a buscar')asNumber.
vend:= vendedores detect:[:i | (i oDni =vend) ].
listaVendedor:=vend oListaPedidos: fecha1 and: fecha2. "Se crea una speubcoleccion con los pedidos entre las fechas y se las devuelve"
(listaVendedor isEmpty) ifTrue:[MessageBox notify:'No presenta pedidos entre esas fechas' caption:'Rincon De Ocio']
	              ifFalse:[ 
monto:=0.
Transcript clear;show: 'Liquidacion del vendedor: ';tab; show:vend oNomb printString; tab;tab; show:'Desde el  ';tab;show: fecha1 printString;tab; show:'  hasta el ';tab; show: fecha2 printString;cr.
Transcript show:'Fecha del Pedido';tab;tab;tab;show:'NroPedido';tab;tab;tab; show:'Socio';tab;tab;tab;show:'Importe del pedido';cr.
listaVendedor do:[:i | 
Transcript show: i oFecha printString;tab;tab;tab;show: i oNroPedido printString;tab;tab;tab;show: i oSoc oNomb printString;tab;tab;tab; show: i oPrecio printString;cr.
	monto:= monto + i oPrecio.].
Transcript cr; show:'Total de los pedidos =';tab;show: monto printString;cr;show:'Comision del vendedor =';tab;show: (monto * vend oPorc) printString.].
!

menu
"Menu de opciones del sistema"
|opc|
opc:=true.
[opc=true]whileTrue:[opc:=Prompter prompt:'1-Registrar un pedido 2-Listado de los pedidos de un vendedor'.
				(opc='1')ifTrue:[self regPedi].
				(opc='2')ifTrue:[self listadoVendedor].
				opc:=MessageBox confirm:'¿Otra operacion?' caption:'Rincon De Ocio'.
 ].
MessageBox notify: 'Cerrando programa' caption:'Rincon De Ocio'.


!

regPedi
"Se crea el pedido "
|pedido soc vend|
pedido:=nil. soc:=nil. vend:=nil. "Esto por que los hago de manera recursiva para poder volver al menu en caso de que ocurra alun problema y los objetos tengan otros datos"
soc:=(Prompter prompt:'Ingrese numero del socio')asNumber.
soc:=socios detect:[:i | i oNroSocio =soc]ifNone:[MessageBox notify:'No se encontro a ese socio' caption:'Rincon De Ocio'. self menu].
vend:=(Prompter prompt:'Ingrese dni del vendedor')asNumber.
vend:= vendedores detect:[:j | j oDni = vend]ifNone:[MessageBox notify:'No se encontro a ese vendedor' caption:'Rincon De Ocio'. self menu].
pedido:= Pedido new.
pedido cargaDatos:productos ; iSoc: (soc).
vend iPedido: (pedido).
MessageBox notify:'Pedido realizado con exito' caption:'Rincon De Ocio'.


! !
!RinconDeOcio categoriesFor: #cargaProdu!public! !
!RinconDeOcio categoriesFor: #cargaSocio!public! !
!RinconDeOcio categoriesFor: #cargaVendedor!public! !
!RinconDeOcio categoriesFor: #inicializar!public! !
!RinconDeOcio categoriesFor: #listadoVendedor!public! !
!RinconDeOcio categoriesFor: #menu!public! !
!RinconDeOcio categoriesFor: #regPedi!public! !

