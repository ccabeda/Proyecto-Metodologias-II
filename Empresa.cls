"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Empresa
	instanceVariableNames: 'nombre listaClientes listaServicios listaComprobantes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Empresa guid: (GUID fromString: '{D89B56A1-9B0B-4D5F-B022-9B9E821B74B9}')!
Empresa comment: ''!
!Empresa categoriesForClass!Kernel-Objects! !
!Empresa methodsFor!

agregarCliente: unCliente
	listaClientes add: unCliente.
!

agregarComprobante: unComprobante
	listaComprobantes add: unComprobante.
!

agregarServicio: unServicio
	listaServicios add: unServicio.
!

clientes
	^listaClientes.!

clientesOrdenadosPorNombre
	^listaClientes asSortedCollection: [:cliente1 :cliente2 | cliente1 nombre < cliente2 nombre].!

comprobantes
	^listaComprobantes.!

crearDiccionarioServicios
	"Crea el diccionario y muestra sus elementos en el Transcript"
	| diccionario |
	diccionario := Dictionary new.
	"Clave: id ; Valor: Tipo"
	listaServicios do: [:servicio | diccionario at: servicio id put: servicio tipo].
	^diccionario!

filtroPrecioServicio: unPrecioDeServicio
	^listaServicios reject: [:servicio| servicio precio >= unPrecioDeServicio].
!

filtroTipoServicio: unTipoDeServicio
	^listaServicios select: [:servicio| servicio tipo = unTipoDeServicio].

!

iniEmpresaNom: unNom
	nombre := unNom.
	listaServicios:= OrderedCollection new.
	listaClientes:= OrderedCollection new.
	listaComprobantes:= OrderedCollection new.!

preciosDeServiciosConIva
    | preciosIncrementados |
    preciosIncrementados := listaServicios collect: [:servicio | servicio precio * 0.21 + servicio precio].
    ^preciosIncrementados
!

seleccionarCliente: unCliente
^listaClientes detect: [:client | client id = unCliente ]ifNone:[nil].!

seleccionarServicio: unServicio
^listaServicios detect: [:servicio | servicio id = unServicio ]ifNone:[nil].!

servicios
	^listaServicios.!

venderServicioIdCliente: clienteID  servicioId: servicioID
	| cliente servicio comprobante|
	"Busco cliente y servicio"
	cliente := self seleccionarCliente: clienteID.
	servicio := self seleccionarServicio: servicioID.
	"Verifico que existan ambos"
	cliente isNil ifTrue: [^MessageBox  warning:'Cliente no encontrado'].
	servicio isNil ifTrue: [^MessageBox  warning:'Servicio no encontrado'].
	"Ahora veo si el cliente ya tiene el servicio que solicita"
	(cliente servicios includes: servicio) ifTrue: [^MessageBox  warning:'El cliente ya tiene este servicio'].
	"Agrego el servicio al cliente"
	cliente agregarServicio: servicio.
	"Creo el comprobante de la venta"
	comprobante := Comprobante new.
	comprobante iniComprobanteCliente: cliente id idServicio: servicio id total: servicio precio.
	"Agrego el comprobante a la lista de comprobantes de la empresa"
	listaComprobantes add: comprobante.
	"retorno mensaje"
	^MessageBox  warning: 'Servicio vendido y comprobante creado'.

! !
!Empresa categoriesFor: #agregarCliente:!public! !
!Empresa categoriesFor: #agregarComprobante:!public! !
!Empresa categoriesFor: #agregarServicio:!public! !
!Empresa categoriesFor: #clientes!public! !
!Empresa categoriesFor: #clientesOrdenadosPorNombre!public! !
!Empresa categoriesFor: #comprobantes!public! !
!Empresa categoriesFor: #crearDiccionarioServicios!public! !
!Empresa categoriesFor: #filtroPrecioServicio:!public! !
!Empresa categoriesFor: #filtroTipoServicio:!public! !
!Empresa categoriesFor: #iniEmpresaNom:!public! !
!Empresa categoriesFor: #preciosDeServiciosConIva!public! !
!Empresa categoriesFor: #seleccionarCliente:!public! !
!Empresa categoriesFor: #seleccionarServicio:!public! !
!Empresa categoriesFor: #servicios!public! !
!Empresa categoriesFor: #venderServicioIdCliente:servicioId:!public! !

!Empresa class methodsFor!

crearEmpresaNom: unNom 
^(self new) iniEmpresaNom: unNom.! !
!Empresa class categoriesFor: #crearEmpresaNom:!public! !

