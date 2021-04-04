"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Pedido
	instanceVariableNames: 'lineas fecha socio precioP nroPedido'
	classVariableNames: 'NumPedido'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Pedido guid: (GUID fromString: '{469E5FBC-805C-4477-8A65-F798053DDBF8}')!
Pedido comment: ''!
!Pedido categoriesForClass!Kernel-Objects! !
!Pedido methodsFor!

calPrecio
"Se calcula el precio del pedido en base a los productos solicitados y su cantidad"
precioP:=0.
lineas do:[:i | precioP:= i oSubT +precioP].!

cargaDatos:productos
self iFecha.
self iNumPedi: NumPedido.
Pedido ProxNroPedi.
lineas:=OrderedCollection new.
self creoLineas: productos.
self calPrecio.
!

creoLineas:productos
|resp linea produc cant |
resp:=true.
[resp=true]whileTrue:[linea:=Linea new.
				linea iNroL.
				produc:=nil.
				[produc isNil]whileTrue:[
							produc:=(Prompter prompt:'Ingrese codigo del producto')asNumber.
							produc:= productos detect:[:i | i oCod =produc ]ifNone:[MessageBox notify:'Producto no encontrado, ingrese otro' caption:'Rincon De Ocio'. produc :=nil.].
								].
				cant:=((Prompter prompt:'¿Cantidad de productos?')asNumber).
				linea iProdu: (produc); iCant:(cant ); calcSubT .
				self iLinea: linea.
				resp:=MessageBox confirm:'¿Desea cargar otro producto?' caption:'Rincon de Ocio'.
				].!

iFecha
"Se le asigna la fecha del dia al pedido"
fecha:=Date today.!

iLinea:lin
"Se envia el objeto linea y se lo agrega al pedido"
lineas add: lin.!

iNumPedi:val
"Se le asigna el numero del pedido"
nroPedido:=val.!

iSoc:val
"Se le asigna el socio al pedido"
socio:=val!

oFecha
"Muestro la fecha del pedido"
^fecha!

oNroPedido
"Muestro el numero del pedido"
^nroPedido.!

oPrecio
"Muestro el precio del pedido"
^precioP!

oSoc
"Se muestra el socio del pedido"
^socio! !
!Pedido categoriesFor: #calPrecio!public! !
!Pedido categoriesFor: #cargaDatos:!public! !
!Pedido categoriesFor: #creoLineas:!public! !
!Pedido categoriesFor: #iFecha!public! !
!Pedido categoriesFor: #iLinea:!public! !
!Pedido categoriesFor: #iNumPedi:!public! !
!Pedido categoriesFor: #iSoc:!public! !
!Pedido categoriesFor: #oFecha!public! !
!Pedido categoriesFor: #oNroPedido!public! !
!Pedido categoriesFor: #oPrecio!public! !
!Pedido categoriesFor: #oSoc!public! !

!Pedido class methodsFor!

NroPediIni
"Se inicializa el numero del pedido"
NumPedido:=1.!

ProxNroPedi
"Se actualiza el proximo nro del pedido"
NumPedido:=NumPedido+1.! !
!Pedido class categoriesFor: #NroPediIni!public! !
!Pedido class categoriesFor: #ProxNroPedi!public! !

