"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Comprobante
	instanceVariableNames: 'idcliente idservicio total'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Comprobante guid: (GUID fromString: '{0B0CFAF5-C5A3-4F26-B6D2-21F3694914B8}')!
Comprobante comment: ''!
!Comprobante categoriesForClass!Kernel-Objects! !
!Comprobante methodsFor!

iniComprobanteCliente: unIdCliente idServicio: unIdServicio total: unTotal
	idcliente:= unIdCliente.
	idservicio:= unIdServicio.
	total:= unTotal.
!

total
^total .
! !
!Comprobante categoriesFor: #iniComprobanteCliente:idServicio:total:!public! !
!Comprobante categoriesFor: #total!public! !

!Comprobante class methodsFor!

crearComprobanteIdCliente: unIdCliente idServicio: unIdServicio total: unTotal
	^(self new) iniComprobanteIdCliente: unIdCliente idServicio: unIdServicio total: unTotal.! !
!Comprobante class categoriesFor: #crearComprobanteIdCliente:idServicio:total:!public! !

